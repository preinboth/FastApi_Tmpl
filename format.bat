black src\.
rem Überprüfen der Ausgabe von black
if errorlevel 1 (
    echo Fehler bei black
    exit /b 1
)

isort src\.
rem Überprüfen der Ausgabe von isort
if errorlevel 1 (
    echo Fehler bei isort
    exit /b 1
)

flake8 src\.
rem Überprüfen der Ausgabe von flake8
if errorlevel 1 (
    echo Fehler bei flake8
    exit /b 1
)