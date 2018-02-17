program phatqua;
var fi,fo:text;
    a:array[1..10000,1..10000] of longint;
    b,c:array[1..1000000] of longint;
    s1,st:ansistring;
    i,j,k,n,m,t,code,x,d:longint;
begin
 assign(fi,'PHATQUA.INP');
 assign(fo,'PHATQUA.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n,m);
 for k:= 1 to m do
  begin
   str(k,s1);
   st:=st+s1;
  end;
 for i:=1 to n do
  begin
   while not eoln(fi) do
    begin
     read(fi,x);
     j:=0;
     while j<x do
     begin
      inc(j);
      read(fi,a[i,j]);
      k:=0;
      while k< length(st) do
       begin
        inc(k);
        val(st[k],t,code);
        if a[i,j]=t then
         begin
          inc(d);
          b[d]:=i;
          c[d]:=t;
          delete(st,k,1);
          break;
         end;
       end;
      if a[i,j]=t then break;
     end;
      if a[i,j]=t then break;
    end;
   readln(fi);
  end;
 writeln(fo,d);
 for i:=1 to d do
  writeln(fo,b[i],' ',c[i]);
 close(fi);
 close(fo);
end.
