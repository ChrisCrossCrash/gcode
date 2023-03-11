;This G-Code has been generated specifically for the LulzBot Sidekick with a Universal Tool Head

; wait for moves to finish
M400
; start bed cooling
M140 S{material_part_removal_temperature}
; disable hotend
M104 S0
; disable fans
M107
; set extruder to 5mm for retract on print end
G92 E5
; progress indicator message on LCD
M117 Cooling please wait
; move to cooling position
G1 Y-10 Z251.3 E0 F3000
; re-prime extruder
G1 E5
; wait for bed to cool down to removal temp
M190 R{material_part_removal_temperature}
; present finished print
G27
; beep for one second
M300 S1000
; keep temperature or cool down
M140 S{material_keep_part_removal_temperature_t}
; End GLCD Print Timer
M77
; absolute positioning
G90
; turn off x and e axis
M18 X E
; print complete message
M117 Print Complete.