% SEIR test model

clear;
clc;

N = 5927e4; % population of Hubei
I = 1;
R = 0;
E = 0;
S = N - I;

a = 1/8; % p for E
B1 = 0.15747;
B2 = 0.78735 - 0.5;
y1 = 0.04977; % death rate

new_infected=0;

T = 1:100;

for t = 1:length(T) - 1
    if t >= 1 && t <= 10
        r = 15;
    elseif t >= 11 && t <= 80
        r = 3;
    else
        r = 10;
    end
    
    if t >= 1 && t <= 4
        y2 = 0.05287;
    elseif t >= 5 && t <= 15
        y2 = 0.02534;
    elseif t >= 15 && t <= 63
        y2 = 0.46123;
    else
        y2 = 0.93481;
    end
    
    y = y1 + y2; % gamma
    
    S(t+1) = S(t) - r*B1*I(t)*S(t)/N - r*B2*E(t)*S(t)/N;
    E(t+1) = E(t) + r*B1*I(t)*S(t)/N + r*B2*E(t)*S(t)/N - a*E(t);
    I(t+1) = I(t) + a*E(t) - y*I(t);
    R(t+1) = R(t) + y*I(t);
    new_infected(t+1) = I(t+1) - I(t);
end

plot(T, S, T, E, T, I, T, R, T, new_infected, 'linewidth', 3);

grid on


xlabel('date');
ylabel('number');
legend('S','E', 'I', 'R', 'new infected');
title('SEIR')


    
