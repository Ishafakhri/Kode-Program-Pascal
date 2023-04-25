program nested_loop;
uses crt;
var i,j,x,y,tampung: integer;

begin
    clrscr;
    writeln('Masukkan Jumlah Baris : '); read(i);
    writeln('Masukkan jumlah kolom : '); read(j);

    for x := 1 to i do
        begin
        for y := 1 to j do
            begin
                write('x');
                write('o');
            end;
            writeln(' ');
        end;
    readln;
end.