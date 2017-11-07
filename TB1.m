function x = TB1()
%%4 
%     x = zeros(60,1)
%     x(1) = 3
%     x(2) = 1
%     
% for n = 3:60
%     x(n) = 7/3*x(n-1) -2/3*x(n-2)
% end

%%5
% for n = 1:20
% 
% h(n) = 10^-n;
% der(n) = (exp(1+h(n))-exp(1))/h(n);
% fel(n) = abs(der(n) - exp(1));
% 
% end
% 
% loglog(h,fel);
% 
% t1(1) = 1/(3^(1/2));
% t2(1) = t1(1);
% for n = 2:100
%     
%     t1(n) = t1(n-1)/((t1(n-1)^2+1)^(1/2)+1);
%     t2(n) = ((t2(n-1)^2+1)^(1/2)-1)/(t2(n-1));
%     fel1(n) = abs(t1(n)*3*2^n - pi);
%     fel2(n) = abs(t2(n)*3*2^n - pi);
% end
% loglog(1:100,fel1);
% hold on
% loglog(1:100,fel2);
% legend('rootdown','rootup');


% Då sidlängden går mot noll kommer t^2 att bli 0 först. Den första
% strategin med roten i nämnaren kommer helt enkelt att bli t(n+1) = t(n)/2
% och därmed stabilisera sakta och därför kunna mata på även då t^2 = 0.
% medan den med roten ur i täljaren får först att t^2 = 0 vilket get t(n) =
% 0 vilket genererar t(n) = 0/0 direkt t^2 är lika med 0. därför
% är det bättre med den första.

%%6 

% x(1) = 0.1;
% r = [2.8,3.3,3.2,3.9];
% k = 100;
% for m = 1:4
%     for n = 2:(k+1)
% 
%         x(n,m) = r(m)*x(n-1)*(1-x(n-1));
% 
%     end
%     plot(1:101,x(:,m));
%     hold on
% end

%%7

x(1) = 0.1;
y(1) = 0.1;
r = [3.3,3.9];
k = 200;
for m = 1:2
    for n = 2:(k+1)

        x(n,m) = r(m)*x(n-1)*(1-x(n-1));
        y(n,m) = r(m)*y(n-1)-r(m)*y(n-1)^2;
    end
    
    plot(1:201,abs(x(:,m)-y(:,m)));
    hold on
end





