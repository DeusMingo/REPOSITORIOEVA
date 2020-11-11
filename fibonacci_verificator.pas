program fibonacci_verificator;
uses crt, str_toolsv1a;

const

ColorH = 4; 
ColorL = 7;
ColorE = 10;
ColorD = 15; //Blanco

var
  T1, T2, T, Cont, num, show_sec, done: integer;
  numstr : string;
  higher, equal, okey: boolean;

begin
Cont := 0;
T := 0;
T1 := 0;
T2 := 1;
show_sec := 0;
okey:= false;
TextColor(ColorD);
writeln('Bienvenido');
repeat
Writeln ('Introduce un numero para comprobar si pertenece a la secuencia Fibonacci');
textcolor(ColorL);
Writeln ('>Decimales se redondean hacia arriba o abajo desde 0.5 respectivamente');
Writeln ('>Las letras o caracteres invalidos, no tienen valor');
textcolor(ColorD);
readln(numstr);
num := round(stn(numstr));
if num=0 then writeln('>El Número 0 NO pertenece a la Secuencia Fibonacci, Aunque, Es debatible') else
if num<0 then writeln('>Los numeros negativos no pertenecen a la Secuencia Fibonacci') else 
okey := true;
until okey= true;
Write('¿Deseas ver la secuencia desde el inicio, hasta el número ');
textcolor(ColorE);
write(num);
textcolor(ColorD);
writeln('?');
writeln('1 = Si');
Writeln('2 = No');
TextColor(ColorD);
readln(Show_sec);
  repeat
    T := T2;
    T2 := T1 + T2;
    T1 := T;
    cont := cont + 1;
    if T2>num then higher := true else
    if T2=num then equal:= true;
    if show_sec = 1 then begin
    writeln;
    if higher = true then TextColor(ColorH) else
    if equal = true then TextColor(ColorE) else
    TextColor(ColorL);
    write(cont,'.');
    TextColor(ColorD);
    write(T2);
    if higher=true then begin 
    TextColor(ColorH);
    write(' > ');
    TextColor(ColorD);
    end
    else if equal = true then begin
    TextColor(ColorE);
    write(' = ');
    TextColor(ColorD);
    end
     else begin
     TextColor(ColorL);
     write(' < ');
     TextColor(ColorD);
    end;
    write(num);
    end;
    if higher = true then done:=1 else
    if equal = true then done:=1;
  until Done = 1;
  writeln;
 write('El número : ',num);
 if higher = true or Equal=true then
 write(', NO pertenece a la secuencia Fibonacci!') else
 write(', SI pertenece a la secuencia Fibonacci # ',cont);
 readln;
end.
