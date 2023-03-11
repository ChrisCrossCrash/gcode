;This G-Code has been generated specifically for the LulzBot Sidekick with a Universal Tool Head

;The following lines can be uncommented for printer specific fine tuning
;More information can be found at https://marlinfw.org/meta/gcode/ (Note: current values are based on SE Tool Head)

;Set Axis Steps-per-unit
;M92 E420
;Set Hotend PID
;M301 P21.0 I1.78 D61.93
;TMC Motor Current
;M906 E960

; absolute coordinate
G90
; set extruder to absolute mode
M82
; set extruder position to 0
G92 E0
; progress indicator message on LCD
M117 Heating...
; start bed heating up
M140 S{material_bed_temperature_layer_0}
; soften filament before homing Z
M109 R{material_soften_temperature}
; Home all axis
G28
; retract filament
G1 E-15 F100
; start extruder heating to probe temp
M104 S{material_probe_temperature}
; wait for bed to reach printing temp
M190 S{material_bed_temperature_layer_0}
; start auto leveling
G29
G0 X0 Y0 F5000
; wait for extruder to reach initial printing temp
M109 R{material_print_temperature_layer_0}
; progress indicator message on LCD
M117 SideKick Printing...
; beep for one second
M300 S1000
; prime tiny bit of filament into the nozzle
G1 Z2 E0 F75