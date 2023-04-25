program nilai_terbesar;
uses crt;
var
  input: array[1..100] of integer;
  hitung, i, max_num, min_num, total: integer;
  avg : real;
begin
  clrscr;
  writeln('##  Program Pascal Array  ##');
  writeln('=========================');
  writeln;
  total := 0;
  write('Input jumlah element array: ');
  readln(hitung);
  writeln;
 
  writeln('Input ',hitung,' angka (dipisah dengan enter): ');
  
 
  // simpan setiap angka yang diinput ke dalam array
  for i := 1 to hitung do
  begin
    write('Angka ke-',i,': ');
    readln(input[i]);

    if (i = 1) then
      begin
        max_num := input[i];
        min_num := input[i];
      end
    else
      begin
        if (input[i] > max_num) then
          max_num := input[i];
        if (input[i] < min_num) then
          min_num := input[i];
      end;
      total :=  total + input[i];
  end;
  writeln;
 
 
  clrscr;
  writeln('=========================');
  writeln('      Hasil Penentuan    ');
  writeln('=========================');
  writeln('Angka terbesar adalah : ', max_num);
  writeln('Angka Terkecil adalah : ', min_num);
  writeln('Total Nilai adalah : ', total);
  writeln('Rata-rata nilai adalah : ', (total/max_num):0:2);
  
  readln;
end.