program tugasno6;
uses crt;
var


k,b:Integer;
begin
 clrscr;

for b:= 1 to 5 do
begin
  for k:= 5 downto 1 do
  
 if (k-b-1)<0 then
   write('O',' ')
   else
   write('X',' ');
  writeln;
  end;
  readln;
end.
