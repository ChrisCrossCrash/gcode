;This G-Code has been generated specifically for the LulzBot Sidekick with a Universal Tool Head

; wait for moves to finish
M400
; disable hotend
M104 S0
; disable fans
M107
; set extruder to 5mm for retract on print end
G92 E5
; progress indicator message on LCD
M117 Finishing...
; move to present position immediately
G1 Y-10 Z251.3 E0 F3000
; re-prime extruder
G1 E5
; present finished print immediately
G27
; beep for one second
M300 S1000
; End GLCD Print Timer
M77
; absolute positioning
G90
; turn off x and e axis
M18 X E
; print complete message
M117 Print Complete.
