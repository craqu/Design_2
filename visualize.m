
data = load("donneescordes.mat");
data = data.ans.Data;
x_0 = linspace(0,Longueur,n);
y_0 = x_0;
p = plot(x_0,y_0,'-r');

%p = plot(xData, results(1, 1:end), "-r");
title("Animation de la corde dans le temps.");
xlabel('x (sur 1 m)', 'Interpreter', 'Latex')
ylabel('y (position en m)', 'Interpreter', 'Latex')
xlim([0,Longueur]);
ylim([-2e-5, 2e-5]);
grid minor  % Adding grid lines






for i = 1:1:length(data)
    if rem(i,8) == 0
        y = data(1,1:end,i);
        p.YData = y;
        drawnow;
    end
end