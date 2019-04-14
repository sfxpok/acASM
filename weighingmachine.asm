; peripherals
PWR                         EQU 0A0H    ; start machine
SEL_NR_MENU                 EQU 0B0H    ; selection input
OK                          EQU 0C0H    ; confirmation of the user input
CHANGE                      EQU 0D0H    ; switch selection
PESO                        EQU 0E0H    ; weight input of a food
; display
display_start               EQU 20H     ; memory position to start the display
display_end                 EQU 8FH     ; memory position to shut down the display
