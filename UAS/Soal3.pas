program Soal3;
uses crt;

type
    TMahasiswa = record
        NIM        : string[15];
        Nama       : string[50];
        NilaiTugas : real;
        NilaiUAS   : real;
        NilaiAkhir : real;
    end;

var
    dataMhs : array[1..30] of TMahasiswa;
    n, i    : integer;
    status  : string;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1 - 30): ');
    readln(n);

    for i := 1 to n do
    begin
        writeln;
        writeln('Data Mahasiswa ke-', i);
        with dataMhs[i] do
        begin
            write('NIM         : ');
            readln(NIM);
            write('Nama        : ');
            readln(Nama);
            write('Nilai Tugas : ');
            readln(NilaiTugas);
            write('Nilai UAS   : ');
            readln(NilaiUAS);

            NilaiAkhir := (0.40 * NilaiTugas) + (0.60 * NilaiUAS);
        end;
    end;

    for i := 1 to n do
    begin
        if dataMhs[i].NilaiAkhir >= 65 then
            status := 'LULUS'
        else
            status := 'TIDAK LULUS';

        writeln(status);
    end;
end.
