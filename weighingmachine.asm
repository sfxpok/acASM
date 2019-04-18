; peripherals
PWR                         EQU 0A0H    ; start machine
SEL_NR_MENU                 EQU 0B0H    ; selection input
OK                          EQU 0C0H    ; confirmation of the user input
CHANGE                      EQU 0D0H    ; switch selection
PESO                        EQU 0E0H    ; weight input of a food
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
  MOV R0, InitMenu
  JMP R0

;roundGrams:
;checkIfFoodIsSelected:
;checkIfAboveMaxWeight:
;calculateCalories:
;wipeDisplay:
