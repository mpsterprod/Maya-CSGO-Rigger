#############################
# Plugins made by mp mpsterprod
# YOUTUDE https://www.youtube.com/channel/UCXvI8JRMsskPQrpQoSLeeBA
# DISCORD MP#9395
# GITHUB https://github.com/mpsterprod
import os
import imp
import maya.cmds as mc
from maya import mel
import maya.OpenMaya as om
# csgo rigger

plugin = imp.load_source('csgo_tool_byMP_release', os.environ['MAYA_LOCATION'] + "/bin/plug-ins/MP_Tools/CSGOTool_v002/csgo_tool_byMP_release.py")


def Plugin_start():
	print 'plug init!'
	#import MP_Animator_Helper as ret
	#ruh = type
	bruh = plugin.MainWindow()
	bruh.show()

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
	if FindFile(folder=os.environ['MAYA_APP_DIR'] + '/' + mc.about(version=1) + '/',
		fl="shelf_CSGO.mel"
		):
		# delete this shelf
		mel.eval('deleteUI -layout ($gShelfTopLevel + "|" + "shelf_CSGO");')

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
		script_string = script_string + line

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
	

# CREATE TOOL
def Install_Tool():
	print 'privet blin'
	# check files
	mass_f = [

	]
	#Plugin_start()

	# add item to tool
	mc.menuItem(
		label="CSGO Rig Tool",
		command=lambda x: Plugin_start(),
		annotation="Tool for Create Rig for CSGO models"
		)

	# add shelf menu
	






def Create_CCC():
	pass