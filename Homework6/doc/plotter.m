theta=0:2*pi/512:2*pi;

circ.x=cos(theta);
circ.y=sin(theta);

figure();
axis equal;
subplot(1,3,1);
    plot(circ.x,circ.y,'b');
    hold on;
    plot(circ.x,circ.y+1.3,'r');
    axis equal;
    title('(a) - no convergence');
subplot(1,3,2);
    plot(circ.x,circ.y,'b');
    hold on;
    plot(circ.x,circ.y+2*1.3,'r')
    axis equal;
    title('(b)');
    plot([-2,2],[-1,1]+2*1.3/2,'g');
    plot([-2,2],[0,0]+2*1.3/2,'g');
    plot([-2,2],[1,-1]+2*1.3/2,'g');

subplot(1,3,3);
    plot(circ.x,circ.y,'r');
    hold on;
    plot(2*circ.x+3.5,circ.y,'b');
    axis equal;
    title('(c)');
    plot([-1,1]+5/4,[-8,8],'g');
    plot([0,0]+5/4,[-8,8],'g');
    plot([1,-1]+5/4,[-8,8],'g');

figure();
axis equal;
subplot(1,3,1);
    plot(circ.x,circ.y,'b');
    hold on;
    plot(circ.x,circ.y+1.3,'r');
    axis equal;
    title('(a)');
    plot([-2,2],[0,0]+1.3/2,'g');
subplot(1,3,2);
    plot(circ.x,circ.y,'b');
    hold on;
    plot(circ.x,circ.y+2*1.3,'r')
    axis equal;
    title('(b)');
    plot([-2,2],[0,0]+2*1.3/2,'g');
subplot(1,3,3);
    plot(circ.x,circ.y,'r');
    hold on;
    plot(2*circ.x+3.5,circ.y,'b');
    axis equal;
    title('(c)');
    plot([0,0]+2,[-8,8],'g');




