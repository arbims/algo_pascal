program Hello;

function findmin(var t: array of integer ; currenti: integer): integer;
var i , min, imin, max : integer;

begin
    min := 1000;
    max := 4;
    for i := currenti to max do
    begin
        if (min > t[i]) then
        begin
            imin := i;
            min := t[i];
        end
    end;
    findmin := imin;
end;


procedure selectsort(var t: array of integer);
var res , i, min, aux: integer;
begin
    for i := 0 to 4 do
    begin
        min := findmin(t, i);
        if t[i] <> t[min] then
        begin
            aux := t[i];
            t[i] := t[min];
            t[min] := aux; 
        end
    end;
end;


{#
## bubble sort
#}
procedure bubble(var t: array of integer);
var i , j , max , aux: integer;
    
begin
    max := 4;
    aux := 0;
    for i := 0 to max - 1 do
    begin
        for j := i + 1 to max do
        begin
            if t[i] > t[j] then
            begin
                aux := t[i];
                t[i] := t[j];
                t[j] := aux;
            end
        end
    end
end;

procedure print_array(var t: array of integer);
var i : integer;
begin
    for i := 0 to 4 do
    begin
        write(t[i], '|');
    end
end;

var
    t: array [0 .. 4] of integer;
begin
    t[0] := 4 ;
    t[1] := 5 ;
    t[2] := 2 ;
    t[3] := 3 ;
    t[4] := 1 ;
    writeln('===== bublle sort =======');
    bubble(t);
    print_array(t);
    writeln('');
    writeln('===== select sort =======');
    selectsort(t);
    print_array(t);
end.