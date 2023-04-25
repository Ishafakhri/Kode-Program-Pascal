program menghitung_nilai_rata;

uses crt;
var
a,b,c,total : integer;
rata : real;

begin
clrscr;

    writeln('Program Menghitung Nilai Rata-Rata');
    writeln('----------------------------------');
    writeln;
    writeln('Masukkan Jumlah Bilangan : '); read(a);
    writeln('Masukkan Bilangannya : ');
    total := 0;

    for c := 1 to a do
        begin
            write('Bilangan ke-',c,':'); read(b);
            total := total + b;
        end;
        
        rata := total/a;
        writeln;
        writeln('Total Bilangan : ',total:6);
        writeln('Rata-rata : ', rata:6:2);
    readkey;
end.