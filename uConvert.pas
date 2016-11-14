{ *********************************************************************
  *
  * Autor: Efimov A.A.
  * E-mail: infocean@gmail.com
  * GitHub: https://github.com/AndrewEfimov
  *
  ******************************************************************** }

unit uConvert;

interface

uses
  System.SysUtils;

type
  TConvertString = class
  public
    class function Win1251ToKoi8R(const Str: string): string;
    class function Koi8RToWin1251(const Str: string): string;
  end;

const
  Koi8R = 'þàáöäåôãõèéêëìíîïÿðñòóæâüûçøýù÷úÞÀÁÖÄÅÔÃÕÈÉÊËÌÍÎÏßÐÑÒÓÆÂÜÛÇØÝÙ×Ú';
  Win1251 = 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ';

implementation

{ TConvertString }
{
  TStringHelper work only 0-based strings. IndexOf + Chars
  Low and High autodetect 1 or 0 - based string for Platform
}
class function TConvertString.Koi8RToWin1251(const Str: string): string;
var
  I: integer;
begin
  Result := Str;
  for I := Low(Result) to High(Result) do
    if Koi8R.IndexOf(Result[I]) > -1 then
      Result[I] := Win1251.Chars[Koi8R.IndexOf(Result[I])];
end;

class function TConvertString.Win1251ToKoi8R(const Str: string): string;
var
  I: integer;
begin
  Result := Str;
  for I := Low(Result) to High(Result) do
    if Win1251.IndexOf(Result[I]) > -1 then
      Result[I] := Koi8R.Chars[Win1251.IndexOf(Result[I])];
end;

end.
