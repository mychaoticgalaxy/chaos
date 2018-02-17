program bai2_22;
type z=array[1..10000,1..10000] of longint;
var fi,fo:text;
    a,b:z;
    m,n,j,i,x,y,x1,x2,y1,y2,h,t:longint;
begin
 assign(fi,'BAI2_22.INP');
 assign(fo,'BAI2_22.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,m,n);
 for i:=1 to n do
  begin
   for j:=1 to m do
    read(fi,a[i,j]);
   readln(fi);
  end;
 i:=0;
 while i<n do
  begin
   inc(i);
   while j<m do
   begin
    inc(j);
    if a[i,j]=1 then
     begin
      x1:=i;
      y1:=j;
      if (a[i+1,j]=1)and(a[i,j+1]=1)and(i<n)and(j<m) then
       begin
        inc(i);
        inc(j);
        x2:=i;
        y2:=j;
       end
      else if (a[i+1,j]=1) and (a[i,j+1]<>1) and(i<n)and(j<m)then
       begin
        inc(i);
        x2:=i;
       end
      else if (a[i+1,j]<>1) and (a[i,j+1]=1) and(i<n)and(j<m)then
       begin
        inc(j);
        y2:=i;
       end;
      if (h<=x2-x1) and (t<=y2-y1) then
       begin
        h:=x2-x1;
        t:=y2-y1;
        b[1,1]:=x1;
        b[2,1]:=y1;
        b[3,1]:=x2;
        b[4,1]:=y2
       end;
    end;
   end;
  end;
 writeln(fo,h*t);
 for i:=1 to 4 do
  write(fo,b[i,1],' ');
 close(fi);
 close(Fo);
end.