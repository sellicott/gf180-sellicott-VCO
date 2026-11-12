v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 270 -130 700 130 {flags=graph,private_cursor
y1=0.5e+10
y2=6.5e+10
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5m
divx=5
subdivx=1
node=ft
color=4
dataset=0
unitx=1
autoload=1
sim_type=op
cursor2_x=0.003
cursor1_x=0.003}
B 2 270 -400 700 -140 {flags=graph,private_cursor
y1=2e-07
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=11
divx=5
subdivx=8
dataset=0
unitx=1
autoload=1
sim_type=ac
color="7 8"
node="i(vg)
i(vd)"
logx=1
cursor2_x=6.3123e+10
cursor1_x=6.3123e+10
hilight_wave=-1}
T {PFET ft measurement} -550 -400 0 0 0.8 0.8 {}
T {AC simulation.
M1 gate current and
M1 drain current
vs frequency.
ft is at the Xpoint.} 260 -400 0 1 0.3 0.3 {layer=15}
T {ft calculated as
gm / [2π (Cgg + Cgdo + Cgso)]
vs bias current} 260 -120 0 1 0.3 0.3 {layer=15}
T {@spice_get_current} -322.5 15 0 1 0.2 0.2 {layer=17
name=L2}
T {@name} -315 -38.75 0 0 0.2 0.2 {name=L2}
T {@value} -315 -26.25 0 0 0.2 0.2 {name=L2}
T {m=@m} -315 -13.75 0 0 0.2 0.2 {name=L2}
N -60 -100 -60 -80 {lab=#net1}
N -400 10 -330 10 {lab=G}
N -60 -20 -60 40 {lab=D}
N -270 10 -210 10 {lab=#net2}
N -190 20 -190 40 {lab=D}
N -320 -130 -320 -90 {lab=G}
N -400 -90 -320 -90 {lab=G}
N -400 -100 -400 -90 {lab=G}
N -360 -130 -320 -130 {lab=G}
N -320 -130 -170 -130 {lab=G}
N -400 10 -400 40 {lab=G}
N -400 -200 -400 -160 {lab=GND}
N -190 -200 -60 -200 {lab=GND}
N -60 -200 -60 -160 {lab=GND}
N -250 -200 -250 -30 {lab=GND}
N -530 -200 -400 -200 {lab=GND}
N -190 40 -60 40 {lab=D}
N -250 -30 -230 -30 {lab=GND}
N -190 -200 -190 -40 {lab=GND}
N -400 -90 -400 10 {lab=G}
N -400 -200 -250 -200 {lab=GND}
N -250 -200 -190 -200 {lab=GND}
N -110 -130 -100 -130 {lab=#net3}
N -570 -200 -530 -200 {lab=GND}
N -400 100 -400 140 {lab=GND}
N -510 140 -400 140 {lab=GND}
N -510 -200 -510 140 {lab=GND}
C {devices/isource.sym} -400 70 0 1 {name=Idref value="dc 3m AC 1 0"}
C {devices/gnd.sym} -570 -200 0 0 {name=l1 lab=GND}
C {devices/code.sym} 110 90 0 0 {name=SIMULATION
only_toplevel=false 
value="
.param mc_mm_switch=0
.include pfet_3v3_tb.save
.options filetype=ascii
* .option savecurrents 
.save all
.control
* dc Idref 0.1e-3 10e-3 0.1e-3
let n_idx = 59
let start_iref = 0.1e-3
let stop_iref = 6e-3
let delta_iref = (stop_iref - start_iref) / n_idx
let iref_act = start_iref
let idx = 0
*loop
while iref_act le stop_iref
  alter idref iref_act
  op
  let gm = @m.xm_dut.m0[gm]
  let ids = @m.xm_dut.m0[id]
  let cgg =  @m.xm_dut.m0[cgg]
  let cgso =  @m.xm_dut.m0[cgso]
  let cgdo =  @m.xm_dut.m0[cgdo]
  let ft = gm/(2*pi*(cgg + cgso + cgdo))
  
  setscale iref_act
  settype current iref_act
  write pfet_3v3_tb.raw
  set appendwrite

  let iref_act = iref_act + delta_iref
  let idx = idx + 1
end

ac dec 10 1k 100G
remzerovec
write pfet_3v3_tb.raw

.endc
.end
"}
C {devices/title.sym} -380 300 0 0 { name=l4 author="Rafael Marinho (Modified by Samuel Ellicott)"}
C {devices/launcher.sym} 325 205 0 0 {name=h4 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/launcher.sym} 330 240 0 0 {name=h3
descr="Generate .save lines"
tclcommand="write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
textwindow $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
"
}
C {ammeter.sym} -60 -50 0 1 {name=Vd savecurrent=true spice_ignore=0}
C {ammeter.sym} -140 -130 3 0 {name=Vg savecurrent=true spice_ignore=0}
C {ind.sym} -300 10 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor
hide_texts=true
attach=L2}
C {parax_cap.sym} -250 20 0 0 {name=C1 gnd=GND value=1 m=1}
C {vcvs.sym} -190 -10 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} -60 40 2 1 {name=l6 sig_type=std_logic lab=D}
C {gf180mcu_fd_pr/annotate_fet_params.sym} -60 120 0 1 {name=annot1 ref=M_DUT}
C {devices/code.sym} -30 90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/launcher.sym} 320 170 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {gf180mcu_fd_pr/annotate_fet_params.sym} -290 120 0 1 {name=annot2 ref=M1}
C {gf180mcu_fd_pr/pfet3_03v3.sym} -80 -130 0 0 {name=M_DUT
L=0.28u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet3_03v3.sym} -380 -130 0 1 {name=M1
L=0.28u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} -320 -90 2 1 {name=l5 sig_type=std_logic lab=G}
