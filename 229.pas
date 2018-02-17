program bai2_29;
type z=array[1..1000000] of longint;
var fi,fo:text;
    i,j,k,n:longint;
    a:array[1..1000000] of longint;
    s:array[1..1000000] of ansistring;
function d(U,V:ansistring):longint;
 var i,j:longint;
     c:char;
  begin
   d:=0;
   i:=0;
   while i<length(u) do
   begin
    inc(i);
    if pos(u[i],v)=0 then
     begin
      inc(d);
      c:=u[i];
      while pos(c,u)<> 0 do delete(u,pos(c,u),1);
     end;
   end;
   i:=0;
   while i<length(v) do
    begin
     inc(i);
     if pos(v[i],u)=0 then
      begin
       inc(d);
       c:=v[i];
       while pos(c,v)<>0 do delete(v,pos(c,v),1);
      end;
    end;
  end;
procedure qsort(l,r:longint; a:z);
 var i,j,x,y:longint;
  begin
   i:=l;
   j:=r;
   x:=a[(i+j) div 2];
   repeat
    begin
     while a[i]>x do inc(i);
     while a[j]<x do dec(j);
     if not (i>j) then
      begin
       y:=a[i];
       a[i]:=a[j];
       a[j]:=y;
       inc(i);
       dec(j);
      end;
    end
   until i>j;
  if l<j then qsort(l,j,a);
  if i<r then qsort(i,r,a);
 end;
begin
 assign(fi,'BAI2_29.INP');
 assign(fo,'BAI2_29.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 for i:=1 to n do
  readln(fi,s[i]);
 for i:=1 to n-1 do
  for j:=i+1 to n do
   begin
    inc(k);
    a[k]:=d(s[i],s[j]);
   end;
 qsort(1,n,a);
 writeln(fo,a[1],' ',a[n]);
 close(fi);
 close(fo);
end.
