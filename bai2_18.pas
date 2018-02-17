program tinh_2moon;
var fi,fo:text;
    n,m,i:longint;
    s1:ansistring;
procedure ltm(var s1:ansistring;m:longint);
 var i:longint;
     s,c,stong:ansistring;
     z,x,code,tong:longint;
  begin
   s:='';
   z:=0;
   for i:=length(s1) downto 1 do
    begin
     val(s1[i],x,code);
     tong:=(x*m+z) mod 10;
     z:=(x*m+z) div 10;
     str(tong,stong);
     s:=stong+s;
    end;
   if (i=1) and (z>0) then
    begin
     str(z,c);
     s:=c+s;
    end;
   s1:=s;
  end;
begin
 assign(fi,'BAI2_18.INP');
 assign(fo,'BAI2_18.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,m,n);
 s1:='1';
 for i:=1 to n do
  ltm(s1,m);
 writeln(fo,s1);
 close(fi);
 close(fo);
end.