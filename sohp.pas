program sohanhphuc;
var fi,fo:text;
    n,i:longint;
function ktnt(x:longint):boolean;
 var i:longint;
  begin
   ktnt:=true;
   if (x=1) or ((x<>2) and (x mod 2 =0)) then ktnt:=false
   else
    for i:=2 to trunc(sqrt(x)) do
     if x mod i=0 then ktnt:=false;
  end;
begin
 assign(fi,'SOHP.INP');
 assign(fo,'SOHP.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 for i:= n downto 1 do
  if n mod i =0 then write(fo,i,' ')
   else if ktnt(i) then write(fo,i,' ');
 close(fi);
 close(fo);
end.
