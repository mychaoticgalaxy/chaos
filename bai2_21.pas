program bai2_21;
var fi,fo:text;
    n,i,d:longint;
function chht(x:longint):boolean;
 var s,s1:ansistring;
     a,b,i,j,code:longint;
  begin
   str(x,s);
   chht:=true;
   for i:= 2 to length(s) do
   if s[i]<>'0' then
    begin
     s1:='';
     val(s[i],a,code);
     for j:=1 to i-1 do
      s1:=s1+s[j];
     val(s1,b,code);
     if b mod a <>0 then
     begin
      chht:=false;
      break;
     end;
    end
   else
    begin
     chht:=false;
     break;
    end;
   end;
begin
 assign(fi,'BAI2_21.INP');
 assign(fo,'BAI2_21.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 d:=0;
 for i:= 11 to n-1 do
  if chht(i) then
   begin
    writeln(fo,i);
    inc(d);
   end;
 writeln(fo,d);
 close(fi);
 close(fo);
end.