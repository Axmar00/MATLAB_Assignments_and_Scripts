%Oppgave 3.5.7 a)
sum = 1;

for n=1:1000000
    sum = sum +(1/n);
    
end 
format compact
disp('Oppgave 3.5.7 a)');
sum


%Oppgave 3.5.7 b)
sum2 = 0;
ledd=1;
maxSum = 15;
while sum2 < maxSum
    sum2 = sum2 + (1/ledd);
    ledd = ledd + 1;   
end
disp('Oppgave 3.5.7 b)');
ledd