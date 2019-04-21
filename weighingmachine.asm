; peripherals
PWR                         EQU 00H     ; start machine
SEL_NR_MENU                 EQU 10H     ; selection input
OK                          EQU 20H     ; confirmation of the user input
CHANGE                      EQU 30H     ; switch selection
PESO                        EQU 40H     ; weight input of a food
; stack pointer
STACK_POINTER               EQU 9FF0H
; main menu constants
WEIGHT_MACHINE              EQU 1
VIEW_TOTAL_DATA             EQU 2
; register food diary menu constants
REGISTER_FOOD               EQU 2
UPDATE_WEIGHT               EQU 3
CHANGE_FOOD                 EQU 4
; view total data menu constants
RESET_DATA                  EQU 2
; page 1 menu of food constants
AVEIA                       EQU 1
PAO_FORMA                   EQU 2
BATATA                      EQU 3
ARROZ                       EQU 4
CHANGE_PAGE                 EQU 0
; other constants
MAX_WEIGHT                  EQU 3000    ; 3000 in hexadecimal
PROTEIN_CARB_MULTIPLICAND   EQU 4       ; obtain protein and carbs in calories
FAT_MULTIPLICAND            EQU 9       ; obtain fats in calories
EMPTY_CHARACTER             EQU 20H
GO_BACK                     EQU 1
; storage
SELECTED_FOOD               EQU 130H    ; selected food during runtime
SELECTED_WEIGHT             EQU 120H    ; weight input (PESO)

BASE_DIARY_FOOD             EQU 1000H   ; base address of the food diary

; display
DISPLAY_START               EQU 0A0H     ; position to start the display
DISPLAY_END                 EQU 10FH     ; position to shut down the display

DISPLAY_START_WEIGHT        EQU 0B01H
DISPLAY_END_WEIGHT          EQU 0B04H

; reserved registers
; R10: weight of the food
; R9: selected food
; R8: calories
; R7: fats
; R6: carbohydrates
; R5: protein

; display menus
PLACE 1000H

MainMenu:
  STRING "    WMachine    "
  STRING "                "
  STRING "1: Balanca      "
  STRING "2: Ver diário   "
  STRING "                "
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
ErrorNoFoodSelectedMenu:
  STRING "                "
  STRING " Nao ha nenhum  "
  STRING "   alimento     "
  STRING "  selecionado   "
  STRING "                "
  STRING "1: OK           "
  STRING "                "
ErrorNoFoodSelectedMenu:
  STRING "                "
  STRING " Nao ha nenhum  "
  STRING "     peso       "
  STRING "  selecionado   "
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
registerFoodDiaryMenu:
  STRING "Alimento:       "
  STRING "Peso:           "
  STRING "                "
  STRING "1: OK           "
  STRING "2: Regista      "
  STRING "3: Atualiza Peso"
  STRING "4: Selec. Alim. "
viewTotalDataMenu:
  STRING "Proteinas:      "
  STRING "Hidr. Carb:     "
  STRING "Gorduras:       "
  STRING "Calorias:       "
  STRING "                "
  STRING "1: OK           "
  STRING "2: Reiniciar    "
ChangeFoodMenuOne:
  STRING "Selec.Alim. P1/6"
  STRING "                "
  STRING "1: Aveia        "
  STRING "2: Pao Forma    "
  STRING "3: Batata       "
  STRING "4: Arroz        "
  STRING "0: Pagina 2     "
;ChangeFoodMenuTwo:
;ChangeFoodMenuThree:
;ChangeFoodMenuFour:
;ChangeFoodMenuFive:
;ChangeFoodMenuSix:
;ChangeFoodMenuSeven:

PLACE 200H
Init:
  MOV R0, Startup
  JMP R0

;PLACE 600H
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
  JMP main

checkIfFoodIsSelected:
  PUSH R0
  PUSH R9
  MOV R9, SELECTED_FOOD
  MOVB R0, [R9]                          ; get food in R9
  CMP R0, 0
  JZ errorMessageNoFoodSelected         ; is food set to 0? (does it NOT exist?)
  POP R9
  POP R0
  RET

checkIfWeightIsSelected:
  PUSH R0
  PUSH R10
  MOV R10, SELECTED_WEIGHT
  MOVB R0, [R10]                          ; get weight in R10
  CMP R0, 0
  JZ errorMessageNoWeightSelected         ; is weight set to 0? (does it NOT exist?)
  POP R10
  POP R0
  RET

errorMessageNoFoodSelected:
  PUSH R0
  PUSH R1
  PUSH R2
errorMessageNoFoodSelectedLoop:
  MOV R2, ErrorNoFoodSelectedMenu       ; display error menu (no food selected)
  CALL drawDisplay
  CALL wipePeripherals
  CALL IsOKActive                       ; is ok being pressed
  MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  MOVB R1, [R0]
  CMP R1, GO_BACK                       ; is selection set to 1?
  JNE errorMessageNoFoodSelectedLoop    ; SEL_NR_MENU != 1?
  POP R2
  POP R1
  POP R0
  JMP main

errorMessageNoWeightSelected:
  PUSH R0
  PUSH R1
  PUSH R2
errorMessageNoWeightSelectedLoop:
  MOV R2, ErrorNoWeightSelectedMenu     ; display error menu (no weight selected)
  CALL drawDisplay
  CALL wipePeripherals
  CALL IsOKActive                       ; is ok being pressed
  MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  MOVB R1, [R0]
  CMP R1, GO_BACK                       ; is selection set to 1?
  JNE errorMessageNoWeightSelectedLoop  ; SEL_NR_MENU != 1?
  POP R2
  POP R1
  POP R0
  JMP main

main:
  PUSH R0
  PUSH R1
  PUSH R2
mainLoop:
  MOV R2, MainMenu                      ; get main menu ready
  CALL drawDisplay                      ; draw display
  CALL wipePeripherals
  CALL IsOKActive
  MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  MOVB R1, [R0]
  CMP R1, WEIGHT_MACHINE                ; is selection set to 1?
  JEQ mainLoop_registerFoodDiary
  CMP R1, VIEW_TOTAL_DATA               ; is selection set to 2?
  JEQ mainLoop_viewTotalData
  CALL errorMessage
  JMP mainLoop
mainLoop_registerFoodDiary:
  CALL registerFoodDiary
  JMP mainLoop
mainLoop_viewTotalData:
  CALL viewTotalData
  JMP mainLoop
mainLoop_end:
  POP R2
  POP R1
  POP R0
  RET

IsCHANGEActive:
  PUSH R0
  PUSH R1
IsCHANGEActiveLoop:
  MOV R0, CHANGE                        ; move CHANGE value to register bank
  MOVB R1, [R0]                         ; move CHANGE value to memory
  CMP R1, 1                             ; is CHANGE pressed?
  JNE IsCHANGEActiveLoop                ; CHANGE != 1?
  POP R1
  POP R0
  RET

changeFoodOne:
  PUSH R0
  PUSH R1
  PUSH R9
changeFoodOneLoop:
  MOV R2, ChangeFoodMenuOne
  CALL drawDisplay
  CALL wipePeripherals
  CALL IsOKActive
  MOV R0, SEL_NR_MENU
  MOVB R1, [R0]
  CALL SaveSelectedFoodToMemory
  POP R9
  POP R1
  POP R0
  RET

SaveSelectedFoodToMemory:
  MOV R9, SELECTED_FOOD
  MOVB [R9], R1
  RET

registerFoodDiary: ; TO BE DONE
  PUSH R0
  PUSH R1
  PUSH R2
registerFoodDiaryLoop:
  MOV R2, registerFoodDiaryMenu
  CALL drawDisplay
  CALL wipePeripherals
  CALL IsOKActive
  MOV R0, SEL_NR_MENU
  MOVB R1, [R0]
  CMP R1, GO_BACK
  JEQ main
  CMP R1, REGISTER_FOOD
  JEQ registerFoodDiaryLoop_SAVE
  CMP R1, UPDATE_WEIGHT
  JEQ drawDisplayWeight
  CMP R1, SELECT_FOOD
  JEQ registerFoodDiaryLoop_CHANGE
  CALL errorMessage
  JMP registerFoodDiaryLoop
registerFoodDiaryLoop_SAVE:
  CALL checkIfFoodIsSelected
  CALL checkIfWeightIsSelected
  CALL checkIfOverflow
  CALL calculateCalories
  RET
registerFoodDiaryLoop_CHANGE:
  CALL IsCHANGEActive
  CALL changeFoodOne
  RET

viewTotalData: ; TO BE DONE
  PUSH R0
  PUSH R1
viewTotalDataLoop:
  MOV R2, viewTotalDataMenu
  CALL drawDisplay
  CALL wipePeripherals
  CALL calculateCalories                ; calculate food's calories
  CALL IsOKActive                       ; is OK being pressed?
  MOV R0, SEL_NR_MENU
  MOVB R1, [R0]
  CMP R1, GO_BACK
  JEQ main
  CALL errorMessage
  JMP viewTotalDataLoop

calculateCalories: ; TO BE DONE
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

resetFoodData: ; TO BE DONE
  PUSH R0
  PUSH R1

;roundGrams:

;checkIfOverflow:
  ;PUSH R0
  ;PUSH R1
  ;MOV R0, R6                            ; R6 - P
  ;JV errorMessage
  ;MOV R0, R7                            ; R7 - C
  ;JV errorMessage
  ;MOV R0, R8                            ; R8 - F
  ;JV errorMessage
  ;MOV R0, R9                            ; R9 - K
  ;JV errorMessage
  ;POP R1
  ;POP R0
  ;RET

checkIfAboveMaxWeight: ; UNTESTED
  PUSH R0
  PUSH R1
  PUSH R10
  MOV R10, SELECTED_WEIGHT              ; get weight of the food from R10
  MOVB R0, [R10]
  MOV R1, MAX_WEIGHT
  CMP R0, R1
  JLT checkIfAboveMaxWeight_End
  MOV R0, 0                             ; weight is above 3000, therefore, set weight to 0
  MOVB [R10], R0
checkIfAboveMaxWeight_End:
  POP R10
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
drawDisplayLoop:
  MOV R3, [R2]                          ; get character from requested menu
  MOV [R0], R3                          ; draw character to display
  ADD R2, 2                             ; step to next char of menu
  ADD R0, 2                             ; step to next char of display
  CMP R0, R1
  JLE drawDisplayLoop                   ; have we reached to the end of the menu?
  POP R3
  POP R2
  POP R1
  POP R0
  RET

drawDisplayWeight: ; TO BE DONE
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  MOV R0, DISPLAY_START_WEIGHT
  MOV R1, DISPLAY_END_WEIGHT
  MOV R2, SELECTED_WEIGHT
  MOVB R4, [R2]
  ;CALL drawDisplayLoop
  RET

wipeDisplay:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  MOV R0, DISPLAY_START
  MOV R1, DISPLAY_END
  MOV R2, EMPTY_CHARACTER               ; this will be drawn all over the display
wipeDisplayLoop:
  MOVB [R0], R2                         ; send empty character to the display
  ADD R0, 1                             ; step to next char of display
  CMP R0, R1
  JLE wipeDisplayLoop                   ; have we reached to the end of the menu?
  POP R3
  POP R2
  POP R1
  POP R0
  RET

IsOKActive:
  PUSH R0
  PUSH R1
IsOKActiveLoop:
  MOV R0, OK                            ; move OK value to register bank
  MOVB R1, [R0]                         ; move OK value to memory
  CMP R1, 1                             ; is OK pressed?
  JNE IsOKActiveLoop                    ; OK != 1?
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
  ;MOV R0, PWR
  MOV R1, SEL_NR_MENU
  MOV R2, OK
  MOV R3, CHANGE
  ;MOV R4, PESO
  MOV R5, 0
  ;MOVB [R0], R5                        ; wipe PWR input
  MOVB [R1], R5                         ; wipe selection input
  MOVB [R2], R5                         ; wipe OK input
  MOVB [R3], R5                         ; wipe CHANGE input
  ;MOV [R4], R5                         ; wipe PESO input
  ;MOV [R4+2], R5
  ;MOV [R4+4], R5
  ;MOV [R4+6], R5
  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET
