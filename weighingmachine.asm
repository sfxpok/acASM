; peripherals
PWR                         EQU 00H     ; start machine
SEL_NR_MENU                 EQU 01H     ; selection input
OK                          EQU 02H     ; confirmation of the user input
CHANGE                      EQU 03H     ; switch selection
PESO                        EQU 04H     ; weight input of a food
NEXT_PAGE                   EQU 05H     ; go to next food page
; stack pointer
STACK_POINTER               EQU F000H
; main menu constants
WEIGHT_MACHINE              EQU 1
VIEW_TOTAL_DATA             EQU 2
RESET_DATA                  EQU 3
; register food diary menu constants
REGISTER_FOOD               EQU 2
UPDATE_WEIGHT               EQU 3
CHANGE_FOOD                 EQU 4
; other constants
MAX_WEIGHT                  EQU 3000    ; 3000 in hexadecimal
PROTEIN_CARB_MULTIPLICAND   EQU 4       ; obtain protein and carbs in calories
FAT_MULTIPLICAND            EQU 9       ; obtain fats in calories
EMPTY_CHARACTER             EQU 20H
UNDERSCORE_CHARACTER        EQU 5FH
DOUBLE_UNDERSCORE_CHARACTER EQU 5F5FH
GO_BACK                     EQU 1
REGISTER_FOOD_FLAG          EQU 60H
OK_FLAG                     EQU 70H
; storage
SELECTED_FOOD               EQU 130H    ; selected food during runtime
SELECTED_WEIGHT             EQU 120H    ; weight input (PESO)

BASE_DIARY_FOOD             EQU 1000H   ; base address of the food diary

; food table (options)
OPTION_OATS                 EQU 3000H   ; option to choose oats
OPTION_SLICED_BREAD         EQU 3001H   ; option to choose sliced bread
OPTION_POTATOES             EQU 3002H   ; option to choose potatoes
OPTION_RICE                 EQU 3003H   ; option to choose rice
OPTION_BEANS                EQU 3004H   ; option to choose beans
OPTION_VEGETABLES           EQU 3005H   ; option to choose vegetables
OPTION_TOMATO               EQU 3006H   ; option to choose tomato
OPTION_BANANA               EQU 3007H   ; option to choose banana
OPTION_ORANGE               EQU 3008H   ; option to choose orange
OPTION_APPLE                EQU 3009H   ; option to choose apple
OPTION_KIWI                 EQU 3010H   ; option to choose kiwi
OPTION_CHOCOLATE_COOKIE     EQU 3011H   ; option to choose chocolate cookie
OPTION_PIZZA                EQU 3012H   ; option to choose pizza
OPTION_ALMONDS              EQU 3013H   ; option to choose almonds
OPTION_LINSEED              EQU 3014H   ; option to choose linseed
OPTION_OLIVE_OIL            EQU 3015H   ; option to choose olive oil
OPTION_SKIM_MILK            EQU 3016H   ; option to choose skim milk
OPTION_WHEY                 EQU 3017H   ; option to choose whey
OPTION_SALMON               EQU 3018H   ; option to choose salmon
OPTION_WHITE_FISH           EQU 3019H   ; option to choose white fish
OPTION_TUNA                 EQU 3020H   ; option to choose tuna
OPTION_PORK                 EQU 3021H   ; option to choose pork
OPTION_CHICKEN              EQU 3022H   ; option to choose chicken
OPTION_TURKEY               EQU 3023H   ; option to choose turkey
OPTION_EGG                  EQU 3024H   ; option to choose egg
OPTION_CHEESE               EQU 3025H   ; option to choose cheese

; food table (display names)
NAME_OATS                   EQU 4000H   ; memory address of oats
NAME_SLICED_BREAD           EQU 4020H   ; memory address of sliced bread
NAME_POTATOES               EQU 4040H   ; memory address of potatoes
NAME_RICE                   EQU 4060H   ; memory address of rice
NAME_BEANS                  EQU 4080H   ; memory address of beans
NAME_VEGETABLES             EQU 40A0H   ; memory address of vegetables
NAME_TOMATO                 EQU 40C0H   ; memory address of tomato
NAME_BANANA                 EQU 40E0H   ; memory address of banana
NAME_ORANGE                 EQU 4100H   ; memory address of orange
NAME_APPLE                  EQU 4120H   ; memory address of apple
NAME_KIWI                   EQU 4140H   ; memory address of kiwi
NAME_CHOCOLATE_COOKIE       EQU 4160H   ; memory address of chocolate cookie
NAME_PIZZA                  EQU 4180H   ; memory address of pizza
NAME_ALMONDS                EQU 41A0H   ; memory address of almonds
NAME_LINSEED                EQU 41C0H   ; memory address of linseed
NAME_OLIVE_OIL              EQU 41E0H   ; memory address of olive oil
NAME_SKIM_MILK              EQU 4200H   ; memory address of skim milk
NAME_WHEY                   EQU 4220H   ; memory address of whey
NAME_SALMON                 EQU 4240H   ; memory address of salmon
NAME_WHITE_FISH             EQU 4260H   ; memory address of white fish
NAME_TUNA                   EQU 4280H   ; memory address of tuna
NAME_PORK                   EQU 42A0H   ; memory address of pork
NAME_CHICKEN                EQU 42C0H   ; memory address of chicken
NAME_TURKEY                 EQU 42E0H   ; memory address of turkey
NAME_EGG                    EQU 4300H   ; memory address of egg
NAME_CHEESE                 EQU 4320H   ; memory address of cheese

; other food table memory addresses
END_FOOD_TABLE              EQU 4340H   ; memory address of the end of the food table

; consumed nutrients table
INIT_CONSUMED_TABLE         EQU 0EA0H   ; memory address of the beginning of the total consumed nutrients table
TOTAL_PROTEIN               EQU 0EA0H   ; total consumed protein
TOTAL_CARBOHYDRATES         EQU 0EA4H   ; total consumed carbohydrates
TOTAL_FATS                  EQU 0EA8H   ; total consumed fats

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
  STRING "                "
  STRING "1: Balanca      "
  STRING "2: Ver diário   "
  STRING "3: Reiniciar    "
  STRING "                "
  STRING "PWR:_           "
  STRING "SEL:__      OK:_"
waitForPowerMenu:
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "PWR:_           "
  STRING "                "
ErrorMenu:
  STRING "                "
  STRING "                "
  STRING "   Houve uma    "
  STRING "   excepcao     "
  STRING "                "
  STRING "1: OK           "
  STRING "                "
ErrorOverflowMenu:
  STRING "                "
  STRING "                "
  STRING "   Houve uma    "
  STRING "   excepcao     "
  STRING "   (overflow)   "
  STRING "                "
  STRING "            OK:_"
ErrorNoFoodSelectedMenu:
  STRING "                "
  STRING " Nao ha nenhum  "
  STRING "   alimento     "
  STRING "  selecionado   "
  STRING "                "
  STRING "1: OK           "
  STRING "                "
ErrorNoWeightSelectedMenu:
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
  STRING "                "
  STRING "            OK:_"
registerFoodDiaryMenu:
  STRING "                "
  STRING "Alimento:       "
  STRING "                "
  STRING "PESO:____ gramas"
  STRING "CHANGE:_        "
  STRING "PWR:_           "
  STRING "MENU:_          "
changeFoodInfo:
  STRING "                "
  STRING "                "
  STRING "SEL:_           "
  STRING "OK:_            "
  STRING ">_              "
  STRING "                "
  STRING "                "
viewTotalDataMenu:
  STRING "P:____ gramas   "
  STRING "C:____ gramas   "
  STRING "F:____ gramas   "
  STRING "K:____ calorias "
  STRING "                "
  STRING "PWR:_           "
  STRING "MENU:_          "

PLACE 5000H
InfoOats:
  STRING "00: Aveia       "
  STRING "011 056 007     "
InfoSlicedBread:
  STRING "01: Pao de forma"
  STRING "009 042 003     "
InfoPotatoes:
  STRING "02: Batata      "
  STRING "003 019 000     "
InfoRice:
  STRING "03: Arroz       "
  STRING "007 025 000     "
InfoBeans:
  STRING "04: Feijao      "
  STRING "010 013 000     "
InfoVegetables:
  STRING "05: Legumes     "
  STRING "003 007 000     "
InfoTomato:
  STRING "06: Tomate      "
  STRING "001 003 000     "
InfoBanana:
  STRING "07: Banana      "
  STRING "001 023 000     "
InfoOrange:
  STRING "08: Laranja     "
  STRING "001 012 000     "
InfoApple:
  STRING "09: Maca        "
  STRING "001 014 000     "
InfoKiwi:
  STRING "10: Kiwi        "
  STRING "001 015 000     "
InfoChocolateCookie:
  STRING "11: Bolacha Choc"
  STRING "009 059 022     "
InfoPizza:
  STRING "12: Pizza       "
  STRING "013 025 009     "
InfoAlmonds:
  STRING "13: Amendoas    "
  STRING "025 006 055     "
InfoLinseed:
  STRING "14: Linhacas    "
  STRING "018 034 036     "
InfoOliveOil:
  STRING "15: Azeite      "
  STRING "000 000 100     "
InfoSkimMilk:
  STRING "16: Leite Magro "
  STRING "003 004 000     "
InfoWhey:
  STRING "17: Whey        "
  STRING "080 008 004     "
InfoSalmon:
  STRING "18: Salmao      "
  STRING "021 000 015     "
InfoWhiteFish:
  STRING "19: Pescada     "
  STRING "020 000 001     "
InfoTuna:
  STRING "20: Atum        "
  STRING "025 000 002     "
InfoPork:
  STRING "21: Porco       "
  STRING "022 000 015     "
InfoChicken:
  STRING "22: Frango      "
  STRING "025 000 004     "
InfoTurkey:
  STRING "23: Peru        "
  STRING "028 000 001     "
InfoEgg:
  STRING "24: Ovo         "
  STRING "007 000 005     "
InfoCheese:
  STRING "25: Queijo      "
  STRING "028 000 013     "

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
  CALL checkOKFlag
  JMP StartupLoop                       ; repeat routine

waitForPower:
  PUSH R0
  PUSH R1
waitForPowerLoop:
  MOV R0, PWR                           ; move PWR value to register bank
  MOVB R1, [R0]
  CMP R1, 1                             ; is PWR set to 1?
  JNE waitForPowerLoop                  ; PWR != 1?
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
  CALL checkOKFlag                       ; is ok being pressed
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
  CALL checkOKFlag                       ; is ok being pressed
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
  CALL checkOKFlag                       ; is ok being pressed
  MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  MOVB R1, [R0]
  CMP R1, GO_BACK                       ; is selection set to 1?
  JNE errorMessageNoWeightSelectedLoop  ; SEL_NR_MENU != 1?
  POP R2
  POP R1
  POP R0
  JMP main

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

registerFoodDiary: ; TO BE DONE
  PUSH R0
  PUSH R1
  PUSH R2
registerFoodDiaryLoop:
  MOV R2, registerFoodDiaryMenu
  CALL drawDisplay
  CALL wipePeripherals
  CALL SwitchRegisterFoodFlag
  CALL checkOKFlag
  MOV R0, SEL_NR_MENU
  MOVB R1, [R0]
  CMP R1, GO_BACK
  JEQ main
  CMP R1, REGISTER_FOOD
  JEQ registerFoodDiaryLoop_SAVE
  CALL errorMessage
  JMP registerFoodDiaryLoop
registerFoodDiaryLoop_SAVE:
  CALL checkIfFoodIsSelected
  CALL checkIfWeightIsSelected
  ;CALL checkIfOverflow
  CALL calculateCalories
  RET

main:
  PUSH R0
  PUSH R1
  PUSH R2
mainLoop:
  MOV R2, MainMenu                      ; get main menu ready
  CALL drawDisplay                      ; draw display
  CALL wipePeripherals
  CALL checkSwitches
  ;CALL IsOKActive
  ;CALL checkOKFlag
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

checkOKFlag:
  PUSH R0
  PUSH R1
checkOKFlagLoop:
  MOV R0, OK_FLAG
  MOVB R1, [R0]
  CMP R1, 1
  JNE checkOKFlagTEST
  POP R1
  POP R0
  RET
checkOKFlagTEST:
  POP R1
  POP R0
  JMP checkSwitches
  RET

viewTotalData: ; TO BE DONE
  PUSH R0
  PUSH R1
viewTotalDataLoop:
  MOV R2, viewTotalDataMenu
  CALL drawDisplay
  CALL wipePeripherals
  CALL calculateCalories                ; calculate food's calories
  CALL checkOKFlag                       ; is OK being pressed?
  MOV R0, SEL_NR_MENU
  MOVB R1, [R0]
  CMP R1, GO_BACK
  JEQ main
  CALL errorMessage
  JMP viewTotalDataLoop

IsCHANGEActive:
  PUSH R0
  PUSH R1
  MOV R0, REGISTER_FOOD_FLAG            ; move REGISTER_FOOD_FLAG to register bank
  MOVB R1, [R0]                         ; move REGISTER_FOOD_FLAG value to memory
  CMP R1, 1                             ; are we in the registerFoodDiary menu?
  JNE IsCHANGEActive_end                ; REGISTER_FOOD_FLAG != 1?
  MOV R0, CHANGE                        ; move CHANGE value to register bank
  MOVB R1, [R0]                         ; move CHANGE value to memory
  CMP R1, 1                             ; is CHANGE pressed?
  ;JNE IsCHANGEActiveLoop
  JNE IsCHANGEActive_end                ; CHANGE != 1?
  CALL changeFoodOne
  JMP IsCHANGEActive_end                ; !
IsCHANGEActive_end:
  POP R1
  POP R0
  RET

checkSwitches:
  PUSH R0
  PUSH R1
checkSwitchesLoop:
  CALL checkPWR
  CALL IsCHANGEActive
  ;CALL IsOKActive

  PUSH R0
  PUSH R1
  MOV R0, OK
  MOVB R1, [R0]
  CMP R1, 1
  JNE checkSwitchesLoop
  POP R1
  POP R0
  POP R1
  POP R0
  RET

checkPWR:
  PUSH R0
  PUSH R1
  MOV R0, PWR
  MOVB R1, [R0]
  CMP R1, 1
  JZ checkPWR_end                       ; PWR = 1?
  POP R1
  POP R0
  CALL wipeDisplay
  ;JMP waitForPower                      ; !
  CALL waitForPower
  POP R1
  POP R0
  CALL main
checkPWR_end:
  POP R1
  POP R0
  RET

SwitchRegisterFoodFlag:
  PUSH R0
  PUSH R1
  PUSH R2
  MOV R1, REGISTER_FOOD_FLAG
  MOVB R0, [R1]
  CMP R0, 0
  JZ ActivateRegisterFoodFlag
  MOV R2, 0
  MOVB [R1], R2
  JMP SwitchRegisterFoodFlag_end
ActivateRegisterFoodFlag:
  MOV R2, 1
  MOVB [R1], R2
SwitchRegisterFoodFlag_end:
  POP R2
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
  CALL checkOKFlag
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
  MOV R0, OK                            ; move OK value to register bank
  MOVB R1, [R0]                         ; move OK value to memory
  CMP R1, 1                             ; is OK pressed?
  ;JNE IsOKActiveLoop
  JNE IsOKActive_end                    ; OK != 1?
  CALL SwitchOKFlag
  JMP IsOKActive_end
IsOKActive_end:
  POP R1
  POP R0
  RET

SwitchOKFlag:
  ;PUSH R0
  ;PUSH R1
  ;PUSH R2
  MOV R1, OK_FLAG
  MOVB R0, [R1]
  CMP R0, 0
  JZ ActivateOKFlag
  MOV R2, 0
  MOVB [R1], R2
  JMP SwitchOKFlag_end
ActivateOKFlag:
  MOV R2, 1
  MOVB [R1], R2
SwitchOKFlag_end:
  POP R2
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
