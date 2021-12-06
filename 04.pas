const size=5;

var 
min_num,inum,i,am_num:integer;
ma : array [1..size] of integer;
mb : array [1..size] of integer;

begin
    randomize;
    for i:=1 to size do begin
        ma[i]:=random(20)+1;
        write(ma[i],' ');
    end;
    writeln;

    for i:=1 to size do begin
        mb[i]:=random(20)+1;
        write(mb[i],' ');
    end;
    writeln;

    min_num:=abs(ma[1]+mb[size]);
    writeln('',min_num:3);

    for i:=2 to size do begin
        inum:=size-i+1;
        am_num:=abs(ma[i]+mb[inum]);
        writeln('',am_num:3);
        if am_num<min_num then min_num:=am_num;
    end;

    writeln(' Minimum=',min_num);
    

    readln;
end.
