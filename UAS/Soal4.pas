program Soal4;
uses crt;

function HitungFaktorial(n : integer) : longint;
var
    i     : integer;
    hasil : longint;
begin
    hasil := 1;
    for i := 1 to n do
        hasil := hasil * i;
    HitungFaktorial := hasil;
end;


procedure CekGanjilGenap(x : integer);
begin
    if (x mod 2 = 0) then
        writeln(x, ' adalah bilangan genap')
    else
        writeln('Ini bilangan ganjil');
end;

var
    pilihan, bilangan : integer;

begin
    clrscr;
    writeln('1: Cek Ganjil/Genap');
    writeln('2: Hitung Faktorial');
    write('Pilih menu (1/2): ');
    readln(pilihan);
    writeln;

    case pilihan of
        1: begin
            write('Masukkan sebuah bilangan bulat (x): ');
            readln(bilangan);
            CekGanjilGenap(bilangan);
        end;
        2: begin
            write('Masukkan bilangan bulat positif (n): ');
            readln(bilangan);
            writeln('Nilai faktorial (', bilangan, '!) = ', HitungFaktorial(bilangan));
        end;
    else
        writeln('Pilihan menu tidak valid.');
    end;
end.
