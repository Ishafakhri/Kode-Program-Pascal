program nilai_mahasiswa;
uses crt;
type
  nilai = record
     
   nama,npm,nilai_huruf  : string;
     
    nilai_tugas,nilai_uts,nilai_uas : integer;
     
    nilai_akhir : real;
    
  end;

var
  data : array [1..100] of nilai;
  i, n : integer;

function hitung_nilai_akhir(tugas, uts, uas : integer) : real;
begin
  hitung_nilai_akhir := (tugas * 0.2) + (uts * 0.3) + (uas * 0.5);
end;

function hitung_nilai_huruf(nilai_akhir : real) : string;
begin
  if nilai_akhir >= 90 then
    hitung_nilai_huruf := 'A'
  else if nilai_akhir >= 80 then
    hitung_nilai_huruf := 'A-'
  else if nilai_akhir >= 76 then
    hitung_nilai_huruf := 'B+'
  else if nilai_akhir >= 72 then
    hitung_nilai_huruf := 'B'
  else if nilai_akhir >= 68 then
    hitung_nilai_huruf := 'B-'
  else if nilai_akhir >= 62 then
    hitung_nilai_huruf := 'C+'
  else if nilai_akhir >= 56 then
    hitung_nilai_huruf := 'C'
  else if nilai_akhir >= 45 then
    hitung_nilai_huruf := 'D'
  else
    hitung_nilai_huruf := 'E';
end;

begin
clrscr;
  writeln('Masukkan jumlah mahasiswa : ');
  readln(n);

  for i := 1 to n do
  begin
    writeln('Data mahasiswa ke-', i);
    write('Nama : ');
    readln(data[i].nama);
    write('NPM : ');
    readln(data[i].npm);
    write('Nilai Tugas : ');
    readln(data[i].nilai_tugas);
    write('Nilai UTS : ');
    readln(data[i].nilai_uts);
    write('Nilai UAS : ');
    readln(data[i].nilai_uas);

    data[i].nilai_akhir := hitung_nilai_akhir(data[i].nilai_tugas, data[i].nilai_uts, data[i].nilai_uas);
    data[i].nilai_huruf := hitung_nilai_huruf(data[i].nilai_akhir);

    writeln();
  end;

  writeln('Data nilai mahasiswa : ');
  writeln('No.  | Nama Mahasiswa        | NPM          | Tugas | UTS | UAS | Nilai Akhir | Nilai Huruf |');
  writeln('----------------------------------------------------------------------------------------');

  for i := 1 to n do
  begin
    writeln(i:3, '  | ', data[i].nama:20, ' | ', data[i].npm:12, '  | ', data[i].nilai_tugas:5, '  | ', data[i].nilai_uts:3, ' | ', data[i].nilai_uas:3, '  | ', data[i].nilai_akhir:10:2, ' | ', data[i].nilai_huruf:6);
  end;

  readln;
end.
