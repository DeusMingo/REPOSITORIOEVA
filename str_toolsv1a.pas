unit str_toolsv1a;

//Unit by Jeremy Reyes, Venezuela, Nueva Esparta 2020®
//For contact or any code improvement :
//jeremyreyes017@gmail.com

interface
  
function stn(z: string):real;
  
implementation 

uses crt, math;
var
c : string;
b : real;

function stn(z: string):real;
var
a, b, count, decimal, numlength: integer;
s : string;
dec_set, nega: Boolean;
begin
count:= 0;
b:= length(z);
for a:=1 to b do begin 
s:= copy(z, a, 1);
if s = '1' then count:= count+1;
if s = '2' then count:= count+1;
if s = '3' then count:= count+1;
if s = '4' then count:= count+1;
if s = '5' then count:= count+1;
if s = '6' then count:= count+1;
if s = '7' then count:= count+1;
if s = '8' then count:= count+1;
if s = '9' then count:= count+1;
if s = '0' then count:= count+1;
end;
numlength:= count;
for a:=1 to b do begin 
s:= copy(z, a, 1);
if a = 1 then if s = '-' then nega:= true;
if s = '1' then begin
                stn:= stn+(1*(power(10, count-1)));
                count:= count-1;
                end;
if s = '2' then begin
                stn:= stn+(2*(power(10, count-1)));
                count:= count-1;
                end;
if s = '3' then begin
                stn:= stn+(3*(power(10, count-1)));
                count:= count-1;
                end;
if s = '4' then begin
                stn:= stn+(4*(power(10, count-1)));
                count:= count-1;
                end;
if s = '5' then begin
                stn:= stn+(5*(power(10, count-1)));
                count:= count-1;
                end;
if s = '6' then begin
                stn:= stn+(6*(power(10, count-1)));
                count:= count-1;
                end;
if s = '7' then begin
                stn:= stn+(7*(power(10, count-1)));
                count:= count-1;
                end;
if s = '8' then begin
                stn:= stn+(8*(power(10, count-1)));
                count:= count-1;
                end;
if s = '9' then begin
                stn:= stn+(9*(power(10, count-1)));
                count:= count-1;
                end;
if s = ',' then begin
                if dec_set = true then continue else begin
                decimal:= count;
                dec_set:= true;
                end;
                end;
if s = '.' then begin
                if dec_set = true then continue else begin
                decimal:= count;
                dec_set:= true;
                end;
                end;
if s = '0' then count:= count-1 else continue;
end;
if dec_set= true then stn:= stn/(power(10, decimal));
if nega= true then stn:= stn * -1;
end;
end.
