# -*- coding: utf-8 -*-
######################################################################
# SCRIPT MADE BY MP
# YOUTUDE https://www.youtube.com/channel/UCXvI8JRMsskPQrpQoSLeeBA
# DISCORD MP#9395
# GITHUB https://github.com/mpsterprod
######################################################################
import os
import sys
import imp
import maya.OpenMayaMPx as OpenMayaMPx
import maya.cmds as mc
from maya import mel
import maya.OpenMaya as om

# this plugin manager it's beta!

#import MP_Tools.CSGOTool_v002.csgo_tool_byMP_release as mp_rigger

#####################################################################
####### GLOBAL VARIABLES
#####################################################################

PLUGINS_DIRECORY = os.environ['MAYA_LOCATION'] + "/bin/plug-ins/"    #C:/Program Files/Autodesk/Maya2018 + /bin/plug-ins

# all tools 

TOOLS = [
	#"CSGOTool_v002",
	#"HumanIK_Retarger",
	#"MDL Viewer",  maybe soon
	#""
]

# check folder scripts

init_tools = []

for folder in os.listdir(PLUGINS_DIRECORY + 'MP_Tools/'):
	for tool in TOOLS:
		if tool == folder:
			init_tools.append(tool)


def AddCustomMenu(menu_name=str,func=str):
	return

def AddButtonToShelf(shelf_n=str,code=str):
	pass


'''
def csgo_rig():
	dd = mp_rigger.MainWindow()
	dd.show()

def About():
	Install_plug()
	mc.confirmDialog(
		message="Custom Tools to work in Maya \n\n -Made by MP mpsterprod \n -Version 2.0.0",
		button=['OK'],
		defaultButton='OK', 
		title="About MP Tools")
'''
def UnloadPlugin():
	mc.unloadPlugin("MPTools_Plugins.py")

def ReloadPlugn():
	mc.unloadPlugin("MPTools_Plugins.py")
	mc.loadPlugin("MPTools_Plugins.py")

def Create_CSGO_RIG(shelf_name=str):
	# create shelf
	mel.eval('addNewShelfTab "' + shelf_name + '" ;')
	# CREATE BUTTON
	# get csgo rig
	csgo_rig_file = open(PLUGINS_DIRECORY + "MP_Tools/CSGOTool_v002/csgo_tool_byMP_release.py","r")
	SCRIPT_DATA = ''

	for code in csgo_rig_file:
		SCRIPT_DATA = SCRIPT_DATA + code

	image = PLUGINS_DIRECORY + "MP_Tools/CSGOTool_v002/script_ls.png"


	if SCRIPT_DATA != '':
		mc.shelfButton(
		parent=shelf_name,
		annotation = "CSGO Rig Tool",
		image = image,
		command=SCRIPT_DATA,
		)
	del SCRIPT_DATA, image

	# GET DOC MAYA 
	path_script = os.environ['MAYA_APP_DIR'] + '/' + mc.about(version=1) + '/prefs/shelves/'+ shelf_name
	mc.saveShelf("CSGO",path_script)

########################
### ONLY CSGO TOOLS
########################

def Open_PY(fl=str):
	# open SMD
	f = open(fl,'r')
	fll = f.readlines()
	f.close()
	fll = [line.rstrip() for line in fll]
	return fll

def FindFile(folder=str,fl=str):
	if_Find = False
	for f in os.listdir(folder):
		if f == fl:
			if_Find = True
			break
	return if_Find

def DeleteCSGOShelf():
	if FindFile(folder=os.environ['MAYA_APP_DIR'] + '/' + mc.about(version=1) + '/prefs/shelves/',
		fl="shelf_CSGO.mel"
		):
		mel.eval('deleteShelfTab "CSGO" ;')
		# delete this shelf
		#mel.eval('deleteUI -layout ($gShelfTopLevel + "|" + "shelf_CSGO");')

# base to func

Maya_Global = om.MGlobal()

def shelf_create():
	# get doc maya folder
	path_script = os.environ['MAYA_APP_DIR'] + '/' + mc.about(version=1) + '/'

	# check file shelf_CSGO
	ifFindShelf = False
	for f in os.listdir(path_script+'prefs/shelves/'):
		if f == "shelf_CSGO.mel":
			ifFindShelf = True
			break
	if ifFindShelf:
		# delete old
		mel.eval('deleteUI -layout ($gShelfTopLevel + "|" + "shelf_CSGO");')

	# create new shelf
	mel.eval('addNewShelfTab "' + "CSGO" + '" ;')

	# parse stript data
	LIST_FILE = Open_PY(fl=os.environ['MAYA_LOCATION'] + "/bin/plug-ins/MP_Tools/CSGOTool_v002/csgo_tool_byMP_release.py")

	script_string = ''

	for line in LIST_FILE:
		script_string = script_string + line + '\n'

	if script_string == '':
		del LIST_FILE, script_string 
		Maya_Global.displayerror("no file data in csgo_tool_byMP_release.py") 
		return

	# create button
	image = os.environ['MAYA_LOCATION'] + '/bin/plug-ins/MP_Tools/CSGOTool_v002/script_ls.png'

	mc.shelfButton(
		parent="CSGO",
		annotation = "CSGO Rig Tool",
		image = image,
		command=script_string,
		)

	# save shelves 
	path_script = os.environ['MAYA_APP_DIR'] + '/' + mc.about(version=1) + '/prefs/shelves/CSGO'
	mc.saveShelf("CSGO",path_script)



#################################################
######################################
########################




def Install_plug():
	print 'install plugins...'
	# add to init_tools 
	obj = os.listdir(PLUGINS_DIRECORY+'/')
	init_fold = False
	for fld in os.listdir(PLUGINS_DIRECORY+'/'):
		if fld == 'MP_Tools':
			init_fold = True
			break

	if not init_fold:
		return
	CSGO = False
	for tools in os.listdir(PLUGINS_DIRECORY+'/MP_Tools/'):
		# open folders
		init_f = ''
		if not os.path.isdir(PLUGINS_DIRECORY+'/MP_Tools/'+tools):
			continue
		print 'TOOL folder = '+ tools
		istall_d = False
		for plug_files in os.listdir(PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/'):
			if plug_files == "install_files.txt":
				# open install_files.txt
				istall_d = True
				continue
		file_string = []

		if istall_d:
			inst_f = open(PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/install_files.txt','r')
			for x in inst_f:
				if x[0]!='/':
					file_string.append(x)
			inst_f.close()
			del inst_f
		else:
			continue

		if file_string == []:
			continue
		file_string = [line.rstrip() for line in file_string]
		
		# check files in plug folder
		lines = []
		for fil in file_string:
			if fil[0]=='/':
				continue
			# check in folder
			file_st = fil.replace('\n','').replace('\t','').replace('*','')
			for check in os.listdir(PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/'):
				if check == file_st:
					lines.append(check)
					break
		# check len
		if lines == []:
			continue	
		if len(lines)!=len(file_string):
			continue
		del lines
		# open root and install plugin
		string_i = ''
		for str_f in file_string:
			if str_f[0]=='*':
				string_i = str_f.replace('*','')
				continue
		if string_i =='':
			continue
		#print ' AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
		pfi = imp.load_source('MP_Tools.'+tools+'.'+string_i[:len(string_i)-3], PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/'+string_i)
		pfi.Install_Tool()
		del file_string
		TOOLS.append(tools)
		if tools == "CSGOTool_v002":
			CSGO = True
	return CSGO

'''
		print tools
		for plug_files in os.listdir(PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/'):
			# check plugins
			if plug_files == "install_files.txt":
				# open install_files.txt
				inst_f = open(PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/install_files.txt','r')
				if inst_f is None or inst_f == []:
					break
				else:
					print 'da'


					file_string = []
					for x in inst_f:
						file_string.append(x)
					inst_f.close()
					print 'fefs = '+str(file_string)



					if file_string == []:
						break
					# check files in plug folder
					lines = []
					for fil in file_string:
						# check in folder
						for check in os.listdir(PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/'):
							#print check
							if fil[0]!='/':
								continue
							else:
								if fil.replace('*','')==check.replace('*',''):
									lines.append(fil)
					print lines
					if lines==[]:
						break
					print ' AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
					if len(lines)!=len(file_string):
						break
					# istall file name
					print ' AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
					# open root and install plugin
					string_i = ''
					for str_f in file_string:
						if str_f[0]=='*':
							string_i = str_f.replace('*','')
							break
					if string_i =='':
						break
					#print ' AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'

					pfi = imp.load_source('MP_Tools.'+tools+'.'+string_i, PLUGINS_DIRECORY+'/MP_Tools/'+tools+'/'+string_i+'.py')
					pfi.Install_Tool()
					del file_string, lines
'''
def About():
	#print ' hahahhahah'
	mc.confirmDialog(
		message="Custom Tools to work in Maya \n\n -Made by MP mpsterprod \n -Version 2.0.0",
		button=['OK'],
		defaultButton='OK', 
		title="About MP Tools")

def CreateMyShelf():
	# check folder
	# check prefs
	path_script_doc = os.environ['MAYA_APP_DIR'] + '/' + mc.about(version=1)  #C:/Users/userName/Documents/maya   \2018\scripts\CSGOtool

	# check CSGO shelf 
	shelves_mel = path_script_doc + '/prefs/shelves/'

	mel_fls = list(filter(lambda x: x.endswith('.mel'), os.listdir(shelves_mel)))

	CSGO_SHELF = False

	for mel_shelf in mel_fls:
		if mel_shelf == "shelf_CSGO.mel":
			CSGO_SHELF = True
			break

	modifications_shelf = False
	Full_Update = False
	New_Shelfs = False

	if CSGO_SHELF:
		# if true find "shelf_CSGO":
		# modifications or full update?
		dialog = mc.confirmDialog( 
			title='Update CSGO Shelf', 
			message='Update your shelf?', 
			button=['Update','All Update','Cancel'], 
			defaultButton='Yes', 
			cancelButton='Cancel', 
			dismissString='No' )

		if dialog == "Cancel":
			return
		elif dialog == "Update":
			# add motifications
			# check new tools 				DONT WORK
			return #                    
		elif dialog == "All Update":
			# create new all Shelf
			New_Shelfs = True
		
	# get plugin


	return	

	# create Shelf and CSGO button
	if New_Shelfs:
		mel.eval('deleteShelfTab "CSGO" ;')
		# delete old
		Create_CSGO_RIG(shelf_name="CSGO")
		return

	# new create
	#Create_CSGO_RIG(shelf_name="CSGO")
	return


def Create_Plugin_Menu():
	# remove old
	if mc.control("MPsterprodTools", exists=True):
		mc.deleteUI("MPsterprodTools", menu=True)

	mc.setParent(mel.eval("$tmp = $gMainWindow"))

	pl_menu = mc.menu("MPsterprodTools", label="MP Tools", tearOff=True)

	# create tool menu
	tools_menu = mc.menuItem(label="Tools", subMenu=True)		

	# Version 0.02{
		# TOOLS:
			#                 CSGO models Rigger

			#                 mdl Viewer (soon)

			#                 Cod Weapon Builder

			#                 Maya Ascii student fixer
	#}

	# CREATE CSGO RIGGER 
	STRING_csgo_rigger = ""

	# check folders

	
	#rigger_cs = open(sctr,"r")
	#for code in rigger_cs:
	#	STRING_csgo_rigger = STRING_csgo_rigger + code
	#print STRING_csgo_rigger
	

	def csgo_rigger_call(script_python=str):
		mel.eval(
			'$cs_rgmp = ' + '"' +script_python + '";'
			'python($cs_rgmp);'
			)

	for dddd in init_tools:
		if dddd == "CSGOTool_v002":
			STRING_csgo_rigger = "dwqdqwdq"
		
	# Install Menu
	for tll in init_tools:
		break
		if tll == 'CSGOTool_v002':
			# check base
			plugin_f = os.listdir(PLUGINS_DIRECORY + 'MP_Tools/CSGOTool_v002/')
			good = False
			for fil in plugin_f:
				if fil == 'install_files.txt':
					pass


	csgo_shelf = Install_plug()

	'''
	if STRING_csgo_rigger != "":
		mc.menuItem(
			label="CSGO Rig Tool",
			command=lambda x: csgo_rig(),
			annotation="Tool for Create Rig for CSGO models"
			)
	'''
	mc.menuItem(
		label="MDL Viewer (maybe soon)",
		command="print 'mdl viewer'",
		annotation="fefwef"
		)

	mc.menuItem(
		label="Maya ASCII Fixer (maybe soon)",
		command="print 'fix maybe Ascii files'",
		annotation="fefwef"
		)

	mc.setParent(tools_menu, menu=True)

	mc.setParent(pl_menu, menu=True)

	mc.menuItem(divider=True)

	if csgo_shelf:
		# create plug
		mc.menuItem(
			label="Update/Create CSGO Shelf",
			command=lambda x: shelf_create(),
			annotation="fefwef"
		)
		mc.menuItem(
			label="Delete CSGO Shelf",
			command=lambda x: DeleteCSGOShelf(),
			annotation="fefwef"
		)


	mc.menuItem(
		label="Reload Plugins",
		command=lambda x: ReloadPlugn(),
		annotation="fefwef"
		)

	mc.menuItem(
		label="Unload Plugins",
		command=lambda x: UnloadPlugin(),
		annotation="fefwef"
		)

	mc.menuItem(
		label="About",
		command=lambda x: About(),
		annotation="fefwef"
		)

#Create_Plugin_Menu()


# init plug

def initializePlugin(m_object):
    """Register the plugin"""
    m_plugin = OpenMayaMPx.MFnPlugin(m_object, "MP_Plugins", "2.0", "Any")
    try:
       print('est')
    except RuntimeError:
       print('nety hahaha')
    Create_Plugin_Menu()

def uninitializePlugin(m_object):
    """Unregister the plugin"""
    m_plugin = OpenMayaMPx.MFnPlugin(m_object)
    try:
        print('est')
    except RuntimeError:
    	print('nety hahaha')

    if mc.control("MPsterprodTools", exists=True):
        mc.deleteUI("MPsterprodTools", menu=True)
        
