simout1 = out.simout1;
t1 = out.tout;
hold on
grid()
hold on
axis([0 1.5 -1 6])
hold on
plot(t1, simout1(:), 'k')
xlabel('Temps [s]')
ylabel('Tension [V]')
