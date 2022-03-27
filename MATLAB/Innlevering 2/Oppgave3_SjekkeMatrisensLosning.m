A = input('Matrise A: ');
b = input('S�ylevektor b: ');
format compact

DimMatA = size(A); %Dimensjonen til matrise A som en matrise
DimMatb = size(b); %Dimensjonen til s�ylevektor b

SoylerA = DimMatA(2);  %Antall s�yler i matrise A
Rekkerb = length(b);   %Antall rekker i s�ylevektor b
SoylerB = DimMatb(2);   %Antall s�yler i s�ylevektor b


if(DimMatA(1) ~= DimMatA(2))
    disp('Matrise A er ikke kvadratisk')    

elseif(SoylerB ~= 1) 
    disp('S�ylevektoren har for mange s�yler! Max 1 s�yle');
    
elseif(SoylerA ~= Rekkerb)
        disp('A sine s�yler er ikke lik b sine rekkker')
        
else %Dersom alt stemmer, sjekker vi om likningen har en entydig l�sning
    
    if(det(A) ~= 0) %Hvis determinanten ikke = 0, da har den entydig l�sning
            disp('Likningen har entydig l�sning:')
            X = inv(A)*b
    else 
            disp('Likningen har ingen entydig l�sning') 
    end  
end
   