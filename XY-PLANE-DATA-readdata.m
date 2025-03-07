clc
clear all
load('UPUSsnapshot1.mat')
%load('UPUSsnapshot2.mat')
%load('UPUSsnapshot3.mat')
xx=0:0.05:5;
zz=0:0.05:3.2;
NX=length(xx);
NZ=length(zz);
U01=reshape(UPUSsnapshot1(1:NX*NZ,1),NX,NZ);%for UP
%U01=reshape(UPUSsnapshot1(1:NX*NZ,2),NX,NZ);%for US
[zz,xx]=meshgrid(zz,xx);
XX2=0:0.01:5;
YY2=0:0.01:3.2;
[zz2,xx2]=meshgrid(YY2,XX2);
PW1=interp2(zz,xx,U01,zz2,xx2,'spline');
S1=PW1./max(max(PW1));
mesh(xx2,zz2,S1)
temp1=caxis;
view([0 90])
axis equal
axis([0 5 1.6 3.2])
xlabel('\itx \rm(mm)')
ylabel('\ity \rm(mm)')
