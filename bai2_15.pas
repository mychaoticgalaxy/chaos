program bai2_15;
var fi,fo:text;
    n,i,m:longint;
    tong:int64;
    s,stong,s1,s2:ansistring;
procedure t2sl(var s1,s2,s:ansistring);
 var x,y,z,code,i:longint;
     {s:ansistring;}
  begin
   s:='';
   z:=0;
   while length(s2)<length(s1) do s2:='0'+s2;
   for i:=length(s1) downto 1 do
    begin
     val(s1[i],x,code);
     val(s2[i],y,code);
     tong:=(x+y+z) mod 10;
     z:=(x+y+z) div 10;
     str(tong,stong);
     s:=stong+s;
    end;
   if (i=1) and (z=1) then s:='1'+s;
   s1:=s;
  end;
begin
 assign(fi,'BAI2_15.INP');
 assign(fo,'BAI2_15.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 s1:='0';
 for i:=1 to n do
  begin
   str(i,s2);
   t2sl(s1,s2,s);
  end;
 writeln(fo,s1);
 close(fi);
 close(fo);
end.