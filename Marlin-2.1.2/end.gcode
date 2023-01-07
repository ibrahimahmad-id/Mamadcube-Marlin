; Mamadcube Custom End G-code
G4 ; Wait
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F1800 E-3 ; Retract filament 3 mm to prevent oozing
G1 F3000 Z20 ; Move Z Axis up 20 mm to allow filament ooze freely
G90 ; Set coordinates to absolute
G1 X100 Y200 F1000 ; Move print head to back for print removal
M106 S0 ; Turn off cooling fan
M104 S0 ; Turn off extruder
M140 S0 ; Turn off bed
M107 ; Turn off cooling fan
M117 Print Finished
G1 Z240 ; Move bed to lowest point for print removal
; End of custom end GCode
