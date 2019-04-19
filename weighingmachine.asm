; peripherals
PWR                         EQU 60H     ; start machine
SEL_NR_MENU                 EQU 70H     ; selection input
OK                          EQU 80H     ; confirmation of the user input
CHANGE                      EQU 90H     ; switch selection
PESO                        EQU 100H    ; weight input of a food
; stack pointer
STACK_POINTER               EQU 9FF0H
; main menu constants
WEIGHT_MACHINE              EQU 1
VIEW_FOOD                   EQU 2
RESET_DATA                  EQU 3
; error menu constants
GO_BACK                     EQU 1
; other constants
MAX_WEIGHT                  EQU BB8H    ; 3000 in hexadecimal
PROTEIN_CARB_MULTIPLICAND   EQU 4
FAT_MULTIPLICAND            EQU 9

; display
DISPLAY_START               EQU 20H     ; memory position to start the display
DISPLAY_END                 EQU 27H     ; memory position to shut down the display

; reserved registers
; R10: weight of the food

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

PLACE 600H
Startup:
  MOV SP, STACK_POINTER                 ; set stack pointer ready
StartupLoop:
  CALL waitForPower                     ; check if power is on
  CALL main                             ; display main menu
  CALL IsOKActive
  JMP StartupLoop                       ; repeat routine

waitForPower:
  PUSH R0
  PUSH R1
waitForPowerLoop:
  MOV R0, PWR                           ; move PWR value to register bank
  MOVB R1, [R0]
  CMP R1, 1                             ; is PWR set to 1?
  JNE waitForPower                      ; PWR != 1?
  POP R1
  POP R0
  RET

errorMessage:
  PUSH R0
  PUSH R1
  PUSH R2
errorMessageLoop:
  MOV R2, ErrorMenu                     ; display error menu
  CALL drawDisplay
  CALL wipePeripherals
  CALL IsOKActive                       ; is ok being pressed
  MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  MOVB R1, [R0]
  CMP R1, GO_BACK                       ; is selection set to 1?
  JNE errorMessageLoop                  ; SEL_NR_MENU != 1?
  POP R2
  POP R1
  POP R0

main:
  PUSH R0
  PUSH R1
  PUSH R2
mainLoop:
  MOV R2, InitMenu                      ; get main menu ready
  CALL drawDisplay                      ; draw display
  CALL wipePeripherals
  CALL IsOKActive
  MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  MOVB R1, [R0]
  CMP R1, WEIGHT_MACHINE                ; is selection set to 1?
  JEQ mainLoop_weighFood
  CMP R1, VIEW_FOOD                     ; is selection set to 2?
  JEQ mainLoop_viewFoodInfo
  CMP R1, RESET_DATA                    ; is selection set to 3?
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
mainLoop_end:
  POP R2
  POP R1
  POP R0
  RET

weighFood:
viewFoodInfo:
resetFoodData:
;roundGrams:
;checkIfFoodIsSelected:
checkIfOverflow:
  PUSH R0
  ;PUSH R1
  MOV R0, R6                            ; R6 - P
  JV errorMessage
  MOV R0, R7                            ; R7 - C
  JV errorMessage
  MOV R0, R8                            ; R8 - F
  JV errorMessage
  MOV R0, R9                            ; R9 - K
  JV errorMessage
  ;POP R1
  POP R0
  RET


checkIfAboveMaxWeight:
  PUSH R0
  ;PUSH R1
  MOV R0, [R10]                         ; weight of the food
  CMP R0, MAX_WEIGHT
  JLT checkIfAboveMaxWeight_End
  MOV [R10], 0                          ; weight is above 3000, therefore, set weight to 0
checkIfAboveMaxWeight_End:
  POP R0
  ;POP R1
  RET

calculateCalories:
  PUSH R0
  PUSH R1
  PUSH R6
  PUSH R7
  PUSH R8
  PUSH R9
  MOV R0, PROTEIN_CARB_MULTIPLICAND
  MOV R1, FAT_MULTIPLICAND
  MUL R0, R6                            ; protein * 4
  MUL R0, R7                            ; carbs * 4
  MUL R1, R8                            ; fat * 9

  ADD R9, R6                            ; kcal + protein_kcal
  ADD R9, R7                            ; kcal + protein_carbs
  ADD R9, R8                            ; kcal + protein_fat

  POP R9
  POP R8
  POP R7
  POP R6
  POP R1
  POP R0
  RET


drawDisplay:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  MOV R0, DISPLAY_START                 ; beginning of display
  MOV R1, DISPLAY_END                   ; end of display
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
  MOVB [R0], R5                         ; wipe PWR input
  MOVB [R1], R5                         ; wipe selection input
  MOVB [R2], R5                         ; wipe OK input
  MOVB [R3], R5                         ; wipe CHANGE input
  MOV [R4], R5                          ; wipe PESO input
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
