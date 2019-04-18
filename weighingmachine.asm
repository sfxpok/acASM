; peripherals
PWR                         EQU 60H     ; start machine
SEL_NR_MENU                 EQU 70H     ; selection input
OK                          EQU 80H     ; confirmation of the user input
CHANGE                      EQU 90H     ; switch selection
PESO                        EQU 100H    ; weight input of a food
; main menu constants
WEIGHT_MACHINE EQU 1
VIEW_FOOD EQU 2
RESET_DATA EQU 3
; display
DISPLAY_START               EQU 20H     ; memory position to start the display
DISPLAY_END                 EQU 27H     ; memory position to shut down the display
; display menus
PLACE 1000H

InitMenu:
  STRING "    WMachine    "
  STRING "                "
  STRING "1: Balanca      "
  STRING "2: Visualizacao "
  STRING "3: Reiniciar    "
  STRING "                "
  STRING "                "
ErrorMenu:
  STRING "                "
  STRING "                "
  STRING "   Houve uma    "
  STRING "   excepcao     "
  STRING "                "
  STRING "1: OK           "
  STRING "                "
ResetMenu:
  STRING "                "
  STRING "                "
  STRING " Quer reiniciar "
  STRING "   os dados?    "
  STRING "                "
  STRING "1: Sim          "
  STRING "2: Nao          "
weighMenu:
  STRING "Alimento:       "
  STRING "Peso:           "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "


ChangeFoodMenu1:
  STRING "Selec.Alim. P1/6"
  STRING "                "
  STRING "1: Aveia        "
  STRING "2: Pao Forma    "
  STRING "3: Batata       "
  STRING "4: Arroz        "
  STRING "0: Pagina 2     "
;ChangeFoodMenu2:
;ChangeFoodMenu3:
;ChangeFoodMenu4:
;ChangeFoodMenu5:
;ChangeFoodMenu6:
;ChangeFoodMenu7:

PLACE 0000H
Init:
  MOV R0, Startup
  JMP R0

waitForPower:
  PUSH R0
  PUSH R1
waitForPowerLoop:
  MOV R0, PWR                           ; move PWR value to memory
  MOVB R1, [R0]
  CMP R1, 1                             ; is PWR set to 1?
  JNE waitForPower                      ; PWR != 1?
  POP R1
  POP R0
  RET

Startup:
  MOV SP, StackPointer                  ; set stack pointer ready
StartupLoop:
  CALL waitForPower                     ; check if power is on
  CALL RMain                            ; display main menu
  CALL IsOKActive
  JMP StartupLoop                       ; repeat routine


errorMessage:

main:
  PUSH R0
  PUSH R1
  PUSH R2
mainLoop:
  MOV R2, InitMenu                      ; get main menu ready
  CALL drawDisplay                      ; draw display
  CALL wipePeripherals
  CALL IsOKActive
  MOV R0, SEL_NR_MENU                   ; move selection value to memory
  MOVB R1, [R0]
  CMP R1, WEIGHT_MACHINE
  JEQ mainLoop_weighFood
  CMP R1, VIEW_FOOD
  JEQ mainLoop_viewFoodInfo
  CMP R1, RESET_DATA
  JEQ mainLoop_resetFoodData
  CALL errorMessage
  JMP mainLoop
mainLoop_weighFood:
  CALL weighFood
  JMP mainLoop
mainLoop_viewFoodInfo:
  CALL viewFoodInfo
  JMP mainLoop
mainLoop_resetFoodData:
  CALL resetFoodData
  JMP mainLoop
;mainLoop_end:
;weighFood:
;viewFoodInfo:
;resetFoodData:
;roundGrams:
;checkIfFoodIsSelected:
;checkIfAboveMaxWeight:
;calculateCalories:
;wipeDisplay:
drawDisplay:
  MOV R0, DISPLAY_START                 ; beginning of display
  MOV R1, DISPLAY_END                   ; end of display
;checkIfPowerIsOn:
;drawDisplayLoop:
IsOKActive:
  PUSH R0
  PUSH R1


IsOKActiveLoop:
  MOV R0, OK
  MOVB R1, [R0]
  CMP R1, 1
  JNE IsOKActiveLoop
  POP R1
  POP R0
  RET


wipePeripherals:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5
  MOV R0, PWR
  MOV R1, SEL_NR_MENU
  MOV R2, OK
  MOV R3, CHANGE
  MOV R4, PESO
  MOV R5, 0
  MOVB [R0], R5
  MOVB [R1], R5
  MOVB [R2], R5
  MOVB [R3], R5
  MOV [R4], R5
  MOV [R4+2], R5
  MOV [R4+4], R5
  MOV [R4+6], R5
  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET
