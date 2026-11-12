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
T {NFET ft measurement} -550 -400 0 0 0.8 0.8 {}
T {AC simulation.
M1 gate current and
M1 drain current
vs frequency.
ft is at the Xpoint.} 260 -400 0 1 0.3 0.3 {layer=15}
T {ft calculated as
gm / [2π (Cgg + Cgdo + Cgso)]
vs bias current} 260 -120 0 1 0.3 0.3 {layer=15}
T {@spice_get_current} -312.5 -105 0 1 0.2 0.2 {layer=17
name=L2}
T {@name} -305 -158.75 0 0 0.2 0.2 {name=L2}
T {@value} -305 -146.25 0 0 0.2 0.2 {name=L2}
T {m=@m} -305 -133.75 0 0 0.2 0.2 {name=L2}
N -540 -230 -540 200 { lab=GND}
N -540 -230 -390 -230 { lab=GND}
N -390 200 -100 200 { lab=GND}
N -100 40 -100 200 {lab=GND}
N -100 -40 -100 -20 {lab=#net1}
N -390 -230 -390 -190 {lab=GND}
N -390 -130 -390 -110 { lab=G}
N -390 40 -390 200 {lab=GND}
N -310 10 -220 10 {lab=G}
N -310 -30 -310 10 {lab=G}
N -390 -30 -310 -30 {lab=G}
N -390 -30 -390 -20 {lab=G}
N -390 -110 -320 -110 {lab=G}
N -160 -160 -100 -160 {lab=D}
N -100 -160 -100 -100 {lab=D}
N -200 -110 -200 -90 {lab=GND}
N -200 -90 -160 -90 {lab=GND}
N -160 -90 -160 -80 {lab=GND}
N -230 -150 -200 -150 {lab=#net2}
N -230 -150 -230 -110 {lab=#net2}
N -260 -110 -230 -110 {lab=#net2}
N -160 10 -140 10 {lab=#net3}
N -460 10 -390 10 {lab=GND}
N -540 200 -390 200 { lab=GND}
N -350 10 -310 10 {lab=G}
N -390 -110 -390 -30 {lab=G}
N -160 -100 -160 -90 {lab=GND}
N -100 10 -30 10 {lab=GND}
C {devices/isource.sym} -390 -160 0 1 {name=Idref value="dc 3m AC 1 0"}
C {devices/gnd.sym} -100 200 0 0 {name=l1 lab=GND}
C {devices/code.sym} 110 90 0 0 {name=SIMULATION
only_toplevel=false 
value="
.param mc_mm_switch=0
.include nfet_3v3_tb.save
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
  write nfet_3v3_tb.raw
  set appendwrite

  let iref_act = iref_act + delta_iref
  let idx = idx + 1
end

ac dec 10 1k 100G
remzerovec
write nfet_3v3_tb.raw

.endc
.end
"}
C {devices/lab_wire.sym} -310 -30 0 0 {name=l3 sig_type=std_logic lab=G}
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
C {ammeter.sym} -100 -70 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {ammeter.sym} -190 10 3 0 {name=Vg savecurrent=true spice_ignore=0}
C {ind.sym} -290 -110 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor
hide_texts=true
attach=L2}
C {parax_cap.sym} -240 -100 0 0 {name=C1 gnd=GND value=1 m=1}
C {vcvs.sym} -160 -130 0 0 {name=E1 value=1}
C {devices/gnd.sym} -160 -80 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -100 -160 0 0 {name=l6 sig_type=std_logic lab=D}
C {gf180mcu_fd_pr/nfet_03v3.sym} -120 10 0 0 {name=M_DUT
L=0.4u
W=2u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X}
C {gf180mcu_fd_pr/nfet_03v3.sym} -370 10 0 1 {name=M2
L=0.4u
W=2u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -460 10 0 0 {name=p1 sig_type=std_logic lab=GND
}
C {lab_pin.sym} -30 10 0 1 {name=p2 sig_type=std_logic lab=GND
}
C {gf180mcu_fd_pr/annotate_fet_params.sym} -120 60 0 1 {name=annot1 ref=M_DUT}
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
C {gf180mcu_fd_pr/annotate_fet_params.sym} -280 60 0 1 {name=annot2 ref=M2}
