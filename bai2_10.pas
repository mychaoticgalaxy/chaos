program bai2_10;
var fi,fo:text;
    m,k:longint;
begin
 assign(fi,'BAI2_10.INP');
 assign(fo,'BAI2_10.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,m);
 k:=0;
 if not (m<4) then
  repeat
   begin
    m:=m div 4;
    inc(k);
   end
  until m<4;
 writeln(fo,k);
 close(fi);
 close(fo);
end.