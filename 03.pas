    const size=5;
type m=array[1..size, 1..size] of real;

var i,j,n,k,num,min_num:integer; max,am_md_num:real; a:m;
mc : array [1..size] of integer;


begin

    randomize;
    for i:=1 to size do begin
        mc[i]:=random(20)+1;
        write(mc[i],' ');
    end;
    writeln;

    min_num:=mc[1];
    for i:=2 to size do begin
        if mc[i]<min_num then min_num:=mc[i];
    end;
    
    writeln(' Minimum=',min_num);

    for i:=1 to size do
        for j:=1 to size do
            begin
                num:=random(10)-3;
                {writeln(num,' ',i,' ',j);}
                a[i,j]:=num;
            end;
    for i:=1 to size do
        begin 
            for j:=1 to size do
                write(a[i,j]:6:0); 
                writeln;    
        end;
    {Arithmetic mean Main diagonal}
    am_md_num:=0;
    for i:=1 to size do
        begin
            am_md_num:=am_md_num+a[i,i];
        end;
    writeln(' Arithmetic mean Main diagonal=',am_md_num:6:0);
    am_md_num:=am_md_num/size;
    writeln(' Arithmetic mean Main diagonal=',am_md_num:6:0);

    if am_md_num < min_num then
        begin
        for i:=1 to size do
            for j:=1 to size do
            begin
                if a[i,j] > 0 then
                    a[i,j]:=a[i,j]+am_md_num
                else
                    a[i,j]:=a[i,j]-am_md_num;
            end;    
            for i:=1 to size do
                begin 
                    for j:=1 to size do
                        write(a[i,j]:6:0); 
                        writeln;    
                end;
        end
    else
        writeln('Nothing');

    
    readln;
end.
