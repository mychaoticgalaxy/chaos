program farey;
var fi,fo:text;
    kt:boolean;
    n,i,j,k,l,m,c,d:longint;
    a:array[0..9999,1..10000] of longint;
function ucln(t,m:longint):longint;
 var r:longint;
  begin
   repeat
    begin
     r:=m mod t;
     m:=t;
     t:=r;
    end
   until t=0;
   ucln:=m;
  end;
begin
 assign(fi,'FAREY.INP');
 assign(fo,'FAREY.OUT');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 a[0,1]:=0;
 a[0,2]:=1;
 k:=1;
 i:=0;
 while i<n-1 do
  begin
   inc(i);
   j:=n+1;
   while j>i+1 do
    begin
     dec(j);
     kt:=true;
     for l:=0 to k-1 do
      if (a[l,1]=i div ucln(i,j)) and (a[l,2]=j div ucln(i,j)) then
       kt:=false;
     if kt = true then
      begin
       a[k,1]:=i div ucln(i,j);
       a[k,2]:=j div ucln(i,j);
       inc(k);
      end;
    end;
  end;
 a[k,1]:=1;
 a[k,2]:=1;
 writeln(fo,k+1);
 for i:=0 to k do
  writeln(fo,a[i,1],' ',a[i,2]);
 close(fi);
 close(fo);
end.
