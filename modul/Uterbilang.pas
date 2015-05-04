unit Uterbilang;

interface
uses SysUtils, StrUtils;
function terbilang(bilangan: real): string;
implementation

function terbilang(bilangan: real): string;
var
  turahan: int64;
  i: int64;
const
  y: array[1..9] of integer = (1, 2, 3, 4, 5, 6, 7, 8, 9);
begin
  if bilangan > high(i) then
    exit;
  turahan := round(bilangan) mod 10;
  case turahan of
    1: result := 'Satu';
    2: result := 'Dua';
    3: result := 'Tiga';
    4: result := 'Empat';
    5: result := 'Lima';
    6: result := 'Enam';
    7: result := 'Tujuh';
    8: result := 'Delapan';
    9: result := 'Sembilan';
    0: Result := 'Nol';
  end;
  //hitung 10-99;
  if bilangan < 100 then
  begin
    case round(bilangan) div 10 of
      0: result := result;
      1:
        begin
          if bilangan / 10 = 1 then
          begin
            result := 'Sepuluh ';
          end
          else if round(bilangan) mod 10 = 1 then
          begin
            result := 'Sebelas';
          end
          else
            result := result + ' Belas';
        end;
    else
      begin
        if round(bilangan) mod 10 = 0 then
          result := terbilang(round(bilangan) div 10) + ' Puluh'
        else
          result := terbilang(round(bilangan) div 10) + ' Puluh ' + result;
      end

    end;
  end;
  if (bilangan >= 100) and (bilangan < 1000) then
  begin
    case round(bilangan) div 100 of
      1:
        begin
          if bilangan / 100 = 1 then
          begin
            result := 'Seratus';
          end
          else if round(bilangan) mod 10 = 0 then
          begin
            result := 'Seratus ' + terbilang(round(bilangan) mod 100);
          end
          else
            result := 'Seratus ' + terbilang(round(bilangan) mod 100);
        end
    else
      begin
        if bilangan / 100 = y[strtoint(leftstr(floattostr(bilangan), 1))] then
        begin
          result := terbilang(round(bilangan) div 100) + ' Ratus ';
        end
        else if round(bilangan) mod 10 = 0 then
        begin
          result := terbilang(round(bilangan) div 100) + ' Ratus ' +
            terbilang(round(bilangan) mod 100);
        end
        else
          result := terbilang(round(bilangan) div 100) + ' Ratus ' +
            terbilang(round(bilangan) mod 100);
      end
    end

  end;

  if (bilangan >= 1000) and (bilangan < 1000000) then
  begin
    case round(bilangan) div 1000 of
      1:
        begin
          if bilangan / 1000 = 1 then
          begin
            result := 'Seribu';
          end
          else if round(bilangan) mod 10 = 0 then
          begin
            result := 'Seribu ' + terbilang(round(bilangan) mod 1000);
          end
          else
            result := 'Seribu ' + terbilang(round(bilangan) mod 1000);
        end
    else
      if round(bilangan) mod 1000 = 0 then
      begin
        result := terbilang(round(bilangan) div 1000) + ' Ribu';
      end
      else
        result := terbilang(round(bilangan) div 1000) + ' Ribu ' +
          terbilang(round(bilangan) mod 1000);
    end
  end; // tekan satu juta kurang 1
  if (bilangan >= 1000000) and (bilangan < 1000000000) then
  begin
    if round(bilangan) mod 1000000 = 0 then
    begin
      result := terbilang(round(bilangan) div 1000000) + ' Juta ';
    end
    else
      result := terbilang(round(bilangan) div 1000000) + ' Juta ' +
        terbilang(round(bilangan) mod 1000000);

  end; //satu juta sampai satu milyar kurang 1
  if (bilangan >= 1000000000) and (bilangan < 10000000000000) then
  begin
    if round(bilangan) mod 1000000000 = 0 then
    begin
      result := terbilang(round(bilangan) div 1000000000) + ' Milyar';
    end
    else
      result := terbilang(round(bilangan) div 1000000000) + ' Milyar ' +
        terbilang(round(bilangan) mod 1000000000);
  end;
  if (bilangan >= 1000000000000) and (bilangan <= high(i)) then
    //Trilyun ke atas sampai bilangan paling tinggi dalam int 64;
  begin
    if round(bilangan) mod 1000000000000 = 0 then
    begin
      result := terbilang(round(bilangan) div 1000000000000) + ' Trilyun ';
    end
    else
      result := terbilang(round(bilangan) div 1000000000000) + ' Trilyun ' +
        terbilang(round(bilangan) mod 1000000000000);
  end; //finish ndes

end;

end.

