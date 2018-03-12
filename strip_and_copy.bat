@ECHO OFF
@ECHO Optymalizacja pliku ...
@C:\codetyphon\fpc\fpc32\bin\i386-win32\strip.exe project1.exe
@ECHO ---------------------------------

@ECHO .
@ECHO Kopiowanie pliku ...
@xcopy project1.exe "C:\Praca\FotoCropResize\FotoCropResize.exe" /y
@xcopy szablon.lrf "C:\Praca\FotoCropResize\*.*" /y
@ECHO ---------------------------------

@pause