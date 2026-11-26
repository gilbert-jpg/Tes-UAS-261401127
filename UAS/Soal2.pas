program Soal2;
uses crt;

var
    skor_ujian : array[1..50] of integer;
    i, n, nilai_maks, idxmaks, nilai_min, idxmin : integer;
    total : longint;
    rata_rata : real;
    ada_di_atas : boolean;

begin
    clrscr;
    write('Masukkan jumlah peserta (1 - 50): ');
    readln(n);

    for i := 1 to n do
    begin
        write('Masukkan nilai peserta ke-', i, ': ');
        readln(skor_ujian[i]);
    end;

    nilai_maks := skor_ujian[1];
    idxmaks := 1;
    nilai_min := skor_ujian[1];
    idxmin := 1;
    total := 0;


    for i := 1 to n do
    begin
        if skor_ujian[i] > nilai_maks then
        begin
            nilai_maks := skor_ujian[i];
            idxmaks := i;
        end;

        if skor_ujian[i] < nilai_min then
        begin
            nilai_min := skor_ujian[i];
            idxmin := i;
        end;

        total := total + skor_ujian[i];
    end;

    rata_rata := total / n;

    writeln('Nilai tertinggi : ', nilai_maks, ' (berada pada indeks ke-', idxmaks, ')');
    writeln('Nilai terendah  : ', nilai_min, ' (berada pada indeks ke-', idxmin, ')');
    writeln('Rata-rata nilai : ', rata_rata:0:2);

    write('Daftar indeks peserta di atas rata-rata kelas: ');
    ada_di_atas := false;
    for i := 1 to n do
    begin
        if skor_ujian[i] > rata_rata then
        begin
            write(i, ' ');
            ada_di_atas := true;
        end;
    end;

    if not ada_di_atas then
        write('Tidak ada');
end.