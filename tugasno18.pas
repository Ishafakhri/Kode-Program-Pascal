program soalno18;
uses crt;
var  b, k, bil : integer;
begin
clrscr;
for b:= 5 downto 1 do
begin
for k:=1 to 5-b do
write(' ');
for bil:=b downto 1 do
write(bil);

writeln;
end;
readln;
end.

