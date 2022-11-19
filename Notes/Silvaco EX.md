## HEMT ex_01
```python
# (c) Silvaco Inc., 2018
go atlas
#
# SECTION 1: Mesh input
#

mesh

x.mesh loc=0.0 spac=0.2
x.mesh loc=0.4 spac=0.2
x.mesh loc=0.9 spac=0.07
x.mesh loc=1.6 spac=0.07
x.mesh loc=2.1 spac=0.2
x.mesh loc=2.5 spac=0.2

y.mesh loc=0.0   spac=0.01
y.mesh loc=0.055 spac=0.001
y.mesh loc=0.058 spac=0.001
y.mesh loc=0.3   spac=0.05

#
# SECTION 2: Structure Specification
#
region     num=1   material=GaAs y.min=0.055
region     num=2  material=AlGaAs y.max=0.055 x.composition=0.3 grad.3=0.002
#
elec       num=1  name=source x.min=0.0 x.max=0.4 y.min=0.0 y.max=0.0
elec       num=2  name=gate   x.min=0.9 x.max=1.6 y.min=0.0 y.max=0.0
elec       num=3  name=drain  x.min=2.1 x.max=2.5 y.min=0.0 y.max=0.0
#
doping     uniform y.max=0.0530 n.type conc=1.e18
doping     uniform y.min=0.0530 n.type conc=1.e14
#
# SECTION 3: Material Models
#
material taun0=1.e-9 taup0=1.e-9 f.conmun=hemtex01_interp.lib
material align=0.6
#
model    bgn fldmob srh
#
contact name=gate workfun=4.87 
#
# SECTION 4: Initial solution
#
solve init
save outf=hemtex01_0.str
tonyplot  hemtex01_0.str -set hemtex01_0.set
#
# SECTION 3: Bias gate
#
method gummel  newton trap itlimit=20 maxtrap=6  
output con.band val.band e.mobility h.mobility
solve vgate=-0.0 vstep=-0.2 name=gate vfinal=-0.6 
#
# SECTION 6: Drain ramp
#
log outf=hemtex01.log master 
solve vdrain=0.05 
solve vdrain=0.10 
solve vdrain=0.125 
solve vdrain=0.15 
solve vdrain=0.20 
solve vdrain=0.30
# 
method  newton trap itlim=20 maxtrap=6 
solve vdrain=0.50  vstep=0.25 name=drain vfinal=5.0
tonyplot hemtex01.log -set hemtex01.set
#
quit

```
### **解读:**


```
# SECTION 1: Mesh input
#
mesh

x.mesh loc=0.0 spac=0.2
x.mesh loc=0.4 spac=0.2
x.mesh loc=0.9 spac=0.07
x.mesh loc=1.6 spac=0.07
x.mesh loc=2.1 spac=0.2
x.mesh loc=2.5 spac=0.2

y.mesh loc=0.0   spac=0.01
y.mesh loc=0.055 spac=0.001
y.mesh loc=0.058 spac=0.001
y.mesh loc=0.3   spac=0.05
```







```python
# SECTION 2: Structure Specification
#
region     num=1   material=GaAs y.min=0.055
region     num=2  material=AlGaAs y.max=0.055 x.composition=0.3 grad.3=0.002
#
elec       num=1  name=source x.min=0.0 x.max=0.4 y.min=0.0 y.max=0.0
elec       num=2  name=gate   x.min=0.9 x.max=1.6 y.min=0.0 y.max=0.0
elec       num=3  name=drain  x.min=2.1 x.max=2.5 y.min=0.0 y.max=0.0
#
doping     uniform y.max=0.0530 n.type conc=1.e18
doping     uniform y.min=0.0530 n.type conc=1.e14
```



`grad.<n>`可以定义异质结材料组分从某一值减到0的渐变，n为12、23、34和41，其中12代表上边界，23代表右边界，34代表下边界，41代表左边界。例子中`grad.3`应该是34的缩写，代表AlGaAs中的Al组分从y=0.055处的0.3线性减少，直到y=0.055+0.002处减为0

```
# SECTION 3: Material Models
#
material taun0=1.e-9 taup0=1.e-9 f.conmun=hemtex01_interp.lib
material align=0.6
#
model    bgn fldmob srh
#
contact name=gate workfun=4.87 
```

