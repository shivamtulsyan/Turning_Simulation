function [ M ] = Full_Transformation( X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta)
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
M = zeros(4,22);
a=0;%AngleA(y1, Z, z1); 
b=AngleB(x1, Z, x1, z1);
c=AngleC(x1, Z, x1, z1);
p=0;%AngleA(y2, Z, z2);
q=AngleB(x2, Z, x2, z2);
r=AngleC(x2, Z, x2, z2);
Foot1 = [x1;y1;z1;1];
Knee1 = Foot1 + RotZ(-alpha)*RotX(a)*RotY(b)*TransZ(15);
Hip1 = Foot1 + TransZ(Z-Foot1(3));
Pelvis1 = Hip1 + TransZ(1);
Com = [X;Y;Z+1;1];
Foot2 = [x2;y2;z2;1];
Knee2 = Foot2 + RotZ(-beta)*RotX(p)*RotY(q)*TransZ(15);
Hip2 = Foot2 + TransZ(Z-Foot2(3));
Pelvis2 = Hip2 + TransZ(1);
Neck = Com + TransZ(20);
Head = Neck + TransZ(5);
Shoulder1 = Pelvis1 + TransZ(20);
Shoulder2 = Pelvis2 + TransZ(20);
Hand1 = [Hip1(1);Pelvis1(2);Z+1+20-10;1];
Hand2 = [Hip2(1);Pelvis2(2);Z+1+20-10;1];

M(:,1) = Head;
M(:,2) = Neck;
M(:,3) = Shoulder1;
M(:,4) = Hand1;
M(:,5) = Shoulder1;
M(:,6) = Shoulder2;
M(:,7) = Hand2;
M(:,8) = Shoulder2;
M(:,9) = Neck;
M(:,10)= Com;
M(:,11)= Pelvis1;
M(:,12)= Hip1;
M(:,13)= Knee1;
M(:,14)= Foot1;
M(:,15)= Knee1;
M(:,16)= Hip1;
M(:,17)= Pelvis1;
M(:,18)= Com;
M(:,19)= Pelvis2;
M(:,20)= Hip2;
M(:,21)= Knee2;
M(:,22)= Foot2;
end

