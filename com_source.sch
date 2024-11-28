v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -210 80 590 480 {flags=graph
y1=0
y2=3.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=500000
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/com_source.raw
sim_type=dc
autoload=1

color="4 7"
node="in
out_cs"}
B 2 -210 490 590 890 {flags=graph
y1=1.6e-13
y2=0.00034
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=500000
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/com_source.raw
sim_type=dc
autoload=1


color="7 10"
node="@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
@m.xm2.msky130_fd_pr__nfet_01v8_lvt[gds]"}
B 2 610 80 1410 480 {flags=graph
y1=25
y2=31
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5.69897
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"out_cs db20()\\"
\\"out_cg db20()\\""
color="4 10"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/com_source.raw
sim_type=ac
autoload=1}
N -40 -150 -40 -110 {lab=vgp}
N -40 -50 -40 0 {lab=GND}
N 0 -180 50 -180 {lab=vgp}
N 30 -180 30 -130 {lab=vgp}
N -40 -130 30 -130 {lab=vgp}
N 110 -240 110 -210 {lab=#net1}
N -40 -240 90 -240 {lab=#net1}
N -40 -240 -40 -210 {lab=#net1}
N -200 -240 -40 -240 {lab=#net1}
N -200 -240 -200 -200 {lab=#net1}
N -200 -140 -200 -110 {lab=GND}
N 110 -20 110 0 {lab=GND}
N -70 -180 -40 -180 {lab=#net1}
N -70 -240 -70 -180 {lab=#net1}
N 110 -180 130 -180 {lab=#net1}
N 130 -240 130 -180 {lab=#net1}
N 110 -240 130 -240 {lab=#net1}
N 90 -240 110 -240 {lab=#net1}
N 50 -180 70 -180 {lab=vgp}
N 110 -150 110 -110 {lab=out_cs}
N 20 -80 70 -80 {lab=in}
N 110 -80 130 -80 {lab=GND}
N 130 -80 130 -50 {lab=GND}
N 110 -50 130 -50 {lab=GND}
N 110 -50 110 -20 {lab=GND}
N 20 -20 20 0 {lab=GND}
N 240 -130 240 -120 {lab=out_cs}
N 110 -130 240 -130 {lab=out_cs}
N 240 -60 240 -0 {lab=GND}
N 280 -180 330 -180 {lab=vgp}
N 390 -240 390 -210 {lab=#net1}
N 390 -180 410 -180 {lab=#net1}
N 410 -240 410 -180 {lab=#net1}
N 390 -240 410 -240 {lab=#net1}
N 370 -240 390 -240 {lab=#net1}
N 330 -180 350 -180 {lab=vgp}
N 390 -150 390 -110 {lab=out_cg}
N 300 -80 350 -80 {lab=vgn}
N 390 -80 410 -80 {lab=#net2}
N 410 -80 410 -50 {lab=#net2}
N 390 -50 410 -50 {lab=#net2}
N 300 -20 300 0 {lab=GND}
N 520 -130 520 -120 {lab=out_cg}
N 390 -130 520 -130 {lab=out_cg}
N 520 -60 520 0 {lab=GND}
N 130 -240 370 -240 {lab=#net1}
N 390 30 390 40 {lab=GND}
N 390 -40 390 -30 {lab=#net2}
N 390 -50 390 -40 {lab=#net2}
C {devices/isource.sym} -40 -80 0 0 {name=I0 value=10e-6}
C {devices/vsource.sym} -200 -170 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} -40 0 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 110 0 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -200 -110 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 20 -50 0 0 {name=V2 value="dc 0.7797 ac 1 0" savecurrent=false}
C {devices/gnd.sym} 20 0 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 110 -130 0 1 {name=p1 sig_type=std_logic lab=out_cs
}
C {devices/lab_pin.sym} 50 -80 1 0 {name=p2 sig_type=std_logic lab=in}
C {devices/code.sym} -220 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -700 -240 0 0 {name=COMANDOS only_toplevel=false value="
.control
save all
save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[gds]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
op
write com_source.raw
set appendwrite
dc v2 0 3 1m
write com_source.raw
set appendwrite
ac dec 100 1 5e5
*plot mag(out)
write com_source.raw
set appendwrite
*wrdata tb_FVF.txt
.endc
"}
C {devices/launcher.sym} -620 90 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 90 -180 0 0 {name=M1
L=1
W=1
nf=10
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} -20 -180 0 1 {name=M3
L=1
W=1
nf=10
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 90 -80 0 0 {name=M2
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 50 -180 1 0 {name=p3 sig_type=std_logic lab=vgp}
C {devices/gnd.sym} 240 0 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 240 -90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 390 40 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 300 -50 0 0 {name=V3 value="dc 0.7797" savecurrent=false}
C {devices/gnd.sym} 300 0 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 390 -130 0 1 {name=p4 sig_type=std_logic lab=out_cg
}
C {devices/lab_pin.sym} 330 -80 1 0 {name=p5 sig_type=std_logic lab=vgn}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 370 -180 0 0 {name=M4
L=1
W=1
nf=10
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 370 -80 0 0 {name=M5
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 330 -180 1 0 {name=p6 sig_type=std_logic lab=vgp}
C {devices/gnd.sym} 520 0 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 520 -90 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 390 0 0 0 {name=V4 value="ac 1 0" savecurrent=false}
