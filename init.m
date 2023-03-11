dt = 0.000125;

f_1 = 100; % [hz]
beta = 3.2 * 10^(-3);

mu = 7.68 * 10^(-3); % [kg/m]
masse = 0.004405; % [kg]s
Longueur = 0.44; % [m]
mu = masse/Longueur;
T = f_1^2 * 4 * Longueur^2 * mu;
n = 21; % découper la corde en 'n' morceaux


p_actionneur = 16;
p_capteur = 5;

dx = Longueur/(n-1);

c = sqrt(T/(mu));
