% Skript som manipulerar eit bilde
% Det les inn to bilder og viser dei fram.
% S� s�rger det for at bilde nr. 2 f�r same oppl�ysing
% som bilde nr. 1. Formata b�r vere omtrent dei same; der er ikkje 
% gjort noko skj�ring for � f� formata like.
% Til sist blir bilda "lagt saman" ut fr� visse 
% filtrerings-f�resetnader.

% Les inn to bilde (her kan ein lett endre til andre bilde)
V1=imread('Lyn.jpg');
V2=imread('Strand.jpg');

% Viser dei to bilda som figur 1 og 2
figure(1)
image(V1)
figure(2)
image(V2)

% Bestemmer oppl�ysingane
[a1 b1 c1]=size(V1);
[a2 b2 c2]=size(V2);

% Vi endrar formata slik at oppl�ysinga til bilde to
% blir det same som oppl�ysinga til bilde 1.
%
% G�r over til flyttal og interpolerar med innebygd funksjon
% (Pikslane er i utgangspunktet gitt om 8-bit bin�re tal.) 
V2int = griddedInterpolant(double(V2)); 
% Nytt grid
x = (0:a2/(a1-1):a2)';                
y = (0:b2/(b1-1):b2)';
z = (1:c1)';
% Skalerar om bilde 2 og g�r til bake til 8-bits heiltal
V2new=uint8(V2int({x,y,z}));

%
% Startar sj�lve manipuleringa.
%
% Begynner med � kopiere det andre bildet
ImageManipulate=V2new;
% G�r gjennom visse rekker og s�yler
for r=1:320;          % G�r gjennom rekkene opp til ei �vre grense
  for s=1:b1;         % G�r gjennom s�ylene
    % Her blir sj�lve filteret lagt inn. 
    % I dette tilfellet set vi inn pixlar fr� bilde 1 dersom 
    % den aktuelle bilde2-pixelen er tilstrekkeleg bl� eller kvit
    if V2new(r,s,3)> 150 | ...
       (V2new(r,s,1)> 200 & V2new(r,s,2)>200 & V2new(r,s,3)>200)
      ImageManipulate(r,s,:)=V1(r,s,:);
    end
  end
end

% Viser fram resultatet som figur 3
figure(3)
image(ImageManipulate)