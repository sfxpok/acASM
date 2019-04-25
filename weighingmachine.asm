; peripherals
PWR                         EQU 0007H     ; start machine
SEL_NR_MENU                 EQU 0064H     ; selection input
OK                          EQU 006AH     ; confirmation of the user input
CHANGE                      EQU 0037H     ; switch selection
PESO                        EQU 0045H     ; weight input of a food
NEXT_PAGE                   EQU 006EH     ; go to next food page
; stack pointer
STACK_POINTER               EQU 5000H
; main menu constants
WEIGHT_MACHINE              EQU 31H     ; weight machine option
VIEW_TOTAL_DATA             EQU 32H     ; view total data option
RESET_DATA                  EQU 33H     ; reset data option
; other constants
;MAX_WEIGHT                  EQU 3000    ; 3000 in hexadecimal
;PROTEIN_CARB_MULTIPLICAND   EQU 4       ; obtain protein and carbs in calories
;FAT_MULTIPLICAND            EQU 9       ; obtain fats in calories
EMPTY_CHARACTER             EQU 20H
UNDERSCORE_CHARACTER        EQU 5FH
DOUBLE_UNDERSCORE_CHARACTER EQU 5F5FH
GO_BACK                     EQU 1
NUMBER_ZERO_ASCII           EQU 30H     ; 0 in ASCII
NUMBER_ONE_ASCII            EQU 31H     ; 1 in ASCII
TIME_CONSTANT               EQU 250H
; storage
;SELECTED_FOOD               EQU 130H    ; selected food during runtime
;SELECTED_WEIGHT             EQU 120H    ; weight input (PESO)

;BASE_DIARY_FOOD             EQU 1000H   ; base address of the food diary

; other food table memory addresses
END_FOOD_TABLE              EQU 2340H   ; memory address of the end of the food table

; consumed nutrients table
INIT_CONSUMED_TABLE         EQU 0DA0H   ; memory address of the beginning of the total consumed nutrients table
TOTAL_PROTEIN               EQU 0DA0H   ; total consumed protein
TOTAL_CARBOHYDRATES         EQU 0DA4H   ; total consumed carbohydrates
TOTAL_FATS                  EQU 0DA8H   ; total consumed fats

; display
DISPLAY_START               EQU 0000H    ; position to start the display
DISPLAY_POSITION_TWO        EQU 0010H    ; position two of the display
DISPLAY_POSITION_THREE      EQU 0020H    ; position three of the display
DISPLAY_POSITION_FOUR       EQU 0030H    ; position four of the display
;DISPLAY_POSITION_FIVE       EQU 0040H    ; position five of the display
;DISPLAY_POSITION_SIX        EQU 0050H    ; position six of the display
DISPLAY_POSITION_SEVEN      EQU 0060H    ; position seven of the display
DISPLAY_END                 EQU 0070H    ; position to end the display

DISPLAY_START_WEIGHT        EQU 0B01H
DISPLAY_END_WEIGHT          EQU 0B04H

; reserved registers
; R10: weight of the food
; R9: selected food
; R8: calories
; R7: fats
; R6: carbohydrates
; R5: protein

; food table (options)
OPTION_OATS                 EQU 3030H   ; option to choose oats
OPTION_SLICED_BREAD         EQU 3031H   ; option to choose sliced bread
OPTION_POTATOES             EQU 3032H   ; option to choose potatoes
OPTION_RICE                 EQU 3033H   ; option to choose rice
OPTION_BEANS                EQU 3034H   ; option to choose beans
OPTION_VEGETABLES           EQU 3035H   ; option to choose vegetables
OPTION_TOMATO               EQU 3036H   ; option to choose tomato
OPTION_BANANA               EQU 3037H   ; option to choose banana
OPTION_ORANGE               EQU 3038H   ; option to choose orange
OPTION_APPLE                EQU 3039H   ; option to choose apple
OPTION_KIWI                 EQU 3130H   ; option to choose kiwi
OPTION_CHOCOLATE_COOKIE     EQU 3131H   ; option to choose chocolate cookie
OPTION_PIZZA                EQU 3132H   ; option to choose pizza
OPTION_ALMONDS              EQU 3133H   ; option to choose almonds
OPTION_LINSEED              EQU 3134H   ; option to choose linseed
OPTION_OLIVE_OIL            EQU 3135H   ; option to choose olive oil
OPTION_SKIM_MILK            EQU 3136H   ; option to choose skim milk
OPTION_WHEY                 EQU 3137H   ; option to choose whey
OPTION_SALMON               EQU 3138H   ; option to choose salmon
OPTION_WHITE_FISH           EQU 3139H   ; option to choose white fish
OPTION_TUNA                 EQU 3230H   ; option to choose tuna
OPTION_PORK                 EQU 3231H   ; option to choose pork
OPTION_CHICKEN              EQU 3232H   ; option to choose chicken
OPTION_TURKEY               EQU 3233H   ; option to choose turkey
OPTION_EGG                  EQU 3234H   ; option to choose egg
OPTION_CHEESE               EQU 3235H   ; option to choose cheese

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

; display menus
PLACE 0A00H
MainMenu:
  STRING "PWRRRR:_        "
  STRING "1: Balanca      "
  STRING "2: Ver diario   "
  STRING "3: Reiniciar    "
  STRING "                "
  STRING "                "
  STRING "SEL:__ OK:_     "

PLACE 0E70H
waitForPowerMenu:
  STRING "PWRRRR:_        "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
;ErrorMenu:
;  STRING "                "
;  STRING "                "
;  STRING "   Houve uma    "
;  STRING "   excepcao     "
;  STRING "                "
;  STRING "1: OK           "
;  STRING "                "
PLACE 0DE0H
ErrorOverflowMenu:
  STRING "                "
  STRING "                "
  STRING "   Houve uma    "
  STRING "   excepcao     "
  STRING "   (overflow)   "
  STRING "                "
  STRING "                "
;ErrorNoFoodSelectedMenu:
;  STRING "                "
;  STRING " Nao ha nenhum  "
;  STRING "   alimento     "
;  STRING "  selecionado   "
;  STRING "                "
;  STRING "1: OK           "
;  STRING "                "
;ErrorNoWeightSelectedMenu:
;  STRING "                "
;  STRING " Nao ha nenhum  "
;  STRING "     peso       "
;  STRING "  selecionado   "
;  STRING "                "
;  STRING "1: OK           "
;  STRING "                "
PLACE 0D00H
ResetMenu:
  STRING "                "
  STRING "                "
  STRING " Quer reiniciar "
  STRING "   os dados?    "
  STRING "                "
  STRING "                "
  STRING "       OK:_     "

PLACE 0B00H
registerFoodDiaryMenu:
  STRING "PWRRRR:_        "
  STRING "Alimento:       "
  STRING "                "
  STRING "CHANGE:_        "
  STRING "PESO:____g      "
  STRING "                "
  STRING "MENU_           "

PLACE 0B80H
changeFoodInfoMenu:
  STRING "SEL:__ OK:_ >_  "

PLACE 0C00H
viewTotalDataMenu:
  STRING "PWRRRR:_        "
  STRING "P:____ g        "
  STRING "C:____ g        "
  STRING "F:____ g        "
  STRING "                "
  STRING "K:____ kcal     "
  STRING "MENU_           "

PLACE 2000H
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

PLACE 0000H
Init:
  JMP Startup

PLACE 0300H
Startup:
  MOV SP, STACK_POINTER                 ; set stack pointer ready

waitForPower: ; desligado
  MOV R0, waitForPowerMenu
  CALL drawDisplay
waitForPowerLoop: ; ciclodesligado
  MOV R0, PWR                           ; move PWR value to register bank
  MOVB R0, [R0]
  MOV R1, NUMBER_ONE_ASCII
  CMP R0, R1                            ; is PWR set to 1?
  JZ main
  JMP waitForPowerLoop

main: ; cicloprincipal
  CALL wipeDisplay
  MOV R0, MainMenu                      ; get main menu ready
  CALL drawDisplay                      ; draw display
  ;CALL wipePeripherals
  CALL readSELButton
  CALL readOKButton
  CALL readPWRButton
  ;CALL checkSwitches
  ;CALL IsOKActive
  ;CALL checkOKFlag
  CMP R3, 1
  JZ waitForPower
  ;MOV R0, SEL_NR_MENU                   ; move selection value to register bank
  ;MOVB R1, [R0]
  ;CMP R1, WEIGHT_MACHINE                ; is selection set to 1?
  ;JEQ mainLoop_registerFoodDiary
  ;CMP R1, VIEW_TOTAL_DATA               ; is selection set to 2?
  ;JEQ mainLoop_viewTotalData
  ;CALL errorMessage
  MOV R1, WEIGHT_MACHINE
  CMP R0, R1
  JZ registerFoodDiary
  MOV R1, VIEW_TOTAL_DATA
  CMP R0, R1
  JZ viewTotalData
  MOV R1, RESET_DATA
  CMP R0, R1
  JZ resetFoodData
  JMP main
;mainLoop_registerFoodDiary:
  ;CALL registerFoodDiary
  ;JMP mainLoop
;mainLoop_viewTotalData:
  ;CALL viewTotalData
  ;JMP mainLoop
;mainLoop_end:
  ;POP R2
  ;POP R1
  ;POP R0
  ;RET

viewTotalData: ; RotinaTOTALD
  MOV R2, viewTotalDataMenu
  CALL drawDisplay
  CALL SaveMacronutrientsAndCalories
  MOV R1, R9
  MOV R2, 12H
  CALL ConvertToASCIICharacter

  MOV R1, R8
  MOV R2, 22H
  CALL ConvertToASCIICharacter

  MOV R1, R7
  MOV R2, 32H
  CALL ConvertToASCIICharacter

  MOV R1, R10
  MOV R2, 52H
  CALL ConvertToASCIICharacter

resetFoodData: ; RotinaReset
  CALL ResetDataTimer
  CMP R5, 1
  JZ main
  CALL wipeTotalData
  JMP main

readCHANGEButton:
  PUSH R1
  PUSH R2
  PUSH R3
readCHANGEButtonLoop:
  MOV R1, CHANGE                        ; R1 has got PIN value CHANGE
  MOVB R1, [R1]
  MOV R2, UNDERSCORE_CHARACTER
  CMP R1, R2                            ; compares underscore value with CHANGE value
  JZ readCHANGEButtonLoop               ; if CHANGE is _ it means there is no input
  MOV R2, NUMBER_ONE_ASCII
  CMP R1, R2                            ; compares 1 in ASCII with CHANGE value
  JZ CHANGEValid                        ; if it is true, it means CHANGE is active
  MOV R2, NUMBER_ZERO_ASCII
  CMP R1, R2                            ; compares 0 in ASCII with CHANGE value
  JZ CHANGEValid                        ; if it is true, it means CHANGE is NOT active
  MOV R1, CHANGE
  MOV R2, UNDERSCORE_CHARACTER
  MOVB [R1], R2                         ; overwrites CHANGE value in display with _
  JMP readCHANGEButtonLoop              ; repeat

CHANGEValid:
  MOV R0, R1                            ; CHANGE value is stored in R0
  POP R3
  POP R2
  POP R1
  RET

registerFoodDiary: ; RotinaBALANCA
  MOV R10, 0
  MOV R9, 0
  MOV R8, 0
  MOV R7, 0

  MOV R0, registerFoodDiaryMenu
  CALL drawDisplay
  CALL readCHANGEButton
  CALL readPWRButton
  CMP R3, 1
  JZ waitForPower
  MOV R1, NUMBER_ONE_ASCII
  CMP R0, R1
  JZ saveData

saveData: ; CMTabela
  CALL displayFoodTable
  CALL readFoodChosen                   ; reads food chosen (stored in R3)
  CALL readOKButton

  MOV R0, registerFoodDiaryMenu
  CALL drawDisplay
  CALL displayChosenFood

  MOV R5, 0
  CALL saveMacronutrientsOfChosenFood
  CALL readWeightInput
  CALL readPWRButton
  CMP R3, 1
  JZ waitForPower

  CALL ComputeMacronutritionalValues
  CMP R5, 1
  JZ OverflowWarning

OverflowWarning: ; AvisaExcesso
  CALL wipeDisplay
  MOV R0, ErrorOverflowMenu
  CALL drawDisplay
  CALL Timer
  CALL wipeDisplay
  JMP registerFoodDiary

readMenu: ; LeMenu
  CALL readSELButton
  CALL readPWRButton
  CMP R3, 1
  JZ waitForPower
  CMP R0, 0
  JZ registerFoodDiary
  CMP R0, 1
  JMP main
  MOV R0, SEL_NR_MENU
  MOV R1, UNDERSCORE_CHARACTER
  MOVB [R0], R1
  JMP readMenu

displayChosenFood: ; MostraAlimento
  PUSH R1
  PUSH R2
  PUSH R4
  MOV R1, DISPLAY_POSITION_THREE
  MOV R2, DISPLAY_POSITION_FOUR
  ADD R10, 2
  SUB R2, 2
displayChosenFoodLoop: ; CicloMostraAlimento !!! BUGGY !!!
  MOV R4, [R10]
  MOV [R1], R4
  ADD R10, 2
  ADD R1, 2
  CMP R1, R2
  JNZ displayChosenFoodLoop
  POP R4
  POP R2
  POP R1
  RET

saveMacronutrientsOfChosenFood: ; GuardaNutri
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5

  MOV R3, R10
  MOV R2, 30H                           ; warning

  MOVB R3, [R3]
  SUB R3, R2
  MOV R1, 100
  MUL R3, R1
  ADD R9, R3

  MOV R3, R10                           ; first macronutrient (?)
  ADD R3, 1
  MOVB R3, [R3]
  SUB R3, R2
  MOV R1, 10
  MUL R3, R1
  ADD R9, R3

  MOV R3, R10
  ADD R3, 2
  MOVB R3, [R3]
  SUB R3, R2
  ADD R9, R3

  MOV R3, R10                           ; next macronutrient
  ADD R3, 5

  MOVB R3, [R3]
  SUB R3, R2
  MOV R1, 100
  MUL R3, R1
  ADD R8, R3

  MOV R3, R10
  ADD R3, 6
  MOVB R3, [R3]
  SUB R3, R2
  MOV R1, 10
  MUL R3, R1
  ADD R8, R3

  MOV R3, R10
  ADD R3, 7
  MOVB R3, [R3]
  SUB R3, R2
  ADD R8, R3

  MOV R3, R10                           ; next macronutrient
  MOV R4, 10
  ADD R3, R4

  MOVB R3, [R3]
  SUB R3, R2
  MOV R1, 100
  MUL R3, R1
  ADD R7, R3

  MOV R3, R10
  MOV R4, 11
  ADD R3, R4
  MOVB R3, [R3]
  SUB R3, R2
  MOV R1, 10
  MUL R3, R1
  ADD R7, R3

  MOV R3, R10
  MOV R4, 12
  ADD R3, R4
  MOVB R3, [R3]
  SUB R3, R2
  ADD R7, R3

  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  RET

readWeightInput: ; LePeso
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5
  PUSH R7
wipeWeight:
  MOV R6, 0000H
  MOV R0, PESO
  MOV R2, UNDERSCORE_CHARACTER
  MOV R3, 0049H
wipeWeightLoop:
  MOVB [R0], R2
  ADD R0, 1
  CMP R0, R3
  JNE wipeWeightLoop
StartReadingWeightInput:
  MOV R0, PESO
  MOV R2, UNDERSCORE_CHARACTER
  MOV R3, 0049H
  MOV R4, 30H
  MOV R7, 10
  MOV R5, 1000
checkWeightInput:
  MOVB R1, [R0]
  CMP R1, R2
  JZ checkWeightInput
  ADD R0, 1
  CMP R0, R3
  JNE checkWeightInput
  MOV R0, PESO
readWeightInputLoop: ; CicloLePeso
  MOVB R1, [R0]
  SUB R1, R4
  MUL R1, R5
  ADD R6, R1

  DIV R5, R7
  ADD R0, 1
  CMP R0, R3
  JNE readWeightInputLoop

checkForOverflow: ; VerificaExcesso
  MOV R5, 3000H
  CMP R6, R5
  JGT wipeWeight

  POP R7
  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

ComputeMacronutritionalValues: ; CalcNutri
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4

  MOV R0, INIT_CONSUMED_TABLE
  MOV R2, 100
  MOV R3, 50
  MUL R9, R6
  JC EndCarry
  JV EndCarry
  MUL R8, R6
  JC EndCarry
  JV EndCarry
  MUL R7, R6
  JC EndCarry
  JV EndCarry

  MOV R1, [R0]

  MOV R4, R9
  MOV R5, R9
  DIV R4, R2
  MOD R5, R2
  CMP R5, R3
  JLT doNotRoundProtein
  ADD R4, 1

doNotRoundProtein: ; NArrProteina
  ADD R1, R4
  JC EndCarry
  JV EndCarry
  MOV [R0], R1
  ADD R0, 4
  MOV R1, [R0]

  MOV R4, R8
  MOV R5, R8
  DIV R4, R2
  MOD R5, R2
  CMP R5, R3
  JLT doNotRoundCarb
  ADD R4, 1

doNotRoundCarb: ; NArrHCarb
  ADD R1, R4
  JC EndCarry
  JV EndCarry
  MOV [R0], R1

  ADD R0, 4
  MOV R1, [R0]

  MOV R4, R7
  MOV R5, R7
  DIV R4, R2
  MOD R5, R2
  CMP R5, R3
  JLT doNotRoundFats
  ADD R4, 1

doNotRoundFats: ; NArrGord
  ADD R1, R4
  JC EndCarry
  JV EndCarry
  MOV [R0], R1

  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

EndCarry: ; FimCarryOver
  MOV R9, 0
  MOV R8, 0
  MOV R7, 0
  MOV R4, 0
  MOV R5, 1

  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

Timer:
  PUSH R0
  PUSH R1

  MOV R0, TIME_CONSTANT
  MOV R1, 00A0H

RaiseTimer:
  SUB R0, 1
  MOV [R1], R0
  CMP R0, 0
  JNE RaiseTimer

  POP R1
  POP R0
  RET

SaveMacronutrientsAndCalories: ; GuardaTotais
  PUSH R4
  PUSH R6

  MOV R10, 0
  MOV R9, TOTAL_PROTEIN
  MOV R9, [R9]

  MOV R8, TOTAL_CARBOHYDRATES
  MOV R8, [R8]
  MOV R7, TOTAL_FATS
  MOV R7, [R7]

  MOV R6, R9
  MOV R4, 4
  MUL R6, R4
  ADD R10, R6

  MOV R6, R8
  MUL R6, R4
  ADD R10, R6

  MOV R6, R7
  MOV R4, 9
  MUL R6, R4
  ADD R10, R6

  POP R4
  POP R6
  RET

ConvertToASCIICharacter:
  PUSH R0
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5

  MOV R0, 10
  ADD R2, 3
  MOV R3, 0
NextASCIICharacter:
  MOV R4, R1
  MOD R4, R0
  MOV R5, 48
  ADD R5, R4
  MOV R4, R2
  MOVB [R4], R5
  SUB R2, 1
  ADD R3, 1
  CMP R3, 4
  JEQ EndASCIIConversion
  DIV R1, R0
  CMP R1, 0
  JNE NextASCIICharacter

FillEmptyCharacters:
  MOV R5, EMPTY_CHARACTER
  MOV R4, R2
  MOVB [R4], R5
  SUB R2, 1
  ADD R3, 1
  CMP R3, 4
  JNE FillEmptyCharacters

EndASCIIConversion:
  POP R5
  POP R4
  POP R3
  POP R2
  POP R0
  RET

ResetDataTimer:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3

  MOV R0, ResetMenu
  CALL drawDisplay
  MOV R0, OK
  MOV R2, 250H
  MOV R3, NUMBER_ONE_ASCII
ResetDataLoop:
  SUB R2, 1
  MOVB R1, [R0]
  CMP R1, R3
  JZ CancelResetData
  CMP R2, 0
  JZ EndResetDataTimer
  JMP ResetDataLoop

CancelResetData:
  MOV R5, 1
  POP R3
  POP R2
  POP R1
  POP R0
  RET

EndResetDataTimer:
  MOV R5, 0
  POP R3
  POP R2
  POP R1
  POP R0
  RET

wipeTotalData:
  PUSH R0
  PUSH R1
  PUSH R2

  MOV R9, 0
  MOV R8, 0
  MOV R7, 0
  MOV R6, 0
  MOV R5, 0

  MOV R0, INIT_CONSUMED_TABLE
  MOV R1, 0DB0H
  MOV R2, 0
wipeTotalDataLoop:
  MOVB [R0], R2
  ADD R0, 1
  CMP R0, R1
  JNZ wipeTotalDataLoop

  POP R2
  POP R1
  POP R0
  RET

displayFoodTable:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5
  PUSH R6
  PUSH R7

  MOV R0, InfoOats
  MOV R1, DISPLAY_START
  MOV R2, DISPLAY_POSITION_SEVEN
  MOV R3, DISPLAY_END
  MOV R4, changeFoodInfoMenu
displayLCTLoop: ; what?
  MOV R5, [R4]
  MOV [R2], R5
  ADD R2, 2
  ADD R4, 2
  CMP R2, R3
  JNZ displayLCTLoop
displayFoodTableLoop:
  MOV R2, DISPLAY_POSITION_SEVEN
  MOV R5, [R0]
  MOV [R1], R5
  ADD R0, 2
  ADD R1, 2
  CMP R1, R2
  JNZ displayFoodTableLoop
  JMP displayReadNextPageLoop
displayNextPageLoop:
  MOV R1, DISPLAY_START
  MOV R6, NEXT_PAGE
  MOV R7, UNDERSCORE_CHARACTER
  MOVB [R6], R7
  JMP displayFoodTable
displayReadNextPageLoop:
  MOV R6, NEXT_PAGE
  MOVB R6, [R6]
  MOV R7, NUMBER_ONE_ASCII
  CMP R6, R7
  JZ displayNextPageLoop
  MOV R7, NUMBER_ZERO_ASCII
  CMP R6, R7
  JZ endChooseFood
  JNE displayReadNextPageLoop
endChooseFood: ; ciclofimpg
  POP R7
  POP R6
  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

readSELButton:
  PUSH R1
  PUSH R2
readSELButtonLoop:
  MOV R1, SEL_NR_MENU
  MOVB R1, [R1]
  MOV R2, UNDERSCORE_CHARACTER
  CMP R1, R2
  JZ readSELButton
  MOV R0, R1
  POP R2
  POP R1
  RET

readOKButton:
  PUSH R1
  PUSH R2
readOKButtonLoop:
  MOV R1, OK
  MOVB R1, [R1]
  MOV R2, NUMBER_ONE_ASCII
  CMP R1, R2
  JNE readOKButtonLoop
  POP R2
  POP R1
  RET

readPWRButton:
  PUSH R1
  MOV R3, PWR
  MOVB R3, [R3]
  MOV R1, NUMBER_ZERO_ASCII
  CMP R3, R1
  JNE doNotTurnOffMachine
  MOV R3, 1
  POP R1
  RET

doNotTurnOffMachine:
  MOV R3, 0
  POP R1
  RET

drawDisplay:
  ;PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  MOV R1, DISPLAY_START                 ; beginning of display
  MOV R2, DISPLAY_END                   ; end of display
drawDisplayLoop:
  MOV R3, [R0]                          ; get character from requested menu
  MOV [R1], R3                          ; draw character to display
  ADD R0, 2                             ; step to next char of menu
  ADD R1, 2                             ; step to next char of display
  CMP R1, R2
  JNZ drawDisplayLoop                   ; have we reached to the end of the menu?
  POP R3
  POP R2
  POP R1
  ;POP R0
  RET

wipeDisplay:
  ;PUSH R0
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
  ;POP R0
  RET

wipePeripherals:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  MOV R0, SEL_NR_MENU
  MOV R1, OK
  MOV R2, CHANGE
  MOV R3, 0
  MOVB [R1], R3                         ; wipe selection input
  MOVB [R2], R3                         ; wipe OK input
  MOVB [R3], R3                         ; wipe CHANGE input
  POP R3
  POP R2
  POP R1
  POP R0
  RET

readFoodChosen:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
readFoodChosenLoop:
  MOV R3, UNDERSCORE_CHARACTER
  MOV R0, SEL_NR_MENU
  MOVB R1, [R0]
  CMP R1, R3
  JZ readFoodChosenLoop
  ADD R0, 1
  MOVB R1, [R0]
  CMP R1, R3
  JZ readFoodChosenLoop
  MOV R0, SEL_NR_MENU

  MOV R1, [R0]
  MOV R2, OPTION_OATS
  MOV R10, NAME_OATS
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_SLICED_BREAD
  MOV R10, NAME_SLICED_BREAD
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_POTATOES
  MOV R10, NAME_POTATOES
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_RICE
  MOV R10, NAME_RICE
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_BEANS
  MOV R10, NAME_BEANS
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_VEGETABLES
  MOV R10, NAME_VEGETABLES
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_TOMATO
  MOV R10, NAME_TOMATO
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_BANANA
  MOV R10, NAME_BANANA
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_ORANGE
  MOV R10, NAME_ORANGE
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_APPLE
  MOV R10, NAME_APPLE
  CMP R1, R2
  JZ FoodChoiceDoneINTERMEDIATEJUMP
  MOV R2, OPTION_KIWI
  MOV R10, NAME_KIWI
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_CHOCOLATE_COOKIE
  MOV R10, NAME_CHOCOLATE_COOKIE
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_PIZZA
  MOV R10, NAME_PIZZA
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_ALMONDS
  MOV R10, NAME_ALMONDS
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_LINSEED
  MOV R10, NAME_LINSEED
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_OLIVE_OIL
  MOV R10, NAME_OLIVE_OIL
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_SKIM_MILK
  MOV R10, NAME_SKIM_MILK
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_WHEY
  MOV R10, NAME_WHEY
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_SALMON
  MOV R10, NAME_SALMON
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_WHITE_FISH
  MOV R10, NAME_WHITE_FISH
  CMP R1, R2
  JZ FoodChoiceDone
FoodChoiceDoneINTERMEDIATEJUMP:         ; INTERMEDIATE JUMP
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_TUNA
  MOV R10, NAME_TUNA
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_PORK
  MOV R10, NAME_PORK
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_CHICKEN
  MOV R10, NAME_CHICKEN
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_TURKEY
  MOV R10, NAME_TURKEY
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_EGG
  MOV R10, NAME_EGG
  CMP R1, R2
  JZ FoodChoiceDone
  MOV R2, OPTION_CHEESE
  MOV R10, NAME_CHEESE
  CMP R1, R2
  JZ FoodChoiceDone
InvalidFoodChoice:
  MOV R0, SEL_NR_MENU
  MOV R3, DOUBLE_UNDERSCORE_CHARACTER
  MOV [R0], R3
  JMP readFoodChosenLoop
FoodChoiceDone:
  POP R3
  POP R2
  POP R1
  POP R0
  RET
