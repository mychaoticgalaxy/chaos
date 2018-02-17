program _7_2_0_;
var fi,fo:text;
    n:longint;
procedure stz(x:longint);
 var i,y:longint;
     st:ansistring;
  begin
   i:=1;
   while i>=1 do
    begin
     y:=x*i;
     str(y,st);
     while pos('7',st)<>0 do delete(st,pos('7',st),1);
     while pos('2',st)<>0 do delete(st,pos('2',st),1);
     while pos('0',st)<>0 do delete(st,pos('0',st),1);
     if length(st)= 0 then
      begin
       writeln(fo,y);
       break;
      end;
     inc(i);
    end;
  end;
begin
 assign(fi,'BAI230.INP');
 assign(fo,'BAI230.OUT');
 reset(fi);
 rewrite(fo);
 while not eof(fi) do
  begin
   readln(fi,n);
   stz(n);
  end;
 close(fi);
 close(fo);
end.

