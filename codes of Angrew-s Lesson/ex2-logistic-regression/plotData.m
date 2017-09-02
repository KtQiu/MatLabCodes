function plotData(X,Y)
for i  = 1: length(Y)
    if Y(i) == 0
        plot(X(i,2),X(i,3),'rx');
        hold on;
    else 
        plot(X(i,2),X(i,3),'go');
        hold on;
    end
end
end