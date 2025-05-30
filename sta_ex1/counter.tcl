read_liberty /home/codespace/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib
read_verilog synth_out.v
link_design up_down_counter
read_sdc counter4bit_updown.sdc
report_checks