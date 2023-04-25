program tugasno17;
uses crt;
var  b,k,n: integer;
begin
clrscr;
for b:= 1 to 5 do
begin
for k:=1 to 5-b do
write(' ');
for n:=1 to b do
write(n);
writeln;
end;
readln;
end.
