program tugasno5;
uses crt;
var


k,b:Integer;
begin
 clrscr;
for b:= 1 to 5 do
begin
  for k:= 1-b to 5-b do
begin

if k<0 then
k:=(k*-1);
write(k);
end;
Writeln;
end;
readln;
end.
