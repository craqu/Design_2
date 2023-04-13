simout3 = smooth(out.simout3,0.1);
t1 = out.tout;
hold on
grid()
hold on
%axis([0 10 -1 6])
hold on
plot(t1, simout3(:), 'k')
xlabel('Temps [s]')
ylabel('Duty Cycle [%]')
