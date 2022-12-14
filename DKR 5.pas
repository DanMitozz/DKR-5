Uses Crt;
const nmax=10000000;
Var n: Byte;
procedure proc1;
begin 
//const nmax=100;
var a,b:array[1..nmax] of integer;
var  n,i,j,k:integer;
begin
clrscr;
randomize;
repeat
write('Размер массива до ',nmax,' n=');
readln(n);
until n in [1..nmax];
writeln('Исходный массив:');
for i:=1 to n do
 begin
  a[i]:=random(300)-150;
  write(a[i],' ');
 end;
writeln;
for i:=1 to n do
b[i]:=-1;
for i:=1 to n do
 begin
  k:=0;
  for j:=1 to n do
  if a[j]<a[i] then k:=k+1;
  b[k+1]:=a[i];
 end;
for i:=2 to n do
if b[i]=-1 then b[i]:=b[i-1];
writeln('Отсортированный массив:');
for i:=1 to n do
write(b[i],' ');
readln
end;
end;
procedure proc2;
begin 
var a,b:array[1..nmax] of integer;
var  n,i,j,k:integer;
begin
clrscr;
randomize;
repeat
write('Размер массива до ',nmax,' n=');
readln(n);
until n in [1..nmax];
writeln('Исходный массив:');
for i:=1 to n do
 begin
  a[i]:=random(300)-150;
  write(a[i],' ');
 end;
writeln;
for i:=1 to n do
b[i]:=-1;
for i:=1 to n do
 begin
  k:=0;
  for j:=1 to n do
  if a[j]<a[i] then k:=k+1;
  b[k+1]:=a[i];
 end;
for i:=2 to n do
if b[i]=-1 then b[i]:=b[i-1];
writeln('Отсортированный массив:');
for i:=n downto 1 do
write(b[i],' ');
readln
end;
end;
procedure proc3;
begin 

end; 
procedure proc4;
begin 

end; 
begin
repeat
ClrScr;
WriteLn('Сортировка подсчетом по возрастанию - 1');
WriteLn('Сортировка подсчетом по убыванию    - 2');
WriteLn('Сортировка слиянием по возрастанию - 3');
WriteLn('Сортировка слиянием по убыванию    - 4');
WriteLn('Exit - 0');
Write('Select program: ');
ReadLn(n);
Case n of
1: proc1;
2: proc2;
3: proc3;
4: proc4;
end;
until n = 0;
end.