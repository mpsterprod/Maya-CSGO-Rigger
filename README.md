# Maya Rigger For CSGO Models
Rigging tool for Maya 2018/2020, dedicated to creating and implementing custom rigs for all CSGO models.

# Install
- 1 Move MPTools_Plugins.py and MP_Tools into "C:\Program Files\Autodesk\Maya2018\bin\plug-ins".
- 2 Launch Мауа, go to Windows/Settings/Plug-in Manager, tick on MPTools_Plugins.py.
- 3 There now should be new menu atop called MP Tools, get in it and click CSGO RIG Tool.

# How does it work?
This tool currently has 2.5 mods:
  * 1 Character - Creates and applies rig for characters (Only compatible with new rigs (custom_models) Nov 2016 and newer).
  * 2 Weapons - Creates and applies rigs for weapons (Current version of tool only supports v_ models).
  * 3 POV - Creates and applies rig for POV. Not available at the moment. 
  
![Image alt](https://github.com/mpsterprod/Maya-CSGO-Rigger/raw/master/misc/tool.jpg)
  
**In order for tool to work succesfully you need to convert models from CSGO(.mdl) to FBX in a specific way.
The following link contains the converter you need:*** [Source-Blender-Exporter](https://github.com/mpsterprod/Source-Blender-Exporter)
### Character Menu
- 1 Function: Sring which points towars folder with your newly converted models .ModelFromBlender.fbx
- 2 Function - List of models to which tool should apply rig.
  ### List can be edited
  ```
  * Add Model - Adds model...
  * Edit Model - Swaps model for another one of your choice
  * Remove Model - Removes model...
  * Clear All - ... Really?
  ```
- 3 Function - Choose which rig will be applied to the models.
- 4 Function - Allows for you to choose between applying rig to all models in folder which you pointed to in 1st function or applying rig to the models you listed in 2nd function. 
- 5 Function - Where to save newly created rigs.

### Weapons Menu
Same to the Character Menu.
Tho its important to remember that current version of the tool only supports **v_** models, not **w_**  models

### POV Menu
This number is not available now, please call back later. 

# Generate Rigs
+ All menus share the same Generate rigs menu.
+ **Create skeletal mesh** tick - Script will create SkeletalMesh.fbx for each model in the list and put them in a new folder CSGO Skeletal Mesh.
It is critical to do so for the following usage of the tool, due to the fact that exporting SkeletalMeshes from Maya will result in a number of problems.
Dont export rigged meshes, use meshes from CSGO Skeletal Mesh folder. 

![Image alt](https://github.com/mpsterprod/Maya-CSGO-Rigger/raw/master/misc/tool_generate.jpg)

# Using RIG
Following video contains not just RIG usage but also installation. Refer to timecodes in sticky comments. There also will be stream record.
#### [Watch barabulyko video](https://youtu.be/aix00aXFJVw)

# Using rig TEXT VERSION
Drag and drop model of your desire into Maya viewport.

Start animating.

Have fun.

*HOWEVER

- if you need to export this follow this instruction:
- When you are done animating, go to CSGO Skeletal Mesh folder.
- Find the model you were animating and import it into Unreal Engine.
- After that go to Maya, find the root bone *csgo_root* or for weapons *csgo_weapon_root*, select hierarchy underneath, bake it and export it without selecting anything else.
- I recommend incrementing before baking due to destructivity. 
- Then import the animation into UE selecting the skeleton of the model you imported before.
- Since all of the skeletons are the same you can apply the animation to any model in CSGO Skeletal Mesh folder. Use it wisely. 

If anything is unclear - watch video, and if then its still unclear - DM us on discord or twitter to ask questions first hand.

# Warnings
+ 1 **If something doesnt match this readme or your common sense is tingling - RESTART MAYA!**
+ 2 Currently number of weapons rigged is limited. Check *"weapons fbx models"* folder, maybe there will be more at some point in future.
+ 3 Currently tool only saves rigs in  ```(*.ma)```
+ 4 In order to avoid memory leaks restart Maya after any big operations using this tool.
