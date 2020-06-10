# Maya Rigger For CSGO Models
Maya tool for create rigs for csgo models!

# Setup
- 1 Закиньте MPTools_Plugins.py и MP_Tools в "C:\Program Files\Autodesk\Maya2018\bin\plug-ins"
- 2 Запустите Мауа, затем зайдите Windows/Settings/Plug-in Manager
- 3 Активируйте плагин MPTools_Plugins.py
- 4 Вверху появится меню MP Tools
- 5 Запустите CSGO Rig Tool

# How it works
Данная тулза имеет 3 мода создания рига:
  * 1 Для персонажей со новым скелетом (все модели имеющие скелет как у моделей из папки /custom_models/)
  * 2 Для оружия (в данной версии используются только v_ модели из папки "weapons fbx models")
  * 3 Для моделей от первого лица (в данной версии не реализованно)
  
![Image alt](https://github.com/mpsterprod/Maya-CSGO-Rigger/raw/master/misc/tool.jpg)
  
### Character Mode
- 1 Первый параметр - путь до папки с .ModelFromBlender.fbx моделями
- 2 Второй параметр - добавление моделей в список
  ### Список можно редактировать
  ```
  * Add Model - add fbx to list
  * Edit Model - replace with a new one fbx
  * Remove Model - remove select fbx from list
  * Clear All - clear all list
  ```
- 3 Третий параметр - выбор какой риг из папки "/Your Rigs" использовать при сборке
- 4 Четвертый параметр - дает возможность добавить в список все .ModelFromBlender.fbx файлы из папки
- 5 Пятый параметр - путь для сохранения ригой и скелетал мешей 

### Weapons Mode
+ 1 Первый параметр - путь до папки weapons fbx models
+ 2 Второй параметр - добавление моделей в список (аналогично как в Character Mode)
+ 3 Третий параметр - все файлы из папки или из списка (аналогично как в Character Mode)
+ 4 Четвертый параметр - путь для сохранения ригой и скелетал мешей

### Pov Mode
В данной версии не реализованно.

# Generate Rigs
+ Во все модах принцип и параметры одинаковы.
+ Есть параметр Create Skeletal Mesh - скрипт создаст папку (CSGO Skeletal Mesh) и создаст SkeletalMesh в .fbx для каждой модели!

![Image alt](https://github.com/mpsterprod/Maya-CSGO-Rigger/raw/master/misc/tool_generate.jpg)

# Animations Weapons and Character
#### [Watch barabulyko video](https://www.youtube.com/channel/UCXvI8JRMsskPQrpQoSLeeBA)

# Warning 
+ 1 Данная версия не поддерживает .fbx кроме .ModelFromBlender.fbx сгенерированных через [Source-Blender-Exporter](https://github.com/mpsterprod/Source-Blender-Exporter)
+ 2 Данная версия ограничена в колличестве создающихся оружий (вы можете проверять "weapons fbx models", возможно в будущем там станет больше моделей)
+ 3 Данная версия сохраняет файлы ригов только в MayaAscii ```(*.ma)```
+ 4 Если у вас не будет ригов в "Your Rigs" - скрипт напишет вам об этом!
+ 5 Если происходят какие либо ошибки просто перезапустите Maya!
+ 6 Желательно перезапускать Мауа после каждой масштабной генерации для отчистки память и избежания ее утечки!
