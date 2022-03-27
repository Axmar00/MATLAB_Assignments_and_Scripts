A = input('Matrise A: ');
b = input('Søylevektor b: ');
format compact

DimMatA = size(A); %Dimensjonen til matrise A som en matrise
DimMatb = size(b); %Dimensjonen til søylevektor b

SoylerA = DimMatA(2);  %Antall søyler i matrise A
Rekkerb = length(b);   %Antall rekker i søylevektor b
SoylerB = DimMatb(2);   %Antall søyler i søylevektor b


if(DimMatA(1) ~= DimMatA(2))
    disp('Matrise A er ikke kvadratisk')    

elseif(SoylerB ~= 1) 
    disp('Søylevektoren har for mange søyler! Max 1 søyle');
    
elseif(SoylerA ~= Rekkerb)
        disp('A sine søyler er ikke lik b sine rekkker')
        
else %Dersom alt stemmer, sjekker vi om likningen har en entydig løsning
    
    if(det(A) ~= 0) %Hvis determinanten ikke = 0, da har den entydig løsning
            disp('Likningen har entydig løsning:')
            X = inv(A)*b
    else 
            disp('Likningen har ingen entydig løsning') 
    end  
end
   