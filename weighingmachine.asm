; peripherals
PWR                         EQU 0A0H    ; start machine
SEL_NR_MENU                 EQU 0B0H    ; selection input
OK                          EQU 0C0H    ; confirmation of the user input
CHANGE                      EQU 0D0H    ; switch selection
PESO                        EQU 0E0H    ; weight input of a food
; display
DISPLAY_START               EQU 20H     ; memory position to start the display
DISPLAY_END                 EQU 8FH     ; memory position to shut down the display
; display menus
PLACE 2000H

InitMenu:
  STRING "    WMachine    "
  STRING "                "
  STRING "1: Balanca      "
  STRING "2: Registo      "
  STRING "3: Visualizacao "
  STRING "                "
  STRING "                "
ExceptionMenu:
  STRING "                "
  STRING "                "
  STRING "Houve uma       "
  STRING "excepcao        "
  STRING "                "
  STRING "                "
  STRING "                "
