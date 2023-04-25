program tugasno2;
uses crt;
var

k,b:Integer;
begin
 clrscr;

for b:= 1 to 5 do
begin
  for k:= 1 to 5 do
 
  if ( b mod 2=0) then
  
  write('x', ' ')
  else write('0',' ');
  
  writeln;
  end;
  readln;
end.
