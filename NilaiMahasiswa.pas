program NilaiMahasiswa;
uses crt;
const
  MAX = 100;

type
  Mahasiswa = record
    nama, npm, nilaiHuruf: string;
    nilaiTugas, nilaiUTS, nilaiUAS, nilaiAkhir: real;
  end;

var
  dataMahasiswa: array[1..MAX] of Mahasiswa;
  i, n: integer;

begin
clrscr;
  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    write('Nama: ');
    readln(dataMahasiswa[i].nama);
    write('NPM: ');
    readln(dataMahasiswa[i].npm);
    write('Nilai Tugas: ');
    readln(dataMahasiswa[i].nilaiTugas);
    write('Nilai UTS: ');
    readln(dataMahasiswa[i].nilaiUTS);
    write('Nilai UAS: ');
    readln(dataMahasiswa[i].nilaiUAS);

    dataMahasiswa[i].nilaiAkhir := (dataMahasiswa[i].nilaiTugas * 0.2) + (dataMahasiswa[i].nilaiUTS * 0.3) + (dataMahasiswa[i].nilaiUAS * 0.5);

    if (dataMahasiswa[i].nilaiAkhir >= 90) then
      dataMahasiswa[i].nilaiHuruf := 'A'
    else if (dataMahasiswa[i].nilaiAkhir >= 80) then
      dataMahasiswa[i].nilaiHuruf := 'A-'
    else if (dataMahasiswa[i].nilaiAkhir >= 76) then
      dataMahasiswa[i].nilaiHuruf := 'B+'
    else if (dataMahasiswa[i].nilaiAkhir >= 72) then
      dataMahasiswa[i].nilaiHuruf := 'B'
    else if (dataMahasiswa[i].nilaiAkhir >= 68) then
      dataMahasiswa[i].nilaiHuruf := 'B-'
    else if (dataMahasiswa[i].nilaiAkhir >= 62) then
      dataMahasiswa[i].nilaiHuruf := 'C+'
    else if (dataMahasiswa[i].nilaiAkhir >= 56) then
      dataMahasiswa[i].nilaiHuruf := 'C'
    else if (dataMahasiswa[i].nilaiAkhir >= 45) then
      dataMahasiswa[i].nilaiHuruf := 'D'
    else
      dataMahasiswa[i].nilaiHuruf := 'E';

    writeln();
  end;

  writeln('Data Nilai Mahasiswa:');
  writeln('--------------------------------------------------------------------');
  writeln('|  No  |    Nama    |   NPM   | Tugas | UTS | UAS | Akhir | Huruf |');
  writeln('--------------------------------------------------------------------');

  for i := 1 to n do
  begin
    writeln('| ', i:4, ' | ', dataMahasiswa[i].nama:10, ' | ', dataMahasiswa[i].npm:7, ' | ', dataMahasiswa[i].nilaiTugas:5:2,
    ' | ', dataMahasiswa[i].nilaiUTS:3:2, ' | ', dataMahasiswa[i].nilaiUAS:3:2, ' | ', dataMahasiswa[i].nilaiAkhir:4:2,
    ' | ', dataMahasiswa[i].nilaiHuruf:4, ' |');
  end;

  writeln('----------------------------------------------------------------------');
end.