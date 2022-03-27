% Skript som manipulerar eit bilde
% Det les inn to bilder og viser dei fram.
% Så sørger det for at bilde nr. 2 får same oppløysing
% som bilde nr. 1. Formata bør vere omtrent dei same; der er ikkje 
% gjort noko skjæring for å få formata like.
% Til sist blir bilda "lagt saman" ut frå visse 
% filtrerings-føresetnader.

% Les inn to bilde (her kan ein lett endre til andre bilde)
V1=imread('Lyn.jpg');
V2=imread('Strand.jpg');

% Viser dei to bilda som figur 1 og 2
figure(1)
image(V1)
figure(2)
image(V2)

% Bestemmer oppløysingane
[a1 b1 c1]=size(V1);
[a2 b2 c2]=size(V2);

% Vi endrar formata slik at oppløysinga til bilde to
% blir det same som oppløysinga til bilde 1.
%
% Går over til flyttal og interpolerar med innebygd funksjon
% (Pikslane er i utgangspunktet gitt om 8-bit binære tal.) 
V2int = griddedInterpolant(double(V2)); 
% Nytt grid
x = (0:a2/(a1-1):a2)';                
y = (0:b2/(b1-1):b2)';
z = (1:c1)';
% Skalerar om bilde 2 og går til bake til 8-bits heiltal
V2new=uint8(V2int({x,y,z}));

%
% Startar sjølve manipuleringa.
%
% Begynner med å kopiere det andre bildet
ImageManipulate=V2new;
% Går gjennom visse rekker og søyler
for r=1:320;          % Går gjennom rekkene opp til ei øvre grense
  for s=1:b1;         % Går gjennom søylene
    % Her blir sjølve filteret lagt inn. 
    % I dette tilfellet set vi inn pixlar frå bilde 1 dersom 
    % den aktuelle bilde2-pixelen er tilstrekkeleg blå eller kvit
    if V2new(r,s,3)> 150 | ...
       (V2new(r,s,1)> 200 & V2new(r,s,2)>200 & V2new(r,s,3)>200)
      ImageManipulate(r,s,:)=V1(r,s,:);
    end
  end
end

% Viser fram resultatet som figur 3
figure(3)
image(ImageManipulate)