%-----------Finding determinant of matrices---------. 

xDet=det(R1);

yDet=det(R);

zDet=det(R2);

fprintf("As %d = %d we see the property of rotation matrix satisfied! \n",zDet,yDet);

%---------------Testing For the Dot product of the matrices-------


dot(R(:,1),R(:,2));

dot(R(:,2),R(:,3));

dot(R(:,3),R(:,1));




%---------------Testing For the Cross product of the matrices-------


cross(R(:,1),R(:,2));

cross(R(:,2),R(:,3));

cross(R(:,3),R(:,1));

%---------------Testing For the Commutative Property of the matrices-------

com=R*R1;

com2=R1*R2;

com3=R2*R;

%---------Testing the commutative to be true!----

if com(:,1).*com(:,2)==com(:,2).*com(:,3)
    fprintf("The comutative property for %d is proved \n",com)
else
             fprintf("For the given matrix:\n");
             fprintf(" %g %g %g \n",com);
            fprintf("Not commutative so its a rotation matrix !!!\n")
end


if (com(:,1).*com(:,2)).*com(:,3)==com(:,1).*(com(:,2).*com(:,3))
    fprintf("For the given matrix:\n");
    fprintf(" %g %g %g \n",com);
    fprintf("The Associative property  is proved" );
        else
            fprintf("Not Associative")
end
%Represent The actual position of a Robotic finger on a given point! using
%refrences of fixed and mobile axeses!

p=[1;1;1];
p1=com*p;
p2=com2*p;
p3=com3*p;
figure
line([0,p1(1,1)],[0,p2(1,1)],[0,p3(1,1)],'Linewidth',[1],'Color','r');
line([p1(1,1),p1(2,1)],[p2(1,1),p2(2,1)],[p3(1,1),p3(2,1)],'Linewidth',[1.5],'Color','g');
line([p1(2,1),p1(3,1)],[p2(2,1),p2(3,1)],[p3(2,1),p3(3,1)],'Linewidth',[2],'Color','b');
axis([-3 3 -3 3]);
