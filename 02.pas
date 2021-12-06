const l='---------------------------------------------------';
var y,a,b,n,x,point,x1,x2,count: real;
begin
    
    
    Writeln('n');
    Readln(n);
    Writeln('a');
    Readln(a);
    Writeln('b');
    Readln(b);
    writeln('n=',n:4:1,'  a=',a:6:3,'  b=',b:6:3);
    point:=(b-a)/10;
    x1:=a;
    x2:=b;
    writeln('  x1=',x1:6:3,'  x2=',x2:6:3);
    writeln('Таблица функции');
    writeln(l);
    writeln('|  n   x   y |');
    writeln(l);
    count:=1;
    while x1<=x2 do
        begin
            x:=x1;
            y:=1.1*exp(x)+abs(cos(sqrt(Pi*x)))-4/9;
            writeln('|  ',count:4:0,'   ',x:4:2,'   ',y:4:2,' |');
            count:=count+1;
            x1:=x1+point;
        end;

writeln(l);
end.
