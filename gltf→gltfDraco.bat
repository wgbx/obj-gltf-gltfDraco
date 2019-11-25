@echo off
for /r gltf %%i in (*.gltf) do gltf-pipeline -i %%i -o %%i -d
pause & exit