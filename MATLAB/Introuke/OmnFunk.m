function [P Switch]=OmnFunk(tid,Temp,Switch)

% Funksjon som regulerar effekten p� ein omn i eit rom.
% Funksjonen tar tre "inputs" (den treng ikkje bruke alle):
% tid    - tida
% Temp   - temperaturen i rommet
% Switch - ein "brytar" som er 1 om omnen stod p� fr� f�r.
% Switch kan bli endra i funksjonsfila; den er ogs� "output" - 
% i tillegg til effeten P som omnen leverar.
% Styringsmekanismen kan justerast p� fleire m�tar. 
% Ein kan skru omnen av og p� etter kva temperaturen er,
% ein kan skru han av eller p� p� bestemte tidspunkt.
% Ein kan ogs� vurdere � legge inn ute-temperaturen ogs�.

% Maksimal effekt (hardkoda)
Pmax=600;

% Omnen blir skrudd p� dersom temperaturen blir mindre enn Ton
Ton=18;
% Omnen blir skrudd av igjen dersom temperaturen n�r Toff
Toff=20;

% Unders�ker om brytaren, Switch, skal endrast og utf�rer dette evt.
if Temp<Ton
  Switch=1;
elseif Switch==1 & Temp>= Toff
  Switch=0;
end

% Reknar ut sj�lve effekten
P=Switch*Pmax;