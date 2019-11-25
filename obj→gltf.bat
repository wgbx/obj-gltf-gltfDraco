@echo off
for /r obj %%i in (*.obj) do obj2gltf  -i %%i -o %%i -d
pause & exit