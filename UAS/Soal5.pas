program Soal5;
uses crt;

var
    n, i, j: integer;

begin
    clrscr;
    write('N = ');
    readln(n);
    writeln;

    for i := 1 to n do
    begin
        for j := 1 to i do
        begin
            if (j mod 2 <> 0) then
                write('1')
            else
                write('0');
            if j < i then
                write(' ');
        end;
        writeln;
    end;
end.
