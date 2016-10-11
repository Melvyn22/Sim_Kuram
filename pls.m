clear all;
close all;
clc;
t=0:0.01:1000.01;
a=load("theta");
%f1=load("theta_flow1");
%f2=load("theta_flow2");
figure 
plot(t,a,'b');
%figure
%plot(t,f1);
%figure
%plot(t,f2);
%hold on;
%plot(a(:,2),'r');
%hold on;
figure
plot(a(:,1)+a(:,2));
hold on;
plot(a(:,1)-a(:,2));
for t=1:10000
for i=1:18
	if(i!=18)
		flowsa(t,i)=10.0*sin(a(t,i)-a(t,i+1));
%		flows1(t,i)=10.0*sin(f1(t,i)-f1(t,i+1));
%		flows2(t,i)=10.0*sin(f2(t,i)-f2(t,i+1));
		
	else
		flowsa(t,i)=10.0*sin(a(t,i)-a(t,1));
%		flows1(t,i)=10.0*sin(f1(t,i)-f1(t,1));
	
%		flows2(t,i)=10.0*sin(f2(t,i)-f2(t,1));
	end
%	flows_diff(t,i)=flows1(t,i)-flows2(t,i);

end
end
%figure
%plot(flows1,'b')
figure
plot(flowsa(:,1)-flowsa(:,2))
hold on
plot(flowsa(:,1),'r')
plot(flowsa(:,2),'g')

%figure
%plot(flows1(:,1))
%figure
%plot(flows2(:,1))
%figure
%plot(flows1(:,8))
%figure
%plot(flows2(:,8))
%figure
%plot(flows_diff(:,3));
