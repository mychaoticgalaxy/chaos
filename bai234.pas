program bai234;
type z=array[1..100000] of longint;
var fi,fo:text;
    n,i,j,k:longint;
    a:array[1..100000] of longint;
procedure qsort(l,r:longint; a:z);
 var i,j,x,y:longint;
  begin
   i:=l;
   j:=r;
   x:=a[(i+j) div 2];
   repeat
    begin
     while a[i]<x do inc(i);
     while a[j]>x do dec(j);
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
 assign(fi,'MANG.INP');
 assign(fo,'MANG.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 for i:=1 to n do
  read(fi,a[i]);
 qsort(1,n,a);
 for i:=3 to n do
  for j:=1 to i-1 do
    for k:=1 to i-1 do
     if (a[k]>a[j]) and (a[k]=a[i]-a[j]) then
      begin
       writeln(fo,a[i],'=',a[j],'+',a[k]);
      end;
 close(fi);
 close(fo);
end.
