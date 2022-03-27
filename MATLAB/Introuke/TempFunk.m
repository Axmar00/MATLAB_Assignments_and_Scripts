function T=TempFunk(t)

% Funksjon som gir temperaturane gjennom eit døgn. 
% Funksjonen tar tidspunktet, altså klokkeslettet, som input
% og gir tilbake temperaturen. Den tar vektor-argument.
% Tida må ligge mellom 0 og 36.

% Sjekkar at t ligg mellom 0 og 36
if min(t)<0 | max(t)>36
  disp('Tida må ligge mellom 0 og 36')
  return
end


% Tabell med temperaturar
Tabell=[0    4.0000
    1.0000    4.1000
    2.0000    4.1500
    3.0000    4.2000
    4.0000    4.2000
    5.0000    4.3000
    6.0000    4.5000
    7.0000    4.8000
    8.0000    4.9500
    9.0000    5.1000
   10.0000    5.5000
   11.0000    5.7000
   12.0000    5.8000
   13.0000    6.0000
   14.0000    6.1000
   15.0000    6.1000
   16.0000    6.0500
   17.0000    6.0000
   18.0000    5.7000
   19.0000    5.5000
   20.0000    5.2000
   21.0000    5.1000
   22.0000    5.0000
   23.0000    4.8000
   24.0000    4.6000
   25.0000    4.4000
   26.0000    4.3000
   27.0000    4.1000
   28.0000    4.0000
   29.0000    4.0000
   30.0000    4.1000
   31.0000    4.2000
   32.0000    4.3000
   33.0000    4.5000
   34.0000    4.7000
   35.0000    4.7000
   36.0000    4.6000];

Tid=Tabell(:,1)';   % Tidspunkt: Første søyle i tabellen
Temp=Tabell(:,2)';  % Temperaturar: Andre søyle i tabellen

% Bestemmer temperaturen ved tida t ved interpolering
T=spline(Tid,Temp,t);
