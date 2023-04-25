program soalno16;
uses crt;
var  b,k,n: integer;
begin
clrscr;
for b:= 5 downto 1 do
begin
for k:=1 to 5-b do
write(' ');
for n:=1 to b do
write(n);
writeln;
end;
readln;
end.
