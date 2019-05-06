; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; input peripherals
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

ONOFF                       EQU 0007H   ; start machine
SEL_NR_MENU                 EQU 0064H   ; selection input
OK                          EQU 006AH   ; confirmation of the user input
CHANGE                      EQU 0037H   ; switch selection
PESO                        EQU 0045H   ; weight input of a food
NEXT_PAGE                   EQU 006DH   ; go to next food page

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; main menu options
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

WEIGHT_MACHINE              EQU 31H     ; weight machine option
VIEW_TOTAL_DATA             EQU 32H     ; view total data option
RESET_DATA                  EQU 33H     ; reset data option

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; other definitions
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

STACK_POINTER               EQU 5000H
EMPTY_CHARACTER             EQU 20H
UNDERSCORE_CHARACTER        EQU 5FH
DOUBLE_UNDERSCORE_CHARACTER EQU 5F5FH
NUMBER_ZERO_ASCII           EQU 30H     ; 0 in ASCII
NUMBER_ONE_ASCII            EQU 31H     ; 1 in ASCII
TIME_CONSTANT               EQU 250H    ; meant to be used for the timer to countdown
END_FOOD_TABLE              EQU 2340H   ; memory address of the end of the food table

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; consumed nutrients data
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

INIT_CONSUMED_TABLE         EQU 0DA0H   ; memory address of the beginning of the total consumed nutrients table
TOTAL_PROTEIN               EQU 0DA0H   ; total consumed protein
TOTAL_CARBOHYDRATES         EQU 0DA4H   ; total consumed carbohydrates
TOTAL_FATS                  EQU 0DA8H   ; total consumed fats

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; memory addresses to display the machine screen
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

DISPLAY_START               EQU 0000H   ; position to start the display
DISPLAY_POSITION_TWO        EQU 0010H   ; position two of the display
DISPLAY_POSITION_THREE      EQU 0020H   ; position three of the display
DISPLAY_POSITION_FOUR       EQU 0030H   ; position four of the display
DISPLAY_POSITION_FIVE       EQU 0040H   ; position five of the display
DISPLAY_POSITION_SIX        EQU 0050H   ; position six of the display
DISPLAY_POSITION_SEVEN      EQU 0060H   ; position seven of the display
DISPLAY_END                 EQU 0070H   ; position to end the display

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; options for food names
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

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

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; memory addresses of food names
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

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

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; display menus
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

PLACE 0A00H
MainMenu:
  STRING "ON/OFF:_        "
  STRING "1: Balanca      "
  STRING "2: Ver diario   "
  STRING "3: Reiniciar    "
  STRING "                "
  STRING "                "
  STRING "SEL:__ OK:_     "

PLACE 0E70H
waitForPowerMenu:
  STRING "ON/OFF:_        "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "
  STRING "                "

PLACE 0DE0H
ErrorOverflowMenu:
  STRING "                "
  STRING "                "
  STRING "   Houve uma    "
  STRING "   excepcao     "
  STRING "   (overflow)   "
  STRING "                "
  STRING "                "

PLACE 0D00H
ResetMenu:
  STRING "                "
  STRING " Quer reiniciar "
  STRING "   os dados?    "
  STRING "Se nao, carregue"
  STRING "   no OK para   "
  STRING "    cancelar    "
  STRING "       OK:_     "

PLACE 0B00H
registerFoodDiaryMenu:
  STRING "ON/OFF:_        "
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
  STRING "ON/OFF:_        "
  STRING "P:____ g        "
  STRING "C:____ g        "
  STRING "F:____ g        "
  STRING "                "
  STRING "K:____ kcal     "
  STRING "MENU_           "

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; food info displayed
; protein carbohydrates fats
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

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

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; instructions
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

PLACE 0000H
Init:
  JMP Startup

PLACE 0300H
Startup:
  MOV SP, STACK_POINTER                 ; set stack pointer ready

waitForPower:
  MOV R0, waitForPowerMenu              ; get menu while power is off
  CALL drawDisplay                      ; draw display with ONOFF input
waitForPowerLoop:
  MOV R0, ONOFF                         ; move ONOFF value to R0
  MOVB R0, [R0]
  MOV R1, NUMBER_ONE_ASCII              ; send 1 in ASCII format to R1
  CMP R0, R1                            ; compare R0 with R1
  JZ main                               ; jump is done if machine is turned on
  JMP waitForPowerLoop                  ; if machine is not turned on, keep checking

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; main program of the weight machine
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

main:
  CALL wipeDisplay                      ; clean display
  MOV R0, MainMenu                      ; get main menu ready
  CALL drawDisplay                      ; draw display
  CALL readSELButton                    ; read SEL_NR_MENU input
  CALL readOKButton                     ; read OK input
  CALL readONOFFButton                  ; read ONOFF input (is the machine on?)
  CMP R3, 1                             ; checks if the machine is actually turned on
  JZ waitForPower                       ; if the machine is not on, jump and standby for power

  MOV R1, WEIGHT_MACHINE                ; send 1 in ASCII format to R1
  CMP R0, R1                            ; compare SEL input with R1
  JZ registerFoodDiary                  ; if the input is 1, go to the requested routine

  MOV R1, VIEW_TOTAL_DATA               ; send 2 in ASCII format to R1
  CMP R0, R1                            ; compare SEL input with R1
  JZ viewTotalData                      ; if the input is 2, go to the requested routine

  MOV R1, RESET_DATA                    ; send 3 in ASCII format to R1
  CMP R0, R1                            ; compare SEL input with R1
  JZ resetFoodData                      ; if the input is 3, go to the requested routine

  JMP main                              ; stays in this loop if no correct input was given

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; see recorded data along with the macronutrients
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

viewTotalData:
  MOV R0, viewTotalDataMenu             ; get menu ready
  CALL drawDisplay                      ; draw menu on the display
  CALL SaveMacronutrientsAndCalories    ; save recorded diary macronutrients

  MOV R1, R9                            ; get the value to convert to R1
  MOV R2, 12H                           ; move least significant bit position on the display
  CALL ConvertToASCIICharacter          ; convert the value inside the register to ASCIII

  MOV R1, R8                            ; get the value to convert to R1
  MOV R2, 22H                           ; move least significant bit position on the display
  CALL ConvertToASCIICharacter          ; convert the value inside the register to ASCII

  MOV R1, R7                            ; get the value to convert to R1
  MOV R2, 32H                           ; move least significant bit position on the display
  CALL ConvertToASCIICharacter          ; convert the value inside the register to ASCII

  MOV R1, R10                           ; get the value to convert to R1
  MOV R2, 52H                           ; move least significant bit position on the display
  CALL ConvertToASCIICharacter          ; convert the value inside the register to ASCII

readMenu:
  CALL readSELButton                    ; read SEL_NR_MENU input
  CALL readONOFFButton
  CMP R3, 1
  JZ waitForPower
  CMP R0, 0                             ; compares SEL input with 0
  JZ registerFoodDiary                  ; if the above is true, it means there is no selection
  CMP R0, 1                             ; compares SEL input with 1
  JMP main                              ; if the above is true, jump to main menu
  MOV R0, SEL_NR_MENU                   ; send SEL_NR_MENU input value to R0
  MOV R1, UNDERSCORE_CHARACTER          ; send _ in ASCII format to R1
  MOVB [R0], R1                         ; wipes selection input on display
  JMP readMenu                          ; repeat loop

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; reset all recorded data so far
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

resetFoodData:
  CALL ResetDataTimer                   ; starts ticking timer to reset data
  CMP R5, 1                             ; compares R5 with 1
  JZ main                               ; if the above is true, it means we will not reset data
  CALL wipeTotalData                    ; otherwise, reset the data
  JMP main

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; read CHANGE button input
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

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

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; routine to weigh and select food
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

; R10 will save the selected food
; R9 will save the protein of the selected food
; R8 will save the carbohydrates of the selected food
; R7 will save the fats of the selected food

registerFoodDiary:
  MOV R10, 0                            ; wipe R10
  MOV R9, 0                             ; wipe R9
  MOV R8, 0                             ; wipe R8
  MOV R7, 0                             ; wipe R7

  MOV R0, registerFoodDiaryMenu         ; get menu to display
  CALL drawDisplay                      ; draw the menu on display
  CALL readCHANGEButton                 ; read CHANGE input
  CALL readONOFFButton                  ; read ONOFF input
  CMP R3, 1                             ; checks if the machine is actually turned on
  JZ waitForPower                       ; if the machine is not on, jump and standby for power
  MOV R1, NUMBER_ONE_ASCII              ; send 1 in ASCII format to R1
  CMP R0, R1                            ; check if CHANGE input button is active
  JZ saveData                           ; jump to saveData if the above is true

saveData:
  CALL displayFoodTable                 ; send food table to display
  CALL readFoodChosen                   ; reads food chosen (stored in R3)
  CALL readOKButton                     ; read OK input

  MOV R0, registerFoodDiaryMenu         ; get menu to display
  CALL drawDisplay                      ; draw the menu on display
  CALL displayChosenFood                ; draw chosen food on display

  MOV R5, 0                             ; wipe R5 (R5 is meant to verify if there is overflow)
  CALL saveMacronutrientsOfChosenFood   ; saves macronutrients of chosen food
  CALL readWeightInput                  ; gets ready to read weight input
  CALL readONOFFButton                  ; reads ONOFF button
  CMP R3, 1                             ; checks if the machine is actually turned on
  JZ waitForPower                       ; if the machine is not on, jump and standby for power

  CALL ComputeMacronutritionalValues    ; computes macronutrients along with the weight of the food
  CMP R5, 1                             ; checks if there is overflow
  JZ OverflowWarning                    ; if the above is true, there IS overflow

OverflowWarning:
  CALL wipeDisplay                      ; clean display
  MOV R0, ErrorOverflowMenu             ; get overflow menu
  CALL drawDisplay                      ; draw display
  CALL Timer                            ; start countdown of the timer
  CALL wipeDisplay                      ; clean display
  JMP registerFoodDiary                 ; jump back to weight machine

displayChosenFood: ; BUGGY
  PUSH R1
  PUSH R2
  PUSH R4
  MOV R1, DISPLAY_POSITION_THREE        ; position three of display
  MOV R2, DISPLAY_POSITION_FOUR         ; position four of display
  ADD R10, 2                            ; add 2 to R10
  SUB R2, 2                             ; subtract 2 to R2
displayChosenFoodLoop: ; BUGGY
  MOV R4, [R10]                         ; get the food (R3) and save it on R4
  MOV [R1], R4                          ; place the first character on display
  ADD R10, 2                            ; go to next character
  ADD R1, 2                             ; go to next character
  CMP R1, R2                            ; compare R1 with R2 to check if we have reached to the end
  JNZ displayChosenFoodLoop             ; if the above is true, keep advancing characters
  POP R4
  POP R2
  POP R1
  RET

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; save macronutrients of the food on the registers
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

saveMacronutrientsOfChosenFood:
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5

  MOV R3, R10                           ; moves the end of the value to R3
  MOV R2, NUMBER_ZERO_ASCII             ; moves 0 in ASCII to subtract

  MOVB R3, [R3]                         ; hundreds
  SUB R3, R2                            ; subtract 0 to pass ASCII to hexadecimal
  MOV R1, 100                           ; send 100 to R1
  MUL R3, R1                            ; multiply to get the value in the hundreds
  ADD R9, R3                            ; stores the result on R9

  MOV R3, R10                           ; first macronutrient (?)
  ADD R3, 1                             ; sum 1 to R3 to check the dozens
  MOVB R3, [R3]
  SUB R3, R2                            ; subtract 0 to pass ASCII to hexadecimal
  MOV R1, 10                            ; move 10 to R1
  MUL R3, R1                            ; multiply with R3 to get dozens
  ADD R9, R3                            ; sum the value to the total of the nutrient

  MOV R3, R10                           ; units
  ADD R3, 2                             ; add 2 to R3
  MOVB R3, [R3]
  SUB R3, R2                            ; subtract R2 with R3
  ADD R9, R3                            ; sum R3 with R9

  MOV R3, R10                           ; next macronutrient
  ADD R3, 5                             ; add 5 to R3

  MOVB R3, [R3]                         ; hundreds
  SUB R3, R2                            ; subtract R2 with R3
  MOV R1, 100                           ; send 100 to R1
  MUL R3, R1                            ; multiply R3 with R1
  ADD R8, R3                            ; sum the value to the total of the nutrient

  MOV R3, R10                           ; dozens
  ADD R3, 6                             ; add 6 to R3
  MOVB R3, [R3]
  SUB R3, R2                            ; subtract R2 with R3
  MOV R1, 10                            ; move 10 to R1
  MUL R3, R1                            ; multiply with R3 to get dozens
  ADD R8, R3                            ; sum the value to the total of the nutrient

  MOV R3, R10                           ; units
  ADD R3, 7                             ; add 7 to R3
  MOVB R3, [R3]
  SUB R3, R2                            ; subtract R2 with R3
  ADD R8, R3                            ; add R3 with R8

  MOV R3, R10                           ; next macronutrient
  MOV R4, 10                            ; move 10 to R4
  ADD R3, R4                            ; add R3 with R4

  MOVB R3, [R3]                         ; hundreds
  SUB R3, R2                            ; subtract R2 with R3
  MOV R1, 100                           ; move 100 to R1
  MUL R3, R1                            ; multiply R3 with R1
  ADD R7, R3                            ; add R3 with R7

  MOV R3, R10                           ; dozens
  MOV R4, 11                            ; move 11 to R4
  ADD R3, R4                            ; add R3 with R4
  MOVB R3, [R3]
  SUB R3, R2                            ; subtract R2 with R3
  MOV R1, 10                            ; move 10 to R1
  MUL R3, R1                            ; multiply with R3 to get dozens
  ADD R7, R3                            ; sum the value to the total of the nutrient

  MOV R3, R10                           ; units
  MOV R4, 12                            ; moves 12 to R4
  ADD R3, R4                            ; add R3 with R4
  MOVB R3, [R3]
  SUB R3, R2                            ; subtract R2 with R3
  ADD R7, R3                            ; add R3 with R7

  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  RET

readWeightInput:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4
  PUSH R5
  PUSH R7
wipeWeight:
  MOV R6, 0000H                         ; wipe total
  MOV R0, PESO                          ; move PESO input to R0
  MOV R2, UNDERSCORE_CHARACTER          ; move _ to R2
  MOV R3, 0049H                         ; move the least significant number to R3
wipeWeightLoop:
  MOVB [R0], R2                         ; move the underscore to the PESO input value
  ADD R0, 1                             ; advance one cell
  CMP R0, R3                            ; check if the wipe is done
  JNE wipeWeightLoop                    ; if the above is not done, repeat the loop
StartReadingWeightInput:
  MOV R0, PESO                          ; move PESO input address to R0
  MOV R2, UNDERSCORE_CHARACTER          ; move _ in ASCII format
  MOV R3, 0049H                         ; address on the right side of PESO on display
  MOV R4, 30H                           ; move 30H to R4 to convert ASCII to hexadecimal
  MOV R7, 10                            ; dividend
  MOV R5, 1000                          ; multiplicand
checkWeightInput:
  MOVB R1, [R0]
  CMP R1, R2                            ; check if a weight cell is empty (comparison with underscore)
  JZ checkWeightInput                   ; if the above is true, repeat the loop
  ADD R0, 1                             ; otherwise, advance one cell
  CMP R0, R3                            ; check if we have reached the end of the PESO cells in the memory
  JNE checkWeightInput                  ; if the above is true, repeat the loop
  MOV R0, PESO                          ; move PESO input to R0 to check for the thousands
readWeightInputLoop:
  MOVB R1, [R0]
  SUB R1, R4                            ; subtract to convert ASCII to hexadecimal
  MUL R1, R5                            ; multiply R1 by 1000
  ADD R6, R1                            ; sum to the total

  DIV R5, R7                            ; divide R5 by 10
  ADD R0, 1                             ; advance one cell on the input PESO
  CMP R0, R3                            ; check if we have reached the end of the cells
  JNE readWeightInputLoop               ; if the above is true, repeat the loop

checkForOverflow:
  MOV R5, 3000H                         ; move 3000H to R5. 3000 represents 3000g (3kg)
  CMP R6, R5                            ; compare 3000 with the total on R6
  JGT wipeWeight                        ; if the above is true, it means there is overflow

  POP R7
  POP R5
  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

ComputeMacronutritionalValues:
  PUSH R0
  PUSH R1
  PUSH R2
  PUSH R3
  PUSH R4

  MOV R0, INIT_CONSUMED_TABLE           ; move the starting point of the consumed (nutrients, weight) table to R0
  MOV R2, 100                           ; dividend
  MOV R3, 50                            ; if the rest of the integer division of the macronutrient by 100 is greater than R5, the macronutrient is rounded
  MUL R9, R6                            ; protein * weight
  JC EndCarry                           ; jump and set R5 to 1 if there is carry
  JV EndCarry                           ; jump and set R5 to 1 if there is overflow
  MUL R8, R6                            ; carbohydrates * weight
  JC EndCarry                           ; jump and set R5 to 1 if there is carry
  JV EndCarry                           ; jump and set R5 to 1 if there is overflow
  MUL R7, R6                            ; fats * weight
  JC EndCarry                           ; jump and set R5 to 1 if there is carry
  JV EndCarry                           ; jump and set R5 to 1 if there is overflow

  MOV R1, [R0]                          ; move whatever's on the total data to R1

  MOV R4, R9                            ; keep a copy of R9 in R4
  MOV R5, R9                            ; keep a copy of R9 in R5
  DIV R4, R2                            ; divide the value of R4 by 100
  MOD R5, R2                            ; save the integer division result of the value of R5 by R2 (R2 is 100)
  CMP R5, R3                            ; compare R5 with 50
  JLT doNotRoundProtein                 ; if R5 is below 50 it does not need rounding
  ADD R4, 1                             ; if it is above 50, add 1 to the integer part of the division (R4)

doNotRoundProtein:
  ADD R1, R4                            ; sum the integer part of the division (with rounding, if applicable)
  JC EndCarry                           ; jump and set R5 to 1 if there is carry
  JV EndCarry                           ; jump and set R5 to 1 if there is overflow
  MOV [R0], R1                          ; move back to the memory
  ADD R0, 4                             ; go to next column
  MOV R1, [R0]                          ; move the value in R0 (carbohydrates) to R1

  MOV R4, R8                            ; keep a copy of R8 in R4
  MOV R5, R8                            ; keep a copy of R8 in R5
  DIV R4, R2                            ; divide the value of R4 by 100
  MOD R5, R2                            ; save the integer division result of the value of R5 by R2 (R2 is 100)
  CMP R5, R3                            ; compare R5 with 50
  JLT doNotRoundCarb                    ; if R5 is below 50 it does not need rounding
  ADD R4, 1                             ; if it is above 50, add 1 to the integer part of the division (R4)

doNotRoundCarb:
  ADD R1, R4                            ; sum the integer part of the division (with rounding, if applicable)
  JC EndCarry                           ; jump and set R5 to 1 if there is carry
  JV EndCarry                           ; jump and set R5 to 1 if there is overflow
  MOV [R0], R1                          ; move back to the memory

  ADD R0, 4                             ; go to next column
  MOV R1, [R0]                          ; move the value in R0 (fats) to R1

  MOV R4, R7                            ; keep a copy of R7 in R4
  MOV R5, R7                            ; keep a copy of R7 in R5
  DIV R4, R2                            ; divide the value of R4 by 100
  MOD R5, R2                            ; save the integer division result of the value of R5 by R2 (R2 is 100)
  CMP R5, R3                            ; compare R5 with 50
  JLT doNotRoundFats                    ; if R5 is below 50 it does not need rounding
  ADD R4, 1                             ; if it is above 50, add 1 to the integer part of the division (R4)

doNotRoundFats:
  ADD R1, R4                            ; sum the integer part of the division (with rounding, if applicable)
  JC EndCarry                           ; jump and set R5 to 1 if there is carry
  JV EndCarry                           ; jump and set R5 to 1 if there is overflow
  MOV [R0], R1                          ; move back to the memory

  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

EndCarry:
  MOV R9, 0                             ; wipe protein
  MOV R8, 0                             ; wipe carbohydrates
  MOV R7, 0                             ; wipe fats
  MOV R4, 0                             ; wipe aux register
  MOV R5, 1                             ; set R5 to 1 (this means there is carry or overflow)

  POP R4
  POP R3
  POP R2
  POP R1
  POP R0
  RET

Timer:
  PUSH R0
  PUSH R1

  MOV R0, TIME_CONSTANT                 ; move time constant to R0
  MOV R1, 00A0H                         ; get timer coordinates?

RaiseTimer:
  SUB R0, 1                             ; countdown the timer
  MOV [R1], R0                          ; update the timer on display
  CMP R0, 0                             ; check if we have reached the end of the timer
  JNE RaiseTimer                        ; if the above is false, repeat loop

  POP R1
  POP R0
  RET

SaveMacronutrientsAndCalories:
  PUSH R4
  PUSH R6

  MOV R10, 0                            ; move 0 to R10
  MOV R9, TOTAL_PROTEIN                 ; move the address of total protein to R9
  MOV R9, [R9]                          ; move the content of the address to R9

  MOV R8, TOTAL_CARBOHYDRATES           ; move the address of total carbohydrates to R9
  MOV R8, [R8]                          ; move the content of the address to R8
  MOV R7, TOTAL_FATS                    ; move the address of total fats to R9
  MOV R7, [R7]                          ; move the content of the address to R7

  ; CALCULATE CALORIES

  MOV R6, R9                            ; keep a copy of R9 on R6
  MOV R4, 4                             ; move 4 to R4
  MUL R6, R4                            ; multiply the copied value on R6 by 4
  ADD R10, R6                           ; sum to the total of calories

  MOV R6, R8                            ; keep a copy of R8 on R6
  MUL R6, R4                            ; multiply the copied value on R6 by 4
  ADD R10, R6                           ; sum to the total of calories

  MOV R6, R7                            ; keep a copy of R7 on R6
  MOV R4, 9                             ; move 9 to R4
  MUL R6, R4                            ; multiply the copied value of R6 by 9
  ADD R10, R6                           ; sum to the total of calories

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
  ADD R2, 3                             ; position of the character to fill (least significant)
  MOV R3, 0                             ; R3 has got the tota value of filled characters
NextASCIICharacter:
  MOV R4, R1
  MOD R4, R0
  MOV R5, 48                            ; get decimal value to convert to ASCII
  ADD R5, R4                            ; get character to fill display
  MOV R4, R2                            ; get display address
  MOVB [R4], R5                         ; place character on display
  SUB R2, 1                             ; go to next position to fill
  ADD R3, 1                             ; increment number of filled characters
  CMP R3, 4                             ; verify if everything is filled
  JEQ EndASCIIConversion                ; if the above is true, jump
  DIV R1, R0                            ; integer division by 10
  CMP R1, 0
  JNE NextASCIICharacter                ; if the quotient of the division by 10 is not null, go to next character

FillEmptyCharacters:
  MOV R5, EMPTY_CHARACTER
  MOV R4, R2                            ; get address of display
  MOVB [R4], R5                         ; place character on display
  SUB R2, 1                             ; go to next position to fill
  ADD R3, 1                             ; increment number of filled characters
  CMP R3, 4                             ; verify if everything is filled
  JNE FillEmptyCharacters               ; if the above is true, repeat loop

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

  MOV R0, ResetMenu                     ; get menu to display
  CALL drawDisplay                      ; draw display
  MOV R0, OK                            ; get OK input
  MOV R2, TIME_CONSTANT                 ; get timer constant to countdown
  MOV R3, NUMBER_ONE_ASCII              ; send 1 in ASCII format to R3
ResetDataLoop:
  SUB R2, 1                             ; subtract 1 to the timer (to countdown)
  MOVB R1, [R0]                         ; sends OK input value to R1
  CMP R1, R3                            ; checks whether OK is 1 or not
  JZ CancelResetData                    ; if OK is 1, jump to cancel reset data
  CMP R2, 0                             ; otherwise, check if the timer has ran out
  JZ EndResetDataTimer                  ; if the timer is over, jump to reset data
  JMP ResetDataLoop                     ; repeat this loop

CancelResetData:
  MOV R5, 1                             ; 1 is sent to R5 to cancel the data reset
  POP R3
  POP R2
  POP R1
  POP R0
  RET

EndResetDataTimer:
  MOV R5, 0                             ; 0 is sent to keep the intention to reset data
  POP R3
  POP R2
  POP R1
  POP R0
  RET

wipeTotalData:
  PUSH R0
  PUSH R1
  PUSH R2

  MOV R9, 0                             ; wipe protein
  MOV R8, 0                             ; wipe carbohydrates
  MOV R7, 0                             ; wipe fats
  MOV R6, 0                             ; wipe weight input
  MOV R5, 0                             ; wipe aux variable that controls something...

  MOV R0, INIT_CONSUMED_TABLE           ; sends the beginning of the consumed table to R0
  MOV R1, 0DB0H                         ; send 0DB0H to R1
  MOV R2, 0                             ; send 0 to R2
wipeTotalDataLoop:
  MOVB [R0], R2                         ; wipe display
  ADD R0, 1                             ; increment to wipe total data
  CMP R0, R1                            ; compare the line of cells wiped out with the last line of cells
  JNZ wipeTotalDataLoop                 ; if the above is true, repeat loop

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

  MOV R0, InfoOats                      ; first food to be displayed is oats (send to R0)
  MOV R1, DISPLAY_START
  MOV R2, DISPLAY_POSITION_SEVEN
  MOV R3, DISPLAY_END
  MOV R4, changeFoodInfoMenu            ; display menu of 1 line with options to choose food

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
; draw last line of display when on register mode
; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

displayLCTLoop:
  MOV R5, [R4]                          ; place in R5 the line with the menu options
  MOV [R2], R5                          ; place in the LAST line the menu options (from R5)
  ADD R2, 2                             ; go to right
  ADD R4, 2                             ; go to right
  CMP R2, R3                            ; check if we have reached to the end
  JNZ displayLCTLoop                    ; if the above is true, repeat loop
displayFoodTableLoop:
  MOV R2, DISPLAY_POSITION_SEVEN        ; LAST line of the display
  MOV R5, [R0]                          ; get what is on the menu (R0) and sends it to R5
  MOV [R1], R5                          ; place first character on display
  ADD R0, 2                             ; go to next character
  ADD R1, 2                             ; go to next character
  CMP R1, R2                            ; compare to check if we have reached to the end
  JNZ displayFoodTableLoop              ; if the above is true, repeat loop
  JMP displayReadNextPageLoop
displayNextPageLoop:
  MOV R1, DISPLAY_START
  MOV R6, NEXT_PAGE                     ; place on R6 the address of the input peripheral to go to next page
  MOV R7, UNDERSCORE_CHARACTER          ; send _ in ASCII format to R7
  MOVB [R6], R7                         ; place a _ in ASCII format on the value of the address of R7
  JMP displayFoodTable
displayReadNextPageLoop:
  MOV R6, NEXT_PAGE                     ; place on R6 the address of the input peripheral to go to next page
  MOVB R6, [R6]                         ; read the input peripheral value above (NEXT_PAGE)
  MOV R7, NUMBER_ONE_ASCII              ; get 1 in ASCII format
  CMP R6, R7                            ; check if input peripheral is 1
  JZ displayNextPageLoop                ; if the above is true, go to next page
  MOV R7, NUMBER_ZERO_ASCII             ; get 0 in ASCII format
  CMP R6, R7                            ; check if input peripheral is 0
  JZ endChooseFood                      ; if the above is true, it means we have picked the food
  JNE displayReadNextPageLoop           ; otherwise, repeat the loop
endChooseFood:
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
  MOV R1, SEL_NR_MENU                   ; send SEL_NR_MENU input value to R1
  MOVB R1, [R1]
  MOV R2, UNDERSCORE_CHARACTER          ; send _ in ASCII format to R2
  CMP R1, R2                            ; compares SEL value with _
  JZ readSELButton                      ; if the above is 0, it means there is no input
  MOV R0, R1                            ; R0 keeps the SEL input
  POP R2
  POP R1
  RET

readOKButton:
  PUSH R1
  PUSH R2
readOKButtonLoop:
  MOV R1, OK                            ; send OK input value to R1
  MOVB R1, [R1]
  MOV R2, NUMBER_ONE_ASCII              ; send 1 in ASCII format to R2
  CMP R1, R2                            ; compare OK value with 1
  JNE readOKButtonLoop                  ; if the above is true, repeat loop (OK hasn't been pressed)
  POP R2
  POP R1
  RET

readONOFFButton:
  PUSH R1
  MOV R3, ONOFF                         ; send ONOFF input value to R3
  MOVB R3, [R3]
  MOV R1, NUMBER_ZERO_ASCII             ; send 0 in ASCII format to R1
  CMP R3, R1                            ; compare ONOFF value with 0
  JNE doNotTurnOffMachine               ; if the above is true, jump to NOT turn off machine
  MOV R3, 1                             ; R3 has got 1 (control register to shutdown machine)
  POP R1
  RET

doNotTurnOffMachine:
  MOV R3, 0                             ; R3 has got 0 (control register to NOT shutdown machine)
  POP R1
  RET

drawDisplay:
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
  RET

wipeDisplay:
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
  MOV R3, UNDERSCORE_CHARACTER          ; send _ in ASCII format to R3
  MOV R0, SEL_NR_MENU                   ; send SEL input value to R0
  MOVB R1, [R0]
  CMP R1, R3                            ; compare SEL with _
  JZ readFoodChosenLoop                 ; if the above is true, repeat loop
  ADD R0, 1                             ; otherwise, sum 1 to SEL
  MOVB R1, [R0]                         ; send SEL input value to R1
  CMP R1, R3                            ; compare SEL with _
  JZ readFoodChosenLoop                 ; if the above is true, repeat loop
  MOV R0, SEL_NR_MENU                   ; otherwise, send SEL input to R0

  MOV R1, [R0]                          ; send SEL value to R1

  ; the code below is all about checking which food the user picked

  MOV R2, OPTION_OATS                   ; get option for oats
  MOV R10, NAME_OATS                    ; get memory address of oats name
  CMP R1, R2                            ; compare selected value with oats option value
  JZ FoodChoiceDoneINTERMEDIATEJUMP     ; if the above is true, jump to finish selection
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
FoodChoiceDoneINTERMEDIATEJUMP:         ; INTERMEDIATE JUMP DUE TO LIMITATIONS OF PEPE
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
  MOV R0, SEL_NR_MENU                   ; send SEL input value to R0
  MOV R3, DOUBLE_UNDERSCORE_CHARACTER   ; send __ in ASCII format to R3
  MOV [R0], R3                          ; send __ to SEL input value
  JMP readFoodChosenLoop                ; repeat loop waaaay above
FoodChoiceDone:
  POP R3
  POP R2
  POP R1
  POP R0
  RET
