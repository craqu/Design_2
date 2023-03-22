dt = 0.000125;
mode = 2;
f_1 = 100; % [hz]
beta = 3.2 * 10^(-3); % coefficient d'amortissement
inv = 1; % 1 pour 2iem harmonique, -1 pour 1er harmonique
mu = 7.68 * 10^(-3); % [kg/m]
masse = 0.004405; % [kg]s
Longueur = 0.44; % [m]
mu = masse/Longueur; % [kg/m]
T = f_1^2 * 4 * Longueur^2 * mu; %équation tension dans la corde selon la fréquence
n = 21; % découper la corde en 'n' morceaux
distance_corde_capteur = 3.81*10^(-3); % [mm]

p_actionneur = 16; % position de la masse qui sera forcée
p_capteur = 5; % position de la masse observée par le capteur

dx = Longueur/(n-1);

c = sqrt(T/(mu));
