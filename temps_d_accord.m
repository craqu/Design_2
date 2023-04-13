t = out.tout;
simout = smooth(out.simout.signals.values,0.05);
c5 = (f_1-freq_min)*5/100;
y = ones(length(t), 1)*f_1;
y1 = ones(length(t), 1)*(f_1+c5);
y2 = ones(length(t), 1)*(f_1-c5);
comp = zeros(length(t), 1);
for i = 1:length(t)
    if simout(i) > (f_1-c5) && simout(i) < (f_1+c5)
        comp(i) = 1;
    end
end
i=length(t);
while comp(i) == 1
    i=i-1;
end
t_accord = t(i);
t_accord

calcul_moy = simout(60000:length(simout));
f_moy = mean(calcul_moy)
erreur_freq = f_1 - f_moy
epsilon = (erreur_freq/f_1 * 100)%

hold on
grid()
hold on
axis([1 10 20 80])
hold on
plot(t, simout(:), 'k')
plot(t, y, 'b')
plot(t, y1, '-.r')
plot(t, y2, '-.r')
legend('Fréquence', 'Consigne', 'Bande +/-5%')
xlabel('Temps [s]')
ylabel('Fréquence [Hz]')



