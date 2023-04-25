program data_mahasiswa;

uses crt;

type
  data = record
    nama, prodi: string;
    npm: int64;
    ipk: real;
    keterangan: string;
  end;

var
  mhs: array[1..100] of data;
  i, n: integer;

begin
clrscr;
  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  for i := 1 to n do
  begin
    write('Nama: ');
    readln(mhs[i].nama);
    write('NPM: ');
    readln(mhs[i].npm);
    write('Program Studi: ');
    readln(mhs[i].prodi);
    write('IPK: ');
    readln(mhs[i].ipk);

    if mhs[i].ipk >= 3 then
      mhs[i].keterangan := 'Sangat Baik'
    else if (mhs[i].ipk >= 2.5) and (mhs[i].ipk < 3) then
      mhs[i].keterangan := 'Cukup Baik'
    else
      mhs[i].keterangan := 'Kurang Baik';
  end;
  writeln('-----------------------------------------');
  writeln('Data Mahasiswa:');
  writeln('-----------------------------------------');

  for i := 1 to n do
  begin
    writeln('Nama: ', mhs[i].nama);
    writeln('NPM: ', mhs[i].npm);
    writeln('Program Studi: ', mhs[i].prodi);
    writeln('IPK: ', mhs[i].ipk:0:2);
    writeln('Keterangan IPK: ', mhs[i].keterangan);
    writeln;
  end;

  readln;
end.