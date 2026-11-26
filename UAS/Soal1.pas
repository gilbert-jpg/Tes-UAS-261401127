program Soal1;
uses crt;

var
  n, kategori, i, total: integer;

begin
    repeat
        write('Masukkan batas akhir bilangan (N): ');
        readln(n);
        if (n <= 0) or (n > 100) then
        writeln('Input tidak valid! Masukkan N antara 1-100');
    until (n >= 1) and (n <= 100);

    writeln('Pilih kategori bilangan:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan (1/2): ');
    readln(kategori);

    total := 0;
    i := 0;

    write('Angka yang lolos penyaringan: ');
    while i < N do
    begin
    i := i + 1;
    if (kategori = 1) and (i mod 2 = 0) then
      continue;
    if (kategori = 2) and (i mod 2 <> 0) then
      continue;
    if (i mod 5 = 0) then
      continue;
    write(i, ' ');
        total := total + i;
    end;
    writeln('Total penjumlahan: ', total);
end.