program tokokomputer;
uses crt;
var 
    namabarang : array[1..10] of string; //Variabel namabarang dengan tipedata array
    jumlahbarang : array[1..10] of integer; //Variabel jumlahbarang dengan tipedata array
    hargabarang : array[1..10] of longint; //Variabel hargabarang dengan tipedata array
    b,i : integer;
    total,tsemua,uang,kembali : longint;
    metode : string;
    
begin
clrscr;
    writeln('Nama  : Rafli Mubin Pratama');
    writeln('kelas : R2-3');
    writeln('NPM   : 202243502392');
    writeln;
    writeln('======================================================');
    writeln('|                   RUMAH KOMPUTER                   |');
    writeln('|====================================================|');
    writeln('| 1. PC                                              |');
    writeln('| 2. KEYBOARD                                        |');
    writeln('| 3. MOUSE                                           |');
    writeln('| 4. MONITOR                                         |');
    writeln('======================================================');
    writeln;
    write('Jumlah item yang akan dibeli : ');readln(b);
    for i := 1 to b do // perulangan untuk melakukan pengisian element array
        begin
            write('Nama barang ke -',i,' : ');readln(namabarang[i]);
            write('Jumlah barang ke - ',i,' : ');readln(jumlahbarang[i]);
            write('Harga barang ke - ',i,' : ');readln(hargabarang[i]);
            writeln;
        end;

    writeln('======================================================');
    writeln('Nama barang        jumlah      harga       harga total');
    writeln('======================================================');

    for i := 1 to b do //perulangan untuk menampilkan output / element array
    begin
        total:= hargabarang[i] * jumlahbarang[i]; 
        writeln(namabarang[i],'                 ',jumlahbarang[i],'         ',hargabarang[i],'          ',total);
        tsemua := tsemua + total; //perhitungan jumlah harga yang harus dibayar
    end;
    writeln('======================================================');
    writeln('Total Belanja : ',tsemua);
    writeln('METODE PEMBAYARAN : ');
    writeln('1. CASH ');
    writeln('2. DEBIT ');
    writeln('--------------------');
    write('PILIH METODE PEMBAYARAN : ');
    readln(metode);
        if (metode ='CASH') or (metode = 'cash') then
            begin
                writeln;
                write('Jumlah uang yang diserahkan : ');readln(uang);
                writeln('Jumlah yang harus dibayar : ',tsemua);
                kembali := uang - tsemua;
                writeln('Kembali : ',kembali);
                writeln;
            end
                else if (metode ='DEBIT') or (metode = 'debit') then
                    begin
                        writeln('Jumlah yang harus dibayar : ',tsemua);
                        write('Masukan Nominal Pembayaran : ');readln(uang);
                         if(uang < tsemua) then
                            begin
                               writeln('TRANSAKSI GAGAL NOMINAL YANG ANDA MASUKAN KURANG');
                               writeln;
                               write('SILAKAN MASUKAN NOMINAL YANG TEPAT');readln(uang);

                                if(uang >= tsemua ) then
                                    begin
                                        writeln('TRANSAKSI BERHASIL');
                                    end;
                            end
                                else
                                    begin
                                        writeln('TRANSAKSI BERHASIL');
                                    end;
                    end;
                        else
                        begin
                            writeln('Metode yang dipilih tidak tersedia silakan pilih metode pembayaran yang lain';)
                        end;    
    writeln('======================================================');
    writeln('              TERIMAKASIH TELAH BERBELANJA            ');
    writeln('======================================================');
    readln;
end.