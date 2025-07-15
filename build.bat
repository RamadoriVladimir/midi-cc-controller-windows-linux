@echo off

REM # Limpia los archivos temporales
if exist .\bin\mccc.exe del .\bin\mccc.exe

REM # Compila o no chango
g++ ^
-std=c++17 ^
-Wall ^
-I.\include ^
-I.\include\vendors\fltk\include ^
-I.\include\vendors\rtmidi\include ^
-L.\lib ^
-L.\include\vendors\fltk\lib ^
-L.\include\vendors\rtmidi\lib ^
.\src\Application.cpp ^
.\src\MidiLayoutParser.cpp ^
.\src\MidiPresetParser.cpp ^
.\src\MainWindow.cpp ^
.\src\MidiService.cpp ^
.\src\SliderControl.cpp ^
.\src\Utils.cpp ^
.\src\main.cpp ^
-o .\bin\mccc.exe ^
-lfltk ^
-lfltk_forms ^
-lfltk_images ^
-lrtmidi ^
-lwinmm ^
-lws2_32 ^
-lgdi32 ^
-lgdiplus ^
-lopengl32

if %errorlevel% equ 0 (
    echo.
    echo Compilacion exitosa.
    echo El ejecutable se encuentra en .\bin\mccc.exe
) else (
    echo.
    echo Ocurrio un error durante la compilacion.
)

pause