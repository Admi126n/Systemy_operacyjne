#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
# Proszę unikać wykorzystywania narzędzia `find` w ramach bieżących zajęć.
#
# Nie przywiązujemy wagi do środowiska roboczego – zakładamy, że jego pliki,
# inne niż te podane wprost w treści zadań, mogą ulec zmianie, a przygotowane
# rozwiązania nadal powinny działać poprawnie (robić to, o czym zadanie mówi).
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 5.
# Odnaleźć nazwy plików z katalogu `dane/icao/`, których brakuje w katalogu
# `dane/backup/`. Nie zwracamy uwagi na zawartość ani ustawienia istniejących
# plików, porównujemy tylko ich nazwy. Każdą nazwę wyświetlić w osobnej linii.
#

FILES1="/Users/adam/Documents/SO_laby/lab2/dane/icao/*"
FILES2="/Users/adam/Documents/SO_laby/lab2/dane/backup/"

for file in $FILES1
do
    if [ ! -f $FILES2"$( basename $file)" ]; then
        basename $file
    fi
done
