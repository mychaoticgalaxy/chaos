program sovong;
var fi,fo:text;
    n:ansistring;
function ktsv(s1:ansistring):boolean;
 var x,y,i,j,code:longint;
     s2:ansistring;
  begin
   i:=1;
   val(s1,x,code);
   ktsv:=false;
   for i:=2 to length(s1) do
    begin
     y:=x*i;
     str(y,s2);
     if length(s2)>length(s1) then break
     else
     for j:=1 to length(s1) do
      delete(s2,pos(s1[j],s2),1);
     if length(s2)=0 then ktsv:=true else
      begin
       ktsv:=false;
       break;
      end;
    end;
  end;
begin
 assign(fi,'sovong.inp');
 assign(fo,'sovong.out');
 reset(fi);
 rewrite(fo);
 while not eof(fi) do
  begin
   readln(fi,n);
   if ktsv(n)=true then writeln(fo,'so vong')
    else writeln(fo,'khong phai so vong');
  end;
 close(fi);
 close(fo);
end.
