program perkalian_matriks;
uses crt;
const
  MAX = 100;
type
  TArray = array[1..MAX, 1..MAX] of integer;

var
  A, B, C: TArray;
  m, n, p, q, i, j, k: integer;

begin
clrscr;
  // Baca ukuran matriks A dan B
  writeln('Masukkan ukuran matriks A (m x n):');
  read(m, n);
  writeln('Masukkan ukuran matriks B (p x q):');
  read(p, q);

  

  // Baca elemen matriks A dan B
  writeln('Masukkan elemen matriks A:');
  for i := 1 to m do
  begin
    for j := 1 to n do
    begin
      read(A[i, j]);
    end;
  end;

  writeln('Masukkan elemen matriks B:');
  for i := 1 to p do
  begin
    for j := 1 to q do
    begin
      read(B[i, j]);
    end;
  end;

  // Hitung perkalian matriks
  for i := 1 to m do
  begin
    for j := 1 to q do
    begin
      C[i, j] := 0;
      for k := 1 to n do
      begin
        C[i, j] := C[i, j] + A[i, k] * B[k, j];
      end;
    end;
  end;

  // Tampilkan hasil perkalian matriks
  writeln('Hasil perkalian matriks A dan B adalah:');
  for i := 1 to m do
  begin
    for j := 1 to q do
    begin
      write(C[i, j], ' ');
    end;
    writeln;
  end;

  readln;
end.
