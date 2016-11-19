# Utils

Вспомогательные классы (для Android и Windows)

uArrayHelper:
* CreateMixIntArray(const AStart, ALength: Integer): TArray<Integer>; - Создаём массив (длина - ALength) и заполняем по порядку начиная с AStart, перемешиваем массив
* CreateRandIntArray(const AFrom, ATo, ALength: Integer): TArray<Integer>; - Создаём массив (длина - ALength) и заполняем рандомными неповторяющимися числами в промежутке от AFrom до ATo
* MixArray<T>(var AArray: TArray<T>); - Перемешиваем значения массива любого типа

uConvert:
* Win1251ToKoi8R(const Str: string): string;
* Koi8RToWin1251(const Str: string): string;

uParsing:
* FirstMatch(const Str, TagBegin, TagEnd: string): string; - Находим первое совпадение и вырезаем строку между TagBegin и TagEnd
* AllMatches(const Str, TagBegin, TagEnd: string; Position: Integer): TStringList; - Находим все совпадения начиная с Position и вырезаем строки между TagBegin и TagEnd

Delphi 10.1 Berlin +