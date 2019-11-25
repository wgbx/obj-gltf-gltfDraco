@echo
:cover
for /r OBJ %%i in (*.obj) do call obj23dtiles -i %%i -o gltf/*.gltf
goto draco
:draco
for /r gltf %%a in (*.gltf) do call gltf-pipeline -i %%a -d
goto move
:move
mkdir draco
for /r gltf %%q in (*processed.gltf) do call move %%q draco
goto rename
:rename
Setlocal Enabledelayedexpansion
set "str=-processed"
cd draco
for /f "delims=" %%i in ('dir /b *.gltf') do (
set "var=%%i" & ren "%%i" "!var:%str%=!")
pause & exit