var x,y: real;
begin
    x:=2;
    y:=1.1*exp(x)+abs(cos(sqrt(Pi*x)))-4/9;
    
    
    {Output}
    writeln('y = ', y:8:3);
    writeln('Press Enter to Exit...');
    readln;
end.
