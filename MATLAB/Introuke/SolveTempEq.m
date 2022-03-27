function [tidVektor TempVektor EffektVektor]=...
    SolveTempEq(Temp0,Switch0,tid0,tidMax)

% Funksjon som løyser ei differensiallikning for rom-temperaturen
% i eit rom med ein omn. Dette er ei implementering av Eulers
% midtpunktsmetode. Fila les inn effekten ein omn leverar, P, frå 
% funksjonsfila OmnFunk.m. Utetemperaturen, som bestemmer
% avkjølingsfarten, er gitt i funksjonsfila TempFunk.m.
% Farten temperaturen T endrar seg med, i denne modellen, er då 
% gitt ved
% -k_1 (T-T_ute) + k_2 P
% Konstantane k_1 og k_2 er hardkoda inn i dette skriptet.
% Steglengda vi brukar i integrasjonen er hardkoda.

dt=5e-3;                    % Steglengda
 
N=floor(tidMax/dt);         % Totalt tal på steg
    
tidVektor=tid0:dt:tidMax;   % Vektor med alle tidene
EffektVektor(1)=Switch0;    % Vektor med omn-effekten
Switch=Switch0;             % Start-verdi for "brytar"
TempVektor=zeros(1,N);      % Vektor med temperaturar
TempVektor(1)=Temp0;        % Legg inn start-verdi

% Bestemmer tidsutviklinga med Eulers midtpunktsmetode
for n=1:N
  tid=tidVektor(n);
  Temp=TempVektor(n);
  tidHatt=tid+dt/2;
  [TempDerivHatt aux1 aux2]=TempFart(tidHatt,Temp,Switch);
  TempHatt=Temp+TempDerivHatt*dt/2;
  [TempDeriv Switch P]=TempFart(tidHatt,TempHatt,Switch);
  TempVektor(n+1)=Temp+TempDeriv*dt;
  EffektVektor(n)=P;
end
EffektVektor(N+1)=P;