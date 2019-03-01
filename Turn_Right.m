for j=0:17
k = 2; %variable
p = 20; %variable
Q = pi/36; %variable
for t=0:40
    beta=j*Q;
    x1=0;y1=0;z1=k*t/40;
    x2=10*sin(beta);y2=10*cos(beta);z2=0;
    X=5*sin(beta);Y=5*cos(beta);Z=30*cos(pi/10);
    alpha=j*Q;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([45 45])
    pause(0.00001)
end

for t=0:40
    beta=j*Q;
    x1=0;y1=0;z1=k;
    x2=10*sin(beta);y2=10*cos(beta);z2=0;
    X=5*sin(beta);Y=5*cos(beta);Z=30*cos(pi/10);
    alpha=j*Q + Q*t/40;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([45 45])
    pause(0.00001)
end

for t=0:40
    beta=j*Q;
    x1=0;y1=0;z1=k - k*t/40;
    x2=10*sin(beta);y2=10*cos(beta);z2=0;
    X=5*sin(beta);Y=5*cos(beta);Z=30*cos(pi/10);
    alpha=j*Q + Q;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([45 45])
    pause(0.00001)
end

for t=0:40
    beta=j*Q;
    x1=0;y1=0;z1=0;
    x2=10*sin(beta);y2=10*cos(beta);z2=k*t/40;
    X=5*sin(beta);Y=5*cos(beta);Z=30*cos(pi/10);
    alpha=j*Q + Q;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([45 45])
    pause(0.00001)
end

for t=0:40
    beta=j*Q + Q*t/40;
    x1=0;y1=0;z1=0;
    x2=10*sin(beta);y2=10*cos(beta);z2=k;
    X=5*sin(beta);Y=5*cos(beta);Z=30*cos(pi/10);
    alpha=j*Q + Q;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([45 45])
    pause(0.00001)
end

for t=0:40
    beta=j*Q + Q;
    x1=0;y1=0;z1=0;
    x2=10*sin(beta);y2=10*cos(beta);z2=k- k*t/40;
    X=5*sin(beta);Y=5*cos(beta);Z=30*cos(pi/10);
    alpha=j*Q + Q;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid 
    view([45 45])
    pause(0.00001)
end
end