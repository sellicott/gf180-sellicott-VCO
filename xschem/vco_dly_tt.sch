v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 100 -220 140 {lab=GND}
N 120 70 300 70 {lab=in_n}
N 220 100 220 140 {lab=GND}
N -300 70 -120 70 {lab=in_p}
N 0 -180 0 -140 {lab=#net1}
N -90 -210 -40 -210 {lab=bias}
N -220 -0 -220 40 {lab=out_n}
N -300 -0 -220 -0 {lab=out_n}
N -180 -70 -80 -70 {lab=out_p}
N -80 -70 -80 40 {lab=out_p}
N -220 -0 -120 -0 {lab=out_n}
N -220 -140 -220 -100 {lab=#net1}
N -220 -140 0 -140 {lab=#net1}
N 220 -0 220 40 {lab=out_p}
N 220 -0 300 0 {lab=out_p}
N 80 -70 80 40 {lab=out_n}
N 80 -70 180 -70 {lab=out_n}
N 220 -140 220 -100 {lab=#net1}
N 0 -140 220 -140 {lab=#net1}
N 110 0 220 0 {lab=out_p}
N -20 -70 110 0 {lab=out_p}
N -80 -70 -20 -70 {lab=out_p}
N -120 -0 20 -70 {lab=out_n}
N 20 -70 80 -70 {lab=out_n}
N -0 -280 0 -240 {lab=VDD}
N -220 -40 -220 -0 {lab=out_n}
N 220 -40 220 -0 {lab=out_p}
N -80 120 80 120 {lab=VDD}
N -260 140 -220 140 {lab=GND}
N -280 -280 0 -280 {lab=VDD}
N -80 100 -80 120 {lab=VDD}
N 80 100 80 120 {lab=VDD}
N -220 140 220 140 {lab=GND}
C {gf180mcu_fd_pr/nfet3_03v3.sym} -240 70 0 0 {name=M1
L=0.28u
W=1u
body=GND
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet3_03v3.sym} -100 70 0 0 {name=M2
L=0.28u
W=1u
body=GND
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet3_03v3.sym} 240 70 0 1 {name=M3
L=0.28u
W=1u
body=GND
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet3_03v3.sym} 100 70 0 1 {name=M4
L=0.28u
W=1u
body=GND
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet3_03v3.sym} 200 -70 0 0 {name=M6
L=0.28u
W=3.0u
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
C {gf180mcu_fd_pr/pfet3_03v3.sym} -200 -70 0 1 {name=M5
L=0.28u
W=3.0u
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
C {gf180mcu_fd_pr/pfet3_03v3.sym} -20 -210 0 0 {name=M7
L=0.5u
W=10.0u
body=VDD
nf=2
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
C {devices/opin.sym} 300 0 0 0 {name=p3 lab=out_p sim_pinnumber=5}
C {devices/opin.sym} -300 0 2 0 {name=p4 lab=out_n sim_pinnumber=6}
C {devices/ipin.sym} -300 70 0 0 {name=p11 lab=in_p sim_pinnumber=3
}
C {devices/ipin.sym} 300 70 2 0 {name=p5 lab=in_n sim_pinnumber=4
}
C {devices/ipin.sym} -90 -210 0 0 {name=p6 lab=bias sim_pinnumber=7
}
C {devices/title.sym} -570 270 0 0 {name=l1 author="Sylvain Munaut"}
C {ipin.sym} -280 -280 0 0 {name=p7 lab=VDD}
C {ipin.sym} -260 140 2 1 {name=p8 lab=GND}
C {lab_wire.sym} 15 120 0 0 {name=p1 sig_type=std_logic lab=VDD}
