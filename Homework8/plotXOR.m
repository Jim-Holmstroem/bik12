function [] = plotXOR()
    plot([1 -1],[1 -1],'b+')
    hold on;
    axis([-2 2 -2 2])
    line([1 ; 1.1],[-1 ; -1],'Color','red')
    line([-1 ; -1.1],[1 ; 1], 'Color', 'red')
    set(gca, 'XTick', -2:1:2);
    set(gca, 'YTick', -2:1:2);
end

