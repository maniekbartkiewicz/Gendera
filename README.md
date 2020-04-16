# Gendera
Marta Witkowska
Jagoda Zarzeka
Monika Gendera

## Spis treści
* [Informacje ogólne](#informacje-ogólne)
* [Technologie](#technologie)
* [Opis projektu](#opis-projektu)
* [Status](#status)

## Informacje ogólne
Celem naszego projektu jest obliczanie odległości z miasta do miasta w Polsce, a także uzyskiwanie informacji na temat województw i miast. Projekt powstał w ramach pracy zaliczeniowej z przedmiotu "podstawy programowania" na uczelni UAM w Poznaniu.

## Technologie
* R - wersja 3.6.3

### Użyte pakiety:
* "remotes"
* "maps"
* "geosphere"
* "stringr"

## Opis projektu
Nasz program zaczyna się od zainstalowania potrzebnych pakietów. Użytkownik deklaruje użycie pakietów, następnie wywołuje dane, które go interesują. Na potrzeby programu stworzyliśmy bibliotekę, która przechowuje listy z danymi na temat województw i miast. Optymalizuje to pracę programu, który nie ma zbędnych linijek kodu. Deklaruje zmienne, które biorą dane z owej biblioteki plcities. Program dzieli się na dwie części. W pierwszej z nich użytkownik widzi menu i trzy opcje wyboru. Druga część programu  to pętla, która po wpisaniu wyboru dokonanego przez użytkownika, wskazuje programowi którą funkcję ma wykonać. Program należy kompilować linia po linii. 
Pierwsza funkcja sprawdza listę z biblioteki szukając wpisanego przez użytkownika województwa, a gdy znajdzie to zwraca jego powierzchnię. Druga funkcja działa tak samo, ale wyszukuje dane w innej liście i zwraca województwo w którym leży wpisane przez użytkownika miasto. Ostatnia funkcja oblicza odległość w linii prostej między dwoma wskazanymi miastami. Wynik podawany jest w kilometrach.

### Przykład użycia:
* na podstawie województwa wielkopolskiego
1. Wczytujemy zakładkę "Wczytanie danych"
2. Wczytujemy zakładkę "Funkcje"
3. Wybieramy miasta: Poznań, Kalisz
4. Wczytujemy zakładkę "Program 1"
5. Wybieramy opcję 1
6. Wczytujemy zakładkę "Program 2"

## Status
Projekt jest zakończony.
