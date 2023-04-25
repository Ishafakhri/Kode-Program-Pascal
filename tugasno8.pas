program soalno8;
uses crt;
var

k,b:Integer;
begin
 clrscr;
for b:= 1 to 5 do

begin

  for k:= 1 to 5 do
  
if (b=k)then

write('0',' ')
else
if  (b<k)then
write(b,' ':1)
else
write(b*k,' ');
Writeln;
end;
readkey;
end.
