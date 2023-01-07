; Mamadcube Custom Start G-code
M107 ; Turn off cooling fan if active
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
G28 ; Home all axes
M501 ; Load all saved settings from EEPROM
M420 S1 ; Turn on saved bed leveling

M117 Purging Extruder ; Custom purge below so no need to turn on skirt feature
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X-2 Y20 Z0.3 F5000.0 ; Move to start position
G1 X-2 Y180.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X-1 Y180.0 Z0.3 F5000.0 ; Move to side a little
G1 X-1 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

M117 Starting Print
; End of custom start GCode
