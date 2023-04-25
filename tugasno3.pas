program tugasno3;
uses crt;
var


k,b:Integer;
begin
 clrscr;

for b:= 1 to 5 do
begin
  for k:= 1 to 5 do
  
 if (b+k-1) mod 2=0 then
   write('O',' ')
   else
   write('X',' ');
  writeln;
  end;
  readln;
end.
