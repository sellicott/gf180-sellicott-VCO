v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 870 -800 1670 -400 {flags=graph
y1=0
y2=4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.4734719e-11
x2=4.6927347e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="
0-deg; out_p3b
90-deg; out_p1b
180-deg; out_p3a
270-deg; out_p1a"
color="11 12 13 14"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1670 -800 2470 -400 {flags=graph
y1=-4
y2=4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.4734719e-11
x2=4.6927347e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="
out_p1a_buff
out_p3b_buff
diff out;out_p1a_buff out_p1b_buff -
diff out;out_p3a_buff out_p3b_buff -
"
color="11 13 12 14"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 870 0 1670 400 {flags=graph
y1=0
y2=2e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.4734719e-11
x2=4.6927347e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="
Phase 1 Current; i(vx1)
Phase 3 Current; i(vx3)"
color="11 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 870 -400 1670 0 {flags=graph
y1=0
y2=200m
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.4734719e-11
x2=4.6927347e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="
Phase 1 Tail Voltage; x1.vtail
Phase 3 Tail Voltage; x3.vtail
"
color="11 12"
dataset=-1
unitx=1
logx=0
logy=0
}
N 360 60 450 60 {lab=out_p2a}
N 360 100 450 100 {lab=out_p2b}
N 330 180 490 180 {lab=Vs}
N 430 0 450 0 {lab=#net1}
N 280 20 290 20 {lab=VSS}
N 440 20 450 20 {lab=VSS}
N 520 100 550 100 {lab=out_p1b}
N 490 130 490 180 {lab=Vs}
N 330 130 330 180 {lab=Vs}
N 520 60 550 60 {lab=out_p1a}
N 550 60 590 100 {lab=out_p1a}
N 550 100 590 60 {lab=out_p1b}
N 590 100 590 140 {lab=out_p1a}
N 590 60 610 60 {lab=out_p1b}
N 610 60 610 160 {lab=out_p1b}
N 590 100 630 100 {lab=out_p1a}
N 610 60 630 60 {lab=out_p1b}
N -200 160 -200 180 {lab=0}
N -260 160 -260 180 {lab=0}
N -240 180 -200 180 {lab=0}
N -260 60 -260 100 {lab=VDD}
N -200 60 -200 100 {lab=Vs}
N -240 180 -240 200 {lab=0}
N -260 180 -240 180 {lab=0}
N -320 160 -320 180 {lab=0}
N -320 180 -260 180 {lab=0}
N -320 60 -320 100 {lab=VSS}
N 220 180 330 180 {lab=Vs}
N 50 310 140 310 {lab=out_p3a}
N 50 350 140 350 {lab=out_p3b}
N 120 250 140 250 {lab=VDD}
N 120 210 120 250 {lab=VDD}
N 130 270 140 270 {lab=VSS}
N 130 230 130 270 {lab=VSS}
N 70 230 130 230 {lab=VSS}
N 460 250 480 250 {lab=VDD}
N 460 210 460 250 {lab=VDD}
N 470 270 480 270 {lab=VSS}
N 470 230 470 270 {lab=VSS}
N 70 210 120 210 {lab=VDD}
N 130 230 470 230 {lab=VSS}
N 120 210 460 210 {lab=VDD}
N 420 310 480 310 {lab=out_p1a}
N 420 350 480 350 {lab=out_p1b}
N 210 310 300 310 {lab=out_p3a_buff}
N 210 350 300 350 {lab=out_p3b_buff}
N 550 310 640 310 {lab=out_p1a_buff}
N 550 350 640 350 {lab=out_p1b_buff}
N 280 -100 280 20 {lab=VSS}
N 440 -100 440 20 {lab=VSS}
N 270 0 290 0 {lab=#net2}
N 270 -20 270 -0 {lab=#net2}
N 270 -120 270 -80 {lab=VDD}
N 270 -120 430 -120 {lab=VDD}
N 280 -100 440 -100 {lab=VSS}
N 430 -20 430 -0 {lab=#net1}
N 430 -120 430 -80 {lab=VDD}
N 260 140 590 140 {lab=out_p1a}
N 240 160 610 160 {lab=out_p1b}
N 200 60 290 60 {lab=out_p3a}
N 200 100 290 100 {lab=out_p3b}
N 120 20 130 20 {lab=VSS}
N 170 130 170 180 {lab=Vs}
N 120 -100 120 20 {lab=VSS}
N 110 0 130 0 {lab=#net3}
N 110 -20 110 0 {lab=#net3}
N 110 -120 110 -80 {lab=VDD}
N 50 180 170 180 {lab=Vs}
N 120 -100 280 -100 {lab=VSS}
N 110 -120 270 -120 {lab=VDD}
N -40 20 -30 20 {lab=VSS}
N 10 130 10 180 {lab=Vs}
N -40 -100 -40 20 {lab=VSS}
N -110 -100 -40 -100 {lab=VSS}
N -50 0 -30 0 {lab=#net4}
N -50 -20 -50 0 {lab=#net4}
N -50 -120 -50 -80 {lab=VDD}
N -110 -120 -50 -120 {lab=VDD}
N -80 60 -30 60 {lab=out_p1b}
N -60 100 -30 100 {lab=out_p1a}
N -110 180 10 180 {lab=Vs}
N -40 -100 120 -100 {lab=VSS}
N -50 -120 110 -120 {lab=VDD}
N 40 60 130 60 {lab=out_p4a}
N 40 100 130 100 {lab=out_p4b}
N 170 180 220 180 {lab=Vs}
N 10 180 50 180 {lab=Vs}
N -80 160 240 160 {lab=out_p1b}
N -80 60 -80 160 {lab=out_p1b}
N -60 140 260 140 {lab=out_p1a}
N -60 100 -60 140 {lab=out_p1a}
C {lab_wire.sym} -110 -120 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -110 -100 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -110 180 0 1 {name=p3 sig_type=std_logic lab=Vs}
C {vsource.sym} -260 130 0 0 {name=V1 value=3.3 savecurrent=true}
C {vsource.sym} -200 130 0 0 {name=V2 value=1.8 savecurrent=true}
C {lab_wire.sym} -260 60 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -200 60 0 1 {name=p5 sig_type=std_logic lab=Vs}
C {lab_wire.sym} -320 60 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} -240 200 0 0 {name=l1 lab=0}
C {vsource.sym} -320 130 0 0 {name=V3 value=0 savecurrent=true}
C {lab_wire.sym} 630 100 0 1 {name=p7 sig_type=std_logic lab=out_p1a}
C {lab_wire.sym} 630 60 0 1 {name=p8 sig_type=std_logic lab=out_p1b}
C {lab_wire.sym} 380 60 0 1 {name=p9 sig_type=std_logic lab=out_p2a
}
C {lab_wire.sym} 370 100 0 1 {name=p10 sig_type=std_logic lab=out_p2b}
C {devices/code.sym} -550 -90 0 0 {name=NGSPICE
only_toplevel=false
value="
.include delay_cell_tb.save
.option savecurrents method=gear
.save all
.control
  tran 0.01n 10n
  remzerovec
  write delay_cell_tb.raw
.endc
" }
C {devices/launcher.sym} 1780 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/delay_cell_tb.raw tran"
}
C {lab_wire.sym} 50 310 0 1 {name=p16 sig_type=std_logic lab=out_p3a
}
C {lab_wire.sym} 50 350 0 1 {name=p17 sig_type=std_logic lab=out_p3b}
C {lab_wire.sym} 70 210 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 70 230 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 310 0 1 {name=p21 sig_type=std_logic lab=out_p1a}
C {lab_wire.sym} 420 350 0 1 {name=p22 sig_type=std_logic lab=out_p1b}
C {lab_wire.sym} 300 310 0 0 {name=p23 sig_type=std_logic lab=out_p3a_buff}
C {lab_wire.sym} 300 350 0 0 {name=p24 sig_type=std_logic lab=out_p3b_buff}
C {lab_wire.sym} 640 350 0 0 {name=p25 sig_type=std_logic lab=out_p1b_buff}
C {lab_wire.sym} 640 310 0 0 {name=p26 sig_type=std_logic lab=out_p1a_buff}
C {ammeter.sym} 430 -50 0 0 {name=Vx1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 270 -50 0 0 {name=Vx2 savecurrent=true spice_ignore=0}
C {devices/code.sym} -550 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {xschem/delay_cell_v1.sym} 570 -40 0 0 {name=X1}
C {xschem/delay_cell_v1.sym} 410 -40 0 0 {name=X2}
C {xschem/diff_buffer.sym} 260 210 0 0 {name=X5}
C {devices/launcher.sym} 1780 -300 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1780 -260 0 0 {name=h3
descr="Generate .save lines"
tclcommand="write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
textwindow $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
"
}
C {lab_wire.sym} 220 60 0 1 {mame=p11 sig_type=std_logic lab=out_p3a
}
C {lab_wire.sym} 210 100 0 1 {name=p12 sig_type=std_logic lab=out_p3b}
C {ammeter.sym} 110 -50 0 0 {name=Vx3 savecurrent=true spice_ignore=0}
C {xschem/delay_cell_v1.sym} 250 -40 0 0 {name=X3}
C {lab_wire.sym} 60 60 0 1 {mame=p11 sig_type=std_logic lab=out_p4a
}
C {lab_wire.sym} 50 100 0 1 {name=p11 sig_type=std_logic lab=out_p4b}
C {ammeter.sym} -50 -50 0 0 {name=Vx4 savecurrent=true spice_ignore=0}
C {xschem/delay_cell_v1.sym} 90 -40 0 0 {name=X4}
C {xschem/diff_buffer.sym} 600 210 0 0 {name=X6}
