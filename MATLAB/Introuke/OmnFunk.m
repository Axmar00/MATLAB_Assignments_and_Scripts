function [P Switch]=OmnFunk(tid,Temp,Switch)

% Funksjon som regulerar effekten på ein omn i eit rom.
% Funksjonen tar tre "inputs" (den treng ikkje bruke alle):
% tid    - tida
% Temp   - temperaturen i rommet
% Switch - ein "brytar" som er 1 om omnen stod på frå før.
% Switch kan bli endra i funksjonsfila; den er også "output" - 
% i tillegg til effeten P som omnen leverar.
% Styringsmekanismen kan justerast på fleire måtar. 
% Ein kan skru omnen av og på etter kva temperaturen er,
% ein kan skru han av eller på på bestemte tidspunkt.
% Ein kan også vurdere å legge inn ute-temperaturen også.

% Maksimal effekt (hardkoda)
Pmax=600;

% Omnen blir skrudd på dersom temperaturen blir mindre enn Ton
Ton=18;
% Omnen blir skrudd av igjen dersom temperaturen når Toff
Toff=20;

% Undersøker om brytaren, Switch, skal endrast og utfører dette evt.
if Temp<Ton
  Switch=1;
elseif Switch==1 & Temp>= Toff
  Switch=0;
end

% Reknar ut sjølve effekten
P=Switch*Pmax;