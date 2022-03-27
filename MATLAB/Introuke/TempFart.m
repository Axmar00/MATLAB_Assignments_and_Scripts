function [Tderiv SwitchNew P]=TempFart(t,T,SwitchOld)

% Farten temperaturen endrar seg med, Tderiv, er gitt ved 
% denne modellen:
% -k_1 (T-T_ute) + k_2 P
% Konstantane k_1 og k_2 er hardkoda under.
% Denne funksjonsfila kallar funksjonsfila OmnFunk.m, som
% gir effekten, P, som omnen leverar. Utetemperaturen, som 
% bestemmer avkj�lingsfarten, er gitt i funksjonsfila 
% TempFunk.m.
% Input:
% t (liten) - tida
% T (stor)  - temperaturen i rommet
% Switch (New og Old) - ein "brytar" for omnen, den er 1 n�r 
% omnen er p� og 0 n�r den er avskrudd.

% Konstantar i modellen
k1=.3;
k2=.008;

% Effekten omnen leverar (og om den skal vere p�)
[P SwitchNew]=OmnFunk(t,T,SwitchOld);
% Ute-temperaturen
Tute= TempFunk(t);
% Farten temperaturen endrar seg med (med forteikn)
Tderiv = -k1*(T-Tute)+k2*P;