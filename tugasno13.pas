program membuatcross;
uses crt;
var i,j:Integer;
begin
 clrscr;
  for i:= 1 to 5 do
 
begin
       for j:= 1 to 5 do
      
       if (i=j) or (i+j=5+1) then
           
        write(j)
       else
              Write(' ');
              writeln;
              
     end;
  readln;
end.
