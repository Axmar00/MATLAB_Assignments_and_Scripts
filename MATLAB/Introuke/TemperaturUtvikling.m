% Skript som reknar ut temperaturen i eit rom. Temperaturen avtar 
% på grunn av varmetap ut av rommet. Dette kan kompenserast av ein 
% regulerbar omn i rommet. Temperaturen i rommet blir såleis bestemt
% av den regulerbare effekten og utetemperaturen, som varierar med 
% tida.
% For 36 timar, frå midnatt første døgn, er ute-temperaturen T_ute 
% gitt ved funksjonsfila TempFunk.m
% Omnen blir regulert i funksjonsfila OmnFunk.m. Her blir effekten 
% P bestemt ut frå visse kriterium.
% Etter vår modell vil endrignsfarten til temperaturen T i rommet
% vere gitt ved 
% -k_1 (T-Tute(t)) + k_2 P.
% Merk at endringsfarten kan vere negativ - noko som tilsvarar
% avkjøling.
%

% Start og slutt for tid
tid0=0; tidMax=36;
% Startemperatur
Temp0=20;

% Bestemmer om omnen skal vere skrudd på i utgangspunktet (0 eller 1):
Switch0=1;

% Bestemmer T(t) ved å løyse likninga for modellen
[TidVektor, TempVektor, EffektVektor]=...
    SolveTempEq(Temp0,Switch0,tid0,tidMax);

% Plottar resultatet
yyaxis left
plot(TidVektor,TempVektor)              % Temp. i rommet
hold on
plot(TidVektor,TempFunk(TidVektor),'m') % Temp. ute
plot([tid0 tidMax],[1 1]*18,'k--')
hold off
xlabel('Timar etter midnatt første døgn')
ylabel('Celsiusgrader')
yyaxis right
plot(TidVektor,EffektVektor,'r')        % Straumforbruk i watt
ylabel('Watt')
% Regulerar verdiane på den høgre y-aksen
V=axis;
V(3)=0;
V(4)=1.5*max(EffektVektor+1);
axis(V)
% Firkant som forklarar kva dei tre polotta er
legend('Temperatur i rommet',...
    'Temperatur ute','18 grader','Straumforbruk',...
    'location','southeast')
