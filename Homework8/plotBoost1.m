function []= plotBoost1( )
    
    plot([1 -1],[1 -1],'b+','Size', 2)
    hold on;
    axis([-2 2 -2 2])
    line([1 ; 1.1],[-1 ; -1],'Color','red')
    line([-1 ; -1.1],[1 ; 1], 'Color', 'red')
    set(gca, 'XTick', -2:1:2);
    set(gca, 'YTick', -2:1:2);

end

