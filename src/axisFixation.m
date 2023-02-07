%Make a rotation matrix

%specified the angle 
theta=pi/4;

%Typical Rotation matrix for x-axis as fixed

Rx=[1 0 0;0 cos(theta) -sin(theta);0 sin(theta) cos(theta)];

%Typical Rotation matrix for y-axis as fixed

Ry=[cos(theta) 0 sin(theta);0 1 0 ; -sin(theta) 0 cos(theta)];

%Typical Rotation matrix for z-axis as fixed

Rz=[cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0;0 0 1];

%Declaration of matrices for different uses
R=Rx;
R1=Ry;
R2=Rz;

%---------Plotting---------

%X-axis fixed
figure
line([0,R(1,1)],[0,R(2,1)],[0,R(3,1)],'Linewidth',[1.5],'Color','r')
line([0,R(1,2)],[0,R(2,2)],[0,R(3,2)],'Linewidth',[1.5],'Color','g')
line([0,R(1,3)],[0,R(2,3)],[0,R(3,3)],'Linewidth',[1.5],'Color','b')
axis([-3 3 -3 3]);

%Y-axis fixed

%Figure-2 for another graph.
figure

line([0,R1(1,1)],[0,R1(2,1)],[0,R1(3,1)],'Linewidth',[1.5],'Color','r')
line([0,R1(1,2)],[0,R1(2,2)],[0,R1(3,2)],'Linewidth',[1.5],'Color','g')
line([0,R1(1,3)],[0,R1(2,3)],[0,R1(3,3)],'Linewidth',[1.5],'Color','b')
axis([-3 3 -3 3]);

%Z-axis fixed

%Figure-3 for another graph(z-axis).

figure

line([0,R2(1,1)],[0,R2(2,1)],[0,R2(3,1)],'Linewidth',[1.5],'Color','r')
line([0,R2(1,2)],[0,R2(2,2)],[0,R2(3,2)],'Linewidth',[1.5],'Color','g')
line([0,R2(1,3)],[0,R2(2,3)],[0,R2(3,3)],'Linewidth',[1.5],'Color','b')
axis([-3 3 -3 3]);


