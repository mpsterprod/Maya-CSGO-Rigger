# -*- coding: utf-8 -*-
######################################################################
# SCRIPT MADE BY MP
# YOUTUDE https://www.youtube.com/channel/UCXvI8JRMsskPQrpQoSLeeBA
# DISCORD MP#9395
# GITHUB https://github.com/mpsterprod
######################################################################
# this version
# for all character models from "custom_models" folder!
# for only v_ weapons - create view to world mode!
# for all weapons from file in script folder "weapons_base.txt"
######################################################################
# script no perfect but everything works.
# there may be bugs, if this happens to you, restart the script, if everything is still bad, make a restart Maya!
######################################################################
import os
import sys
import time
import math

import maya.cmds as mc
import maya.cmds as cmds
import maya.OpenMayaUI as omui
import pymel.core as pm
import maya.mel as mel
import maya.OpenMayaUI as apiUI
from maya import mel


# import Pyside2      # work for maya version 2017 - 2020
from PySide2 import QtCore
from PySide2 import QtUiTools
from PySide2 import QtWidgets
from PySide2 import QtGui
from shiboken2 import wrapInstance




#####################################################################
####### GLOBAL VARIABLES
#####################################################################

Pathversion = os.path.abspath(os.curdir)
arrversion = Pathversion.replace('\\', ' ').split()
version = str(mc.about(version=True))   #version maya 
#print(version)
path_script = os.environ['MAYA_APP_DIR']    #C:/Users/userName/Documents/maya   \2018\scripts\CSGOtool
#print(path_script)
del Pathversion





SCRIPT_DIRECTORY = os.environ['MAYA_LOCATION'] + "/bin/plug-ins/MP_Tools/CSGOTool_v002"

RIGS_DIR = SCRIPT_DIRECTORY + '/Your Rigs' + '/'
ALL_FILES_In_RIGS_DIR = os.listdir(RIGS_DIR)
RIGS = list(filter(lambda x: x.endswith('.ma'), ALL_FILES_In_RIGS_DIR))
GUI_FOLDER = SCRIPT_DIRECTORY + '/gui images/'
del ALL_FILES_In_RIGS_DIR
'''
#script for start...
main_win = pm.language.melGlobals['gMainWindow']

main_mp_tools = 'MyCustomToolsMenuByMP'
menu_label_mp = 'MP Tools'


if pm.menu(main_mp_tools, label=menu_label_mp, exists =True, parent = main_win ):
	pm.deleteUI(pm.menu(main_mp_tools, e= True, deleteAllItems=True))

custom_tools_menu = pm.menu(main_mp_tools, label = menu_label_mp, parent = main_win, tearOff =True)


pm.menuItem(label = 'CSGO', subMenu=True, parent= custom_tools_menu, tearOff =True)
pm.menuItem(label = 'CSGO Rigger', command = 'StartGlobalScripts()')
pm.setParent('..', menu=True)
#create shelf
'''


#####################################################################
####### main class window
#####################################################################
main_ui = GUI_FOLDER + "main_csgo.ui"

edit_path_ui = GUI_FOLDER + "dialog_window.ui"

generate_start_ui = GUI_FOLDER + "dialog_generate.ui"

save_dialog_ui = GUI_FOLDER + "save_dil_pered_gen.ui"

restart_ui = GUI_FOLDER + 'restart.ui'

#images
background_character = GUI_FOLDER + "baackground.png"
background_weapons_and_pov = GUI_FOLDER +  "baackground_soon_wepaons_and_pov.png"
background_weapons = GUI_FOLDER + "background_Weapon.png"
folder_red_icon = GUI_FOLDER + "folder_icon_red.png"
generate_icon = GUI_FOLDER + "generate_icon.png"
frame_rig_type = GUI_FOLDER + "framerigtype.png"
background_dialog_edit_path = GUI_FOLDER + "dialog_editPath_background.png"
baackground_generate  =  GUI_FOLDER + "generate start.png"
backDR_save_scene = GUI_FOLDER + "save_backgr.png"
back_restart_diloag = GUI_FOLDER + "restart dialog_back.png"

save_icon = GUI_FOLDER +  "save_btn_in.png"
no_icon = GUI_FOLDER +  "NO_btn_in.png"
back_icon = GUI_FOLDER + "back_btn_in.png"

back_maya = GUI_FOLDER + "back_mata.png"
quit_maya = GUI_FOLDER + "quit_maya.png"

go_icon = GUI_FOLDER + "Go_Icon.png"
back_generate_icon = GUI_FOLDER + "back_icon_generate.png"

blue_button_for_list_icon = [
	GUI_FOLDER + "list_buttons/blue_add_model.png",
	GUI_FOLDER + "list_buttons/blue_edit_model.png",
	GUI_FOLDER + "list_buttons/blue_remove_model.png",
	GUI_FOLDER + "list_buttons/blue_clear_all.png",
]


red_button_for_list_icon = [
	GUI_FOLDER + "list_buttons/red_add_model.png",
	GUI_FOLDER + "list_buttons/red_edit_model.png",
	GUI_FOLDER + "list_buttons/red_remove_model.png",
	GUI_FOLDER + "list_buttons/red_clear_all.png",
]

def hello():
	print 'privet blin'


image = "C:/editing/python/REALISER/mainwdwdwdwdw.jpg"
# start create rig

FOLDER_SHAPES = SCRIPT_DIRECTORY


def maya_main_window():
	main_window_ptr = omui.MQtUtil.mainWindow()
	return wrapInstance(long(main_window_ptr), QtWidgets.QWidget)

#interface global 
class MainWindow(QtWidgets.QDialog):
	"""docstring for testgui"""
	def __init__(self, parent = maya_main_window()):
		super(MainWindow, self).__init__(parent)
		self.setFixedSize(700, 500)
		self.setWindowTitle("CSGO RIG TOOL BY MP")
		self.setWindowFlags(QtCore.Qt.WindowType.Window)
		#self.setWindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.WindowStaysOnTopHint)
		self.init_ui()
		self.load_icons()

		self.MODE = 0
		self.Check_For = 0
		self.Check_Weapon_For = 0
		self.CHARACTER_TAB = 1
		self.WEAPON_TAB = 0
		self.POV_TAB = 0
		self.LIST_CHARACTERS_PATHS = []
		self.LIST_ALL_CHARACTERS_IN_FORLDER = []
		self.RIG_USE = ''
		self.BAD_FBX_PATH = 0
		self.no_rigs = False

		# check for all mods
		self.CHECK_for_character = 0
		self.CHECK_for_weapons = 0
		self.CHECK_for_pov = 0

		self.LIST_WEAPONS_PATH = []
		#models flags
		self.WEAPON_KNIFE_EQ_OTHER = [
			'WEAPON_EXPORT'
			'KNIFE_EXPORT'
			'EQ_EXPORT'
			'OTHER_EXPORT'
		]

		self.WEAPON_TYPE_FOR_GENERATE = []


		self.FBX_CHARACTER_FOLDER = ''
		self.SAVE_CHARACTER_FOLDER = ''

		#self.FBX_WEAPON_FOLDER = ''
		#self.SAVE_WEAPON_FOLDER = ''


		#self.FBX_POV_FOLDER = ''
		#self.SAVE_POV_FOLDER = ''

		#FBX ALL FOR LIST (ALL OR LIST DISPLAY APPEND)
		self.LIST_CHARACTER_OUT = []
		self.LIST_WEAPONS_OUT = []
		self.LIST_POV_OUT = []

		#self.flags = QtCore.Qt.WindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.WindowStaysOnTopHint)
        #self.setWindowFlags(self.flags)

		# WEAPONS
		self.WEAPONS_PATH_FBX = ''    # path to fbx folder
		self.WEAPON_PATH_SAVE = ''    # path to save rigs
		self.check_path_Weapons = False    # check path
		self.check_for_good_generate_weapons = False
		self.check_path_to_save_weapons = False
		self.check_weapon_mode_list_or_all_inits = 0

		self.LIST_WEAPON_IN_FOLDER = []
		self.BAD_FBX_PATH_WEAPONS = 0
		self.LIST_PATHS_WEAPONS = []

		#self.ALL_WEAPONS_IN_FOLDER = []

		self.Tool_is_Cancel = True

		#POV


		#func
		self.init_tab_buttons()
		self.character_mode()
		self.List_Mode()
		self.weapon_init_buttons()

	def init_ui(self):
		fileUi = QtCore.QFile(main_ui)
		fileUi.open(QtCore.QFile.ReadOnly)

		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(fileUi, parentWidget = self)
		fileUi.close()

		# setting interface
		self.ui.View_all_rigs_for_tool.hide()
		self.ui.CSGO_hide_SETTINGS.hide()
		self.ui.CSGO_show_SETTINGS.hide()


		#line glow and move

		lineY = 45
		lineSizeY = 4

		self.GLOBAL_X = 126
		self.GLOBAL_Y = lineY
		self.SIZE_X = 191
		self.SIZE_Y = lineSizeY
		
		# init objects...

		# OBJECTS GUI
		self.GENERATE_BUTTON = self.ui.pushButton_GLOBAL_GENERATE
		self.QUESTIONS_INFO = type
		###########################################
		# fbx character
		self.character_path_line_fbx = self.ui.lineEdit_character_fbx
		self.character_button_fbx = self.ui.pushButton_folder_fbx_character
		# save character
		self.character_path_line_save = self.ui.lineEdit_character_mb_save
		self.character_button_save = self.ui.pushButton_folder_mb_save_character
		#     
		# list character widget
		self.character_list_widget = self.ui.List_fbx_characters
		# character buttons
		self.character_add = self.ui.pushButton_character_add_model
		self.character_edit = self.ui.pushButton_character_edit_model
		self.character_remove = self.ui.pushButton_character_remove_model
		self.character_clear = self.ui.pushButton_character_clear_alL_model
		# radio character
		self.character_all = self.ui.radio_For_all
		self.character_list = self.ui.radio_For_List
		# rig version character
		self.character_rig_version = self.ui.rig_type_from_folder_rigs
		# CHARACTER DISPLAY
		#self.display_character_fbx_check = self.ui.
		#self.display_character_save_check = self.ui.
		self.display_character_generate_check = self.ui.generate_user_label_character
		self.display_character_info = self.ui.info_label
		self.display_character_for_all_text = self.ui.For_All_label_image
		#self.display_character_for_LIST_text = self.ui.info_label

		
		###########################################
		# fbx weapons
		self.weapon_path_fbx_line = self.ui.lineEdit_weapon_fbx
		self.weapon_button_fbx = self.ui.pushButton_folder_fbx_weapon
		# save weapons
		self.weapon_path_save_line = self.ui.lineEdit_weapon_mb_save
		self.weapon_button_save = self.ui.pushButton_folder_mb_save_weapon
		#     
		# list weapon widget
		self.weapon_list_widget = self.ui.List_fbx_weapons
		# weapon buttons
		self.weapon_add = self.ui.pushButton_weapon_add_model
		self.weapon_edit = self.ui.pushButton_weapon_edit_model
		self.weapon_remove = self.ui.pushButton_weapon_remove_model
		self.weapon_clear = self.ui.pushButton_weapon_clear_alL_model
		# radio weapon
		self.weapon_all = self.ui.radio_For_all_weapon
		self.weapon_list = self.ui.radio_For_List_weapon
		# WEAPON DISPLAY
		self.display_weapon_for_all_text = self.ui.For_All_label_image_weapons
		self.display_weapon_info = self.ui.info_label_weapon
		self.display_weapon_generate = self.ui.generate_user_label_weapon
		# FAST CONNECTEDS 
		self.weapon_button_fbx.clicked.connect(lambda: self.add_path_to_mode(fbx=True))
		self.weapon_button_save.clicked.connect(lambda: self.add_path_to_mode(fbx=False))
		# all or list
		self.weapon_all.clicked.connect(lambda: self.for_weapons(for_all = True))
		self.weapon_list.clicked.connect(lambda: self.for_weapons(for_all = False))
		self.display_weapon_for_all_text.hide()

		# list manipulate...
		self.weapon_add.clicked.connect(lambda: self.list_to_add(characterListWig=self.weapon_list_widget, reference_list_paths=self.LIST_PATHS_WEAPONS, directory_fbx=self.WEAPONS_PATH_FBX, all_fbx=self.LIST_WEAPON_IN_FOLDER))
		self.weapon_edit.clicked.connect(lambda: self.list_to_edit(list_edit=self.weapon_list_widget, folder_fbx=self.WEAPONS_PATH_FBX, ALL_PATHS=self.LIST_PATHS_WEAPONS))
		self.weapon_remove.clicked.connect(lambda: self.list_to_remove(list_edit=self.weapon_list_widget,paths_array=self.LIST_PATHS_WEAPONS))
		self.weapon_clear.clicked.connect(lambda: self.list_to_clearAll(list_edit=self.weapon_list_widget,paths_array=self.LIST_PATHS_WEAPONS))
		self.character_add.setEnabled(False)

	def load_icons(self):
		
		test = self.ui.TESTLABEL
		test.setPixmap(image)
		
        
	def init_tab_buttons(self):
		character_mode_bt = self.ui.character_mode
		weapon_mode_bt = self.ui.weapon_mode
		pov_mode_bt = self.ui.pov_mode

		#modif tabs
		character_mode_bt.clicked.connect(self.character_mode)
		weapon_mode_bt.clicked.connect(self.weapon_mode)
		pov_mode_bt.clicked.connect(self.pov_mode)

		#text tabs
		
		character_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(255, 255, 255);')
		weapon_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
		pov_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
	

		character_mode_bt.setFlat(True)
		weapon_mode_bt.setFlat(True)
		pov_mode_bt.setFlat(True)

		#############################################################################
		#character tab
		#############################################################################
		setStyFolderIcon = QtGui.QPixmap(folder_red_icon)
		setGenerateIcon = QtGui.QPixmap(generate_icon)
		rig_type = QtGui.QPixmap(frame_rig_type)
		list_redactor_icon_buttons = QtGui.QPixmap(folder_red_icon)





		#folder button fbx character
		self.ui.pushButton_folder_fbx_character.setFlat(True)
		self.ui.pushButton_folder_fbx_character.setIcon(QtGui.QIcon(setStyFolderIcon))
		self.ui.pushButton_folder_fbx_character.setIconSize(QtCore.QSize(25,25))

		#folder button mb save character
		self.ui.pushButton_folder_mb_save_character.setFlat(True)
		self.ui.pushButton_folder_mb_save_character.setIcon(QtGui.QIcon(setStyFolderIcon))
		self.ui.pushButton_folder_mb_save_character.setIconSize(QtCore.QSize(25,25))

		#button generate character
		self.ui.pushButton_GLOBAL_GENERATE.setFlat(True)
		self.ui.pushButton_GLOBAL_GENERATE.setIcon(QtGui.QIcon(setGenerateIcon))
		self.ui.pushButton_GLOBAL_GENERATE.setIconSize(QtCore.QSize(120,120))


		#rig type add frame
		self.ui.rig_type_from_folder_rigs.setStyleSheet('color: rgb(255, 255, 255);background-color: rgb(44, 44, 44)')
		#self.ui.rig_type_from_folder_rigs.addItem('mp_rig_setup_version001.mb')
		

		if self.no_rigs == False:
			#generate character button
			self.ui.pushButton_GLOBAL_GENERATE.clicked.connect(self.Generate_Start)

		#list buttons
		list_buttons = [
			self.character_add,
			self.character_edit,
			self.character_remove,
			self.character_clear,
		]

		#add icons and font

		#add_character.setFlat(True)
		#edit_chracter.setFlat(True)
		#remove_chracter.setFlat(True)
		#clearAll_chracter.setFlat(True)

		for button_num in range(0,len(list_buttons)):
			#for button class
			pixmap = QtGui.QPixmap(blue_button_for_list_icon[button_num])
			#set to button
			list_buttons[button_num].setFlat(True)
			list_buttons[button_num].setIcon(QtGui.QIcon(pixmap))
			list_buttons[button_num].setIconSize(QtCore.QSize(80,80))
		del list_buttons

		#add_character.setIcon(QtGui.QIcon(list_redactor_icon_buttons))
		#edit_chracter.setIcon(QtGui.QIcon(list_redactor_icon_buttons))
		#remove_chracter.setIcon(QtGui.QIcon(list_redactor_icon_buttons))
		#clearAll_chracter.setIcon(QtGui.QIcon(list_redactor_icon_buttons))


		#add_character.setStyleSheet('font: 75 8pt "Segoe UI";background-image: url(:' + button_for_list_icon + ');color: rgb(255, 255, 255);')
		#edit_chracter.setStyleSheet('font: 75 8pt "Segoe UI";color: rgb(255, 255, 255);')
		#remove_chracter.setStyleSheet('font: 75 8pt "Segoe UI";color: rgb(255, 255, 255);')
		#clearAll_chracter.setStyleSheet('font: 75 8pt "Segoe UI";color: rgb(255, 255, 255);')


		#add_character.setIconSize(QtCore.QSize(80,80))
		#edit_chracter.setIconSize(QtCore.QSize(80,80))
		#remove_chracter.setIconSize(QtCore.QSize(80,80))
		#clearAll_chracter.setIconSize(QtCore.QSize(80,80))


		
		#combobox rigs 
		box_rigs = self.ui.rig_type_from_folder_rigs
		if RIGS == None or RIGS == []:
			print('please check rig folder')
			self.NO_RIG_FILES_PLEASE_CHECK_FOLDER(good_or_no = 0)
			self.no_rigs = True
		else:
			self.NO_RIG_FILES_PLEASE_CHECK_FOLDER(good_or_no = 1)
			self.no_rigs = False
			for name in RIGS:
				box_rigs.addItem(name)

		if self.no_rigs == False:
			#signals add edit remove clearAll character 
			self.character_add.clicked.connect(lambda: self.list_to_add(characterListWig=self.ui.List_fbx_characters, reference_list_paths=self.LIST_CHARACTERS_PATHS, directory_fbx=self.FBX_CHARACTER_FOLDER, all_fbx=self.LIST_ALL_CHARACTERS_IN_FORLDER))
			self.character_edit.clicked.connect(lambda: self.list_to_edit(list_edit=self.ui.List_fbx_characters, folder_fbx=self.FBX_CHARACTER_FOLDER, ALL_PATHS=self.LIST_CHARACTERS_PATHS))
			self.character_remove.clicked.connect(lambda: self.list_to_remove(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS))
			self.character_clear.clicked.connect(lambda: self.list_to_clearAll(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS))



			#radio buttons
			self.ui.radio_For_List.clicked.connect(self.List_Mode)
			self.ui.radio_For_all.clicked.connect(self.For_All_Mode)


			self.ui.pushButton_folder_fbx_character.clicked.connect(lambda: self.add_path_to_mode(fbx=True))
			self.ui.pushButton_folder_mb_save_character.clicked.connect(lambda: self.add_path_to_mode(fbx=False))

		



		#################### WEAPON TAB ####################

		#GLOBAL VARIABLIES
		#dynamic info view
		self.line_fbx_weapon_folder = self.ui.lineEdit_weapon_fbx
		self.line_save_rigs_weapon_folder = self.ui.lineEdit_weapon_mb_save

		self.for_all_weapon_image = self.ui.For_All_label_image_weapons


		#buttons
		self.fbx_folder_weapon = self.ui.pushButton_folder_fbx_weapon
		self.save_weapon_rigs = self.ui.pushButton_folder_mb_save_weapon

		self.ForListWeapons =  self.ui.radio_For_List_weapon
		self.ForAllWeapons = self.ui.radio_For_all_weapon

		self.GENERATE_WEAPONS_BT = self.ui.pushButton_generate_weapon

		self.button_add_weapon_or_path_in_root = self.ui.pushButton_weapon_add_model 
		#self.button_edit_path_Weapon_mode = self.ui.pushButton_weapon_edit_model
		self.button_remove_path_Weapon_mode = self.ui.pushButton_weapon_remove_model
		self.button_clear_all_in_list_Weapon_objects = self.ui.pushButton_weapon_clear_alL_model

		list_buttons_weapons = [
			self.button_add_weapon_or_path_in_root,
			self.weapon_edit,
			self.button_remove_path_Weapon_mode,
			self.button_clear_all_in_list_Weapon_objects,
		]


		#ICONS 
		for button_num in range(0,len(list_buttons_weapons)):
			#for button class
			pixmap = QtGui.QPixmap(red_button_for_list_icon[button_num])
			#set to button
			list_buttons_weapons[button_num].setFlat(True)
			list_buttons_weapons[button_num].setIcon(QtGui.QIcon(pixmap))
			list_buttons_weapons[button_num].setIconSize(QtCore.QSize(80,80))

		del list_buttons_weapons



		setStyFolderIcon = QtGui.QPixmap(folder_red_icon)
		


		#generate button for weapons
		self.GENERATE_WEAPONS_BT.setFlat(True)
		self.GENERATE_WEAPONS_BT.setIcon(QtGui.QIcon(setGenerateIcon))
		self.GENERATE_WEAPONS_BT.setIconSize(QtCore.QSize(120,120))

		self.fbx_folder_weapon.setFlat(True)
		self.fbx_folder_weapon.setIcon(QtGui.QIcon(setStyFolderIcon))
		self.fbx_folder_weapon.setIconSize(QtCore.QSize(25,25))
		self.save_weapon_rigs.setFlat(True)
		self.save_weapon_rigs.setIcon(QtGui.QIcon(setStyFolderIcon))
		self.save_weapon_rigs.setIconSize(QtCore.QSize(25,25))

		self.GOOD_GENERATE_OR_BAD(good_or_no = 0)
		self.ADD_PLEASE_SAVE_PATH(good_or_no = 0)
		self.BAD_FBX_PATH_OR_GOOD(good_or_no = 1)
		self.update_mode()

		if self.no_rigs == True:
			self.NO_RIG_FILES_PLEASE_CHECK_FOLDER(good_or_no = 0)

	#error and tips
	def BAD_FBX_PATH_OR_GOOD(self, good_or_no = 0):
		label_fbx_path_check = self.ui.fbx_path_user_label_character

		bad = 'Bad Path, no .fbx files :('
		good = '       Good FBX path!'
		bad_color = 'color: rgb(255, 0, 0);font: 75 12pt "Unispace";'
		good_color = 'color: rgb(0, 255, 38);font: 75 12pt "Unispace";'

		no_fbx = '       Add fbx!'


		if good_or_no == 0:
			#no files
			label_fbx_path_check.setText(bad)
			label_fbx_path_check.setStyleSheet(bad_color)
		elif good_or_no == 1:
			#add path
			label_fbx_path_check.setText(no_fbx)
			label_fbx_path_check.setStyleSheet(bad_color)
		elif good_or_no == 2:
			#good path
			label_fbx_path_check.setText(good)
			label_fbx_path_check.setStyleSheet(good_color)


	def ADD_PLEASE_SAVE_PATH(self, good_or_no = 0):
		label_save_check = self.ui.save_path_user_label_character

		bad = 'Add Save Path!'
		good = 'Good Save path!'
		bad_color = 'color: rgb(255, 0, 0);font: 75 12pt "Unispace";'
		good_color = 'color: rgb(0, 255, 38);font: 75 12pt "Unispace";'

		if good_or_no == 0:
			label_save_check.setText(bad)
			label_save_check.setStyleSheet(bad_color)
		else:
			label_save_check.setText(good)
			label_save_check.setStyleSheet(good_color)


	def GOOD_GENERATE_OR_BAD(self, good_or_no = 0):
		label_generate_da_net = self.ui.generate_user_label_character
		bad = 'Bad For GENERATE!'
		good = 'Good For GENERATE!'
		bad_color = 'color: rgb(255, 0, 0);font: 75 12pt "Unispace";'
		good_color = 'color: rgb(0, 255, 38);font: 75 12pt "Unispace";'


		if good_or_no == 1:
			#good
			label_generate_da_net.setText(good)
			label_generate_da_net.setStyleSheet(good_color)
		else:
			#no
			label_generate_da_net.setText(bad)
			label_generate_da_net.setStyleSheet(bad_color)

	def NO_RIG_FILES_PLEASE_CHECK_FOLDER(self, good_or_no = 0):
		#global error
		



		no_lb1 = self.ui.no_rig_1
		no_lb2 = self.ui.no_rig2
		if good_or_no == 1:
			no_lb1.hide()
			no_lb2.hide()

		else:
			no_lb1.show()
			no_lb2.show()
			self.ui.generate_user_label_character.setText('')
			self.ui.save_path_user_label_character.setText('')
			self.ui.save_path_user_label_character.setText('')
			self.ui.fbx_path_user_label_character.setText('')

	def weapon_feels(self,feel=str):
		if feel=='nofbx':
			if self.BAD_FBX_PATH_WEAPONS == 1:
				#self.ui.no_rig2_weapon.show()
				self.ui.no_rig_weapon.show()
			else:
				#self.ui.no_rig2_weapon.hide()
				self.ui.no_rig_weapon.hide()
		elif feel=='add fbx':
			if self.BAD_FBX_PATH_WEAPONS == 0 and self.WEAPONS_PATH_FBX != '':
				self.ui.no_rig2_weapon.show()
				self.ui.no_rig2_weapon.setText('          Good FBX path!')
				self.ui.no_rig2_weapon.setStyleSheet('color: rgb(0, 255, 38);font: 75 12pt "Unispace";')
			elif self.BAD_FBX_PATH_WEAPONS == 0 and self.WEAPONS_PATH_FBX == '':
				self.ui.no_rig2_weapon.show()
				self.ui.no_rig2_weapon.setText('          Add fbx!')
				self.ui.no_rig2_weapon.setStyleSheet('color: rgb(255, 0, 4);font: 75 12pt "Unispace";')
		elif feel=='add save':
			if self.WEAPON_PATH_SAVE == '':
				self.ui.save_path_user_label_weapon.setText('Add Save Path!')
				self.ui.save_path_user_label_weapon.setStyleSheet('color: rgb(255, 0, 4);font: 75 12pt "Unispace";')
			else:
				self.ui.save_path_user_label_weapon.setText('Good Save path!')
				self.ui.save_path_user_label_weapon.setStyleSheet('color: rgb(0, 255, 38);font: 75 12pt "Unispace";')

		elif feel=='good generate':
			pass


	#mode ##########################

	def anim(self, mode):
		#init line
		animation_line = self.ui.animation_tab_line

		lineX = 126

		lineY = 45

		lineSizeX = 191
		lineSizeY = 4
		'''
		self.GLOBAL_X = 0
		self.GLOBAL_Y = 0
		self.SIZE_X = 0
		self.SIZE_Y = 0
		'''

		self.animation = QtCore.QPropertyAnimation(animation_line, b'geometry')

		speed_duration = 160

		#mode - character or weapon or pov
		if mode.find('character') != -1:
			print('hello character')

			self.animation.setDuration(speed_duration)
			self.animation.setStartValue(QtCore.QRect(self.GLOBAL_X, self.GLOBAL_Y, self.SIZE_X, self.SIZE_Y))
			self.animation.setEndValue(QtCore.QRect(126, lineY, 191, lineSizeY))
			self.animation.start()
		
			
			#animation_line.setFixedSize(191, lineSizeY)
			#animation_line.move(126, lineY)
		
			
			self.GLOBAL_X = 126
			self.GLOBAL_Y = lineY
			self.SIZE_X = 191
			self.SIZE_Y = lineSizeY

		elif mode.find('weapon') != -1:
			print('hello weapon')

			

			#animation_line.setFixedSize(159, lineSizeY)
			#animation_line.move(335, lineY)

			self.animation.setDuration(speed_duration)
			self.animation.setStartValue(QtCore.QRect(self.GLOBAL_X, self.GLOBAL_Y, self.SIZE_X, self.SIZE_Y))
			self.animation.setEndValue(QtCore.QRect(335, lineY, 159, lineSizeY))
			self.animation.start()


			self.GLOBAL_X = 335
			self.GLOBAL_Y = lineY
			self.SIZE_X = 159
			self.SIZE_Y = lineSizeY

		
		elif mode.find('pov') != -1:
			print('hello pov')

			self.animation.setDuration(speed_duration)
			self.animation.setStartValue(QtCore.QRect(self.GLOBAL_X, self.GLOBAL_Y, self.SIZE_X, self.SIZE_Y))
			self.animation.setEndValue(QtCore.QRect(522, lineY, 117, lineSizeY))
			self.animation.start()
		

		
			#animation_line.setFixedSize(117, lineSizeY)
			#animation_line.move(522, lineY)

			self.GLOBAL_X = 522
			self.GLOBAL_Y = lineY
			self.SIZE_X = 117
			self.SIZE_Y = lineSizeY

	def Display_Update(self):
		# update for bad and good path and for generate
		# update to update
		# WEAPONS
		#print('---------------- tyt --------------------')
		if self.MODE==1:
			#print('bad = '+str(self.BAD_FBX_PATH_WEAPONS))
			if self.BAD_FBX_PATH_WEAPONS == 1:
				#check files
				# bad path
				print('BAD PATHS weapons')
				self.weapon_add.setEnabled(False)
				self.weapon_edit.setEnabled(False)
				self.weapon_remove.setEnabled(False)
				self.weapon_clear.setEnabled(False)
				self.display_weapon_info.show()
				return
			else:
				#weapon mode
				if self.check_for_good_generate_weapons==1:
					#for all
					print('weapon all')
				else:
					#for list
					print('weapon list')
					self.weapon_add.setEnabled(True)
					self.weapon_edit.setEnabled(True)
					self.weapon_remove.setEnabled(True)
					self.weapon_clear.setEnabled(True)
					self.display_weapon_info.hide()
			if self.WEAPONS_PATH_FBX == '':
				self.weapon_add.setEnabled(False)
				self.weapon_edit.setEnabled(False)
				self.weapon_remove.setEnabled(False)
				self.weapon_clear.setEnabled(False)
			if self.check_for_good_generate_weapons == 0 and self.WEAPONS_PATH_FBX != '':
				if self.LIST_PATHS_WEAPONS==[]:
					self.weapon_add.setEnabled(True)
					self.weapon_edit.setEnabled(False)
					self.weapon_remove.setEnabled(False)
					self.weapon_clear.setEnabled(False)
				elif self.LIST_PATHS_WEAPONS!=[]:
					self.weapon_add.setEnabled(True)
					self.weapon_edit.setEnabled(True)
					self.weapon_remove.setEnabled(True)
					self.weapon_clear.setEnabled(True)
			# list display
			if self.WEAPONS_PATH_FBX == '':
				self.display_weapon_info.show()
				self.display_weapon_info.setText("      Add FBX Folder")
				self.display_weapon_info.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
				self.weapon_all.setEnabled(False)
				self.weapon_list.setEnabled(False)
				return
			else:
				if self.BAD_FBX_PATH_WEAPONS==0:
					if self.LIST_PATHS_WEAPONS == []:
						self.display_weapon_info.show()
						self.display_weapon_info.setText("        Add model")
						self.display_weapon_info.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
					else:
						self.display_weapon_info.hide()
				if self.LIST_WEAPON_IN_FOLDER == []:
					self.display_weapon_info.show()
					self.display_weapon_info.setText("      Add FBX Folder")
					self.display_weapon_info.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
					self.weapon_all.setEnabled(False)
					self.weapon_list.setEnabled(False)
					return
				else:
					if self.LIST_PATHS_WEAPONS != []:
						self.display_weapon_info.hide()
					else:
						self.display_weapon_info.show()
						self.display_weapon_info.setText("        Add model")
						self.display_weapon_info.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
				self.weapon_all.setEnabled(True)
				self.weapon_list.setEnabled(True)


		# CHARACTERS
		if self.MODE==0 and self.BAD_FBX_PATH == 1:
			# check files
			# bad path
			print('bad path characters')
		else:
			if self.Check_For==1:
				# for all
				print('characters all')
			else:
				# for list
				print('character list')


	# maybe later
	def Settings_Menu(self):
		self.widget_settings = self.ui.View_all_rigs_for_tool
		self.settings_hide = self.ui.CSGO_hide_SETTINGS
		self.settings_show = self.ui.CSGO_show_SETTINGS
		#self.settings_to_back_button.hide()
		#self.settings_to_set_button.show()
		self.widget_settings.setStyleSheet('background-color: rgb(255, 255, 255,23);')
		CHECK_SETTINGS = False

	
		self.widget_settings.hide()
		self.settings_show.setFlat(True)
		self.settings_show.setStyleSheet('background-color: rgb(255, 255, 255,0);selection-background-color: rgb(255, 255, 255,0);selection-color: rgb(255, 255, 255,0);border: 0px;')
		self.settings_hide.setFlat(True)
		self.settings_hide.setStyleSheet('background-color: rgb(255, 255, 255,0);selection-background-color: rgb(255, 255, 255,0);selection-color: rgb(255, 255, 255,0);border: 0px;')
		def show_settings():
			self.widget_settings.show()
			self.settings_show.hide()
			self.settings_hide.show()

			# create base


			# create animations...



		def hide_settings():
			self.widget_settings.hide()
			self.settings_show.show()
			self.settings_hide.hide()
		hide_settings()
		self.settings_show.clicked.connect(show_settings)
		self.settings_hide.clicked.connect(hide_settings)
				



			
	
	#history mode
	def update_mode(self):

		self.RIG_USE = self.ui.rig_type_from_folder_rigs.currentText()
		
		info_to_user = self.ui.info_label

		self.Display_Update()
		print('hz = '+str(self.BAD_FBX_PATH))
		if self.BAD_FBX_PATH == 1:
			print('----------------------------------------')
			print('------Bad path, no fbx files :(-------')
			print('----------------------------------------')
			info_to_user.show()
			info_to_user.setText("      Add FBX Folder")
			info_to_user.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
			self.character_all.setEnabled(False)
			self.character_list.setEnabled(False)
			self.character_add.setEnabled(False)
			return
		
		
		#update files
		#self.LIST_CHARACTER_OUT = []
		if self.Check_For == 1:
			if self.FBX_CHARACTER_FOLDER != '':
				if self.SAVE_CHARACTER_FOLDER != '':
					print(self.SAVE_CHARACTER_FOLDER)
					self.GOOD_GENERATE_OR_BAD(good_or_no = 1)



		if self.Check_For == 0:
			#print(' check for 0')
			if self.LIST_CHARACTERS_PATHS == []:
				if self.BAD_FBX_PATH == 0 and self.FBX_CHARACTER_FOLDER != '':
					self.ui.pushButton_character_add_model.setEnabled(True)
				self.ui.pushButton_character_edit_model.setEnabled(False)
				self.ui.pushButton_character_remove_model.setEnabled(False)
				self.ui.pushButton_character_clear_alL_model.setEnabled(False)
				#print('no fbx in list only ADD')
			else:
				if self.BAD_FBX_PATH == 0 and self.FBX_CHARACTER_FOLDER != '':
					self.ui.pushButton_character_add_model.setEnabled(True)
					self.ui.pushButton_character_edit_model.setEnabled(True)
					self.ui.pushButton_character_remove_model.setEnabled(True)
					self.ui.pushButton_character_clear_alL_model.setEnabled(True)


		if self.FBX_CHARACTER_FOLDER == '':
			info_to_user.show()
			info_to_user.setText("      Add FBX Folder")
			info_to_user.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
			self.character_all.setEnabled(False)
			self.character_list.setEnabled(False)
		else:
			info_to_user.show()
			info_to_user.setText("        Add model")
			info_to_user.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
			self.character_all.setEnabled(True)
			self.character_list.setEnabled(True)

		if len(self.LIST_CHARACTERS_PATHS) >= 1:
			info_to_user.hide()

		if self.Check_For == 1:
			info_to_user.hide()


		self.ui.no_rig2_weapon.hide()
		self.ui.no_rig_weapon.hide()


		if self.BAD_FBX_PATH_WEAPONS==1:
			self.weapon_feels(feel='nofbx')
		self.weapon_feels(feel='add fbx')

		
		self.weapon_feels(feel='add save')




		'''
		print('mode character = 0')
		print('mode weapon = 1')
		print('mode pov = 2')
		print('mode active or last = ' + str(self.MODE))
		'''
		print('------------------------------------------')
		print('----------      UPDATE DATA     ----------')
		print('------------------------------------------')

		if self.Check_For == 0 :
			#for list
			print('for model in list')
			print('folder import = ' + self.FBX_CHARACTER_FOLDER)
			print('folder export = ' + self.SAVE_CHARACTER_FOLDER)
			print('mode export = ' + str(self.Check_For))
			if self.LIST_CHARACTERS_PATHS != []:
				self.GOOD_GENERATE_OR_BAD(good_or_no = 1)
				for x in self.LIST_CHARACTERS_PATHS:
					print("for import " + x)
			else:
				print('----add model pls ----')
				self.GOOD_GENERATE_OR_BAD(good_or_no = 0)
			print('rig use = ' + self.RIG_USE)
		elif self.Check_For == 1:
			#for all
			print('for all model')
			print('folder import = ' + self.FBX_CHARACTER_FOLDER)
			print('folder export = ' + self.SAVE_CHARACTER_FOLDER)
			print('mode export = ' + str(self.Check_For))
			if self.LIST_ALL_CHARACTERS_IN_FORLDER != []:
				if self.FBX_CHARACTER_FOLDER != '':
					if self.SAVE_CHARACTER_FOLDER != '':
						self.GOOD_GENERATE_OR_BAD(good_or_no = 1)
						for path_fbx in self.LIST_ALL_CHARACTERS_IN_FORLDER:
								print("for import " + path_fbx)
			else:
				self.GOOD_GENERATE_OR_BAD(good_or_no = 0)
				print('---- no models in folder! ----')
			print('rig use = ' + self.RIG_USE)
		print('==========================================')
	
		if self.MODE==1:
			print('====== weapon ======')
			print(self.WEAPONS_PATH_FBX)
			print(self.WEAPON_PATH_SAVE)
			print(self.LIST_WEAPON_IN_FOLDER)
			print(self.LIST_PATHS_WEAPONS)
		if self.SAVE_CHARACTER_FOLDER != '':
			self.ui.save_path_user_label_character.setText('Good Save path!')
			self.ui.save_path_user_label_character.setStyleSheet('color: rgb(0, 255, 38);font: 75 12pt "Unispace";')
		else:
			self.ui.save_path_user_label_character.setText('Add Save Path!')
			self.ui.save_path_user_label_character.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')

		if self.BAD_FBX_PATH_WEAPONS==1:
			self.list_to_clearAll(list_edit=self.weapon_list_widget,paths_array=self.LIST_PATHS_WEAPONS)
			del self.LIST_WEAPON_IN_FOLDER[:]
			self.display_weapon_generate.setText('Bad For GENERATE!')
			self.display_weapon_generate.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')


		# update info weapons...
		if self.BAD_FBX_PATH_WEAPONS==0:
			if self.WEAPONS_PATH_FBX != '':
				if self.WEAPON_PATH_SAVE != '':
					if self.check_weapon_mode_list_or_all_inits == 0:
						if self.LIST_PATHS_WEAPONS != []:
							self.display_weapon_generate.setText('Good For GENERATE!')
							self.display_weapon_generate.setStyleSheet('color: rgb(0, 255, 38);font: 75 12pt "Unispace";')
						else:
							self.display_weapon_generate.setText('Bad For GENERATE!')
							self.display_weapon_generate.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')
					if self.check_weapon_mode_list_or_all_inits == 1:
						if self.LIST_WEAPON_IN_FOLDER != []:
							self.display_weapon_generate.setText('Good For GENERATE!')
							self.display_weapon_generate.setStyleSheet('color: rgb(0, 255, 38);font: 75 12pt "Unispace";')
						else:
							self.display_weapon_generate.setText('Bad For GENERATE!')
							self.display_weapon_generate.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')
				else:
					self.display_weapon_generate.setText('Bad For GENERATE!')
					self.display_weapon_generate.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')
			else:
				self.display_weapon_generate.setText('Bad For GENERATE!')
				self.display_weapon_generate.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')
		else:
			self.display_weapon_generate.setText('Bad For GENERATE!')
			self.display_weapon_generate.setStyleSheet('color: rgb(255, 0, 0);font: 75 12pt "Unispace";')



	# not
	def exception_rigs(self,find=str,name_file=str):
		# import rigs data
		if find == '':
			return
		# import 
		#base = opem(SCRIPT_DIRECTORY+'rigsbase'+'.txt','r')
		#base.close()
		if find == 'ctm_' or find == 'tm_':
			# characters check
			pass
		elif find == 'v_':
			# weapons v_ check
			pass

	def character_mode(self):
		self.MODE = 0
		self.update_mode()
		print('character mode')

		mb = 'character'
		self.anim(mb)

		test = self.ui.TESTLABEL
		test.show()

	

		#global
		character_mode_bt = self.ui.character_mode
		weapon_mode_bt = self.ui.weapon_mode
		pov_mode_bt = self.ui.pov_mode

		CHARACTER_BOX = self.ui.widget_CHARACTER
		WEAPON_BOX = self.ui.widget_WEAPON
		POV_BOX = self.ui.widget_POV

		#change background
		background = self.ui.back_character
		background.setPixmap(background_character)






		#change color tabs
		character_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(255, 255, 255);')
		weapon_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
		pov_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
	
		CHARACTER_BOX.show()
		WEAPON_BOX.hide()
		POV_BOX.hide()


	def weapon_mode(self):
		self.MODE = 1
		self.update_mode()
		print('weapon mode')
		info_to_user = self.ui.info_label
		info_to_user.hide()
		mb = 'weapon'
		self.anim(mb)

		#global
		character_mode_bt = self.ui.character_mode
		weapon_mode_bt = self.ui.weapon_mode
		pov_mode_bt = self.ui.pov_mode

		
		CHARACTER_BOX = self.ui.widget_CHARACTER
		WEAPON_BOX = self.ui.widget_WEAPON
		POV_BOX = self.ui.widget_POV


		#change color tabs
		character_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
		weapon_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(255, 255, 255);')
		pov_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')






		test = self.ui.TESTLABEL
		test.hide()

		CHARACTER_BOX.hide()
		WEAPON_BOX.show()
		POV_BOX.hide()

		#change background
		background = self.ui.back_character
		background.setPixmap(background_weapons)



	def pov_mode(self):
		self.MODE = 2 
		self.update_mode()
		print('pov mode')
		mb = 'pov'
		info_to_user = self.ui.info_label
		info_to_user.hide()
		self.anim(mb)

		#global
		character_mode_bt = self.ui.character_mode
		weapon_mode_bt = self.ui.weapon_mode
		pov_mode_bt = self.ui.pov_mode


		CHARACTER_BOX = self.ui.widget_CHARACTER
		WEAPON_BOX = self.ui.widget_WEAPON
		POV_BOX = self.ui.widget_POV



		#change color tabs
		character_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
		weapon_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(130, 130, 130);')
		pov_mode_bt.setStyleSheet('font: 75 20pt "Unispace";color: rgb(255, 255, 255);')








		test = self.ui.TESTLABEL
		test.hide()


		CHARACTER_BOX.hide()
		WEAPON_BOX.hide()
		POV_BOX.show()

		#change background
		background = self.ui.back_character
		background.setPixmap(background_weapons_and_pov)


	#radio buttons
	def List_Mode(self):
		print('for list mode')
		self.Check_For = 0

		self.ui.pushButton_character_add_model.setEnabled(True)
		self.ui.pushButton_character_edit_model.setEnabled(True)
		self.ui.pushButton_character_remove_model.setEnabled(True)
		self.ui.pushButton_character_clear_alL_model.setEnabled(True)





		self.update_mode()

		

		self.ui.For_All_label_image.hide()


	def For_All_Mode(self):
		print('for All mode')
		self.Check_For = 1
		self.ui.pushButton_character_add_model.setEnabled(False)
		self.ui.pushButton_character_edit_model.setEnabled(False)
		self.ui.pushButton_character_remove_model.setEnabled(False)
		self.ui.pushButton_character_clear_alL_model.setEnabled(False)
		self.update_mode()

		self.ui.For_All_label_image.show()


	#list button signals
	####################

	# check for all mods
	#self.CHECK_for_character = 0
	#self.CHECK_for_weapons = 0
	#self.CHECK_for_pov = 0
	#ADD TO LIST
	def list_to_add(self, characterListWig=type, reference_list_paths=list, directory_fbx=str, all_fbx=list, exception=str):
		#print('character_add')

		# exception(
			#  ct_ and ctm_
			#  v_ and maybe w_
		#)

		#characterListWig = []   #  self.ui.List_fbx_characters or self.ui.List_fbx_weapons
		#reference_list_paths = [] # self.LIST_CHARACTERS_PATHS or self.LIST_PATHS_WEAPONS
		#directory_fbx = '' # self.FBX_CHARACTER_FOLDER or self.WEAPONS_PATH_FBX
		#all_fbx = []   # self.LIST_ALL_CHARACTERS_IN_FORLDER or self.ALL_WEAPONS_IN_FOLDER
		'''
		if self.MODE == 0:
			# character mode check
			if self.CHECK_for_character == 1:
				del directory_fbx, reference_list_paths, characterListWig, all_fbx
				return
			#get list widget
			characterListWig = self.ui.List_fbx_characters
			reference_list_paths = self.LIST_CHARACTERS_PATHS
			directory_fbx = self.FBX_CHARACTER_FOLDER
			all_fbx = self.LIST_ALL_CHARACTERS_IN_FORLDER
		elif self.MODE == 1:
			# weapon mode check
			if self.CHECK_for_weapons == 1:
				del directory_fbx, reference_list_paths, characterListWig, all_fbx  
				return
			#get list widget
			characterListWig = self.ui.List_fbx_weapons
			reference_list_paths = self.LIST_PATHS_WEAPONS
			directory_fbx = self.WEAPONS_PATH_FBX
			all_fbx = self.ALL_WEAPONS_IN_FOLDER
		elif self.MODE == 2:
			# pov mode check
			del directory_fbx, reference_list_paths, characterListWig, all_fbx  
			return
		'''
		if directory_fbx != '':
			if all_fbx != None:
				if all_fbx != []:
					multipleFilters = "FBX (*.fbx)"
					path = mc.fileDialog2(dialogStyle= 3,fileMode = 4, okCaption = 'Add FBX',fileFilter = multipleFilters, startingDirectory  = directory_fbx)
					FNUM = len(path)
					if FNUM == 1:
						#for one file
						if path[0].find(directory_fbx) != -1:
							if len(reference_list_paths) >= 1:
								est_nety = False
								for path_for in range(0,len(reference_list_paths)):
									if reference_list_paths[path_for] == path[0]:
										est_nety = True
								if est_nety == False:
									add = path[0]
									#add to info
									reference_list_paths.append(add)
									#add to widget
									characterListWig.addItem(add.replace(directory_fbx,''))
							else:
								add = path[0]
								#add to info
								reference_list_paths.append(add)
								#add to widget
								characterListWig.addItem(add.replace(directory_fbx+'/',''))
					elif FNUM > 1:
						#for multy files
						for file in path:
							if file.find(directory_fbx) != -1:
								est_nety = False
								for path_for in range(0,len(reference_list_paths)):
									if reference_list_paths[path_for] == file:
										est_nety = True
								if est_nety == False:
									add = file
									#add to info
									reference_list_paths.append(add)
									#add to widget
									characterListWig.addItem(add.replace(directory_fbx+'/',''))
		else:
			print('get fbx directory')
			return
		self.update_mode()
		
	#EDIT SELECT IN LIST
	def list_to_edit(self,list_edit=type, folder_fbx=str, ALL_PATHS=list):
		# edit list files for all mode 
		
		#if self.Check_For == 1:
		#	return

		if ALL_PATHS == []:
			return

		#ALL_PATHS = []       # self.LIST_CHARACTERS_PATHS
		#folder_fbx = ''      # self.FBX_CHARACTER_FOLDER


		#if self.MODE == 0:
		#	# init for character list
		#	if self.LIST_CHARACTERS_PATHS != []:
		#		ALL_PATHS = self.LIST_CHARACTERS_PATHS
		#	else:
		#		return
		#	folder_fbx = self.FBX_CHARACTER_FOLDER
		#elif self.MODE == 1:
		#	# init for weapons list
		#	# init for character list
		#	if self.LIST_CHARACTERS_PATHS != []:
		#		ALL_PATHS = self.LIST_CHARACTERS_PATHS
		#	else:
		#		return
		#	folder_fbx = self.FBX_CHARACTER_FOLDER


		#elif self.MODE == 2:
		#	return


		#get list widget
		#list_edit = self.ui.List_fbx_characters

		row = list_edit.currentRow()   # number in list
		item = list_edit.item(row)   # memory address 

		#print(row) #get select for edit
			
		if row < len(ALL_PATHS):
			#init path in list
			old_path = ALL_PATHS[row]
			#edit path or continue
			edit_dialog = Custom_Dialog(self, INPUT = old_path, folder_dir = folder_fbx)
			edit_dialog.exec_()
			#edit_object.edit_path()
			relut_path = ''
			if edit_dialog.save_or_cancel == 1:
				if edit_dialog.result_line != '':
					if edit_dialog.result_line.find(folder_fbx) != -1:
						relut_path = edit_dialog.result_line
				else:
					relut_path = old_path
			elif edit_dialog.save_or_cancel == 2 :
				relut_path = old_path	
			#print(relut_path)
			#reload path to list
			item.setText(relut_path.replace(folder_fbx+'/',''))
			ALL_PATHS[row] = relut_path
			del relut_path
			self.update_mode()
	
		
	#REMOVE SELECT IN LIST
	def list_to_remove(self,list_edit=type,paths_array=list):
		#print('character_remove')
		#if self.Check_For == 1:
		#	return
		#get list widget
		#list_edit = self.ui.List_fbx_characters

		row = list_edit.currentRow()   # number in list
		item = list_edit.item(row)   # memory address 

		if item is None:
			return

		if paths_array == []:   #paths_array = [] = self.LIST_CHARACTERS_PATHS
			return

		item = list_edit.takeItem(row)
		del item
		del paths_array[row]
		self.update_mode()


	#REMOVE ALL IN LIST
	def list_to_clearAll(self,list_edit=type,paths_array=list):
		#print('character_clearAll')
		#if self.Check_For == 1:
		#	return
		#get list widget
		#list_edit = self.ui.List_fbx_characters

		row = list_edit.currentRow()   # number in list
		item = list_edit.item(row)   # memory address 

		if item is None:
			return

		if paths_array == []:   # paths_array = [] = self.LIST_CHARACTERS_PATHS 
			return

		list_edit.clear()
		del paths_array[:]
	
		self.update_mode()
		
		list_edit.clear()

		if paths_array != []:
			del paths_array[:]
		

	#FOLDER GLOBAL
	def add_fbx_character_folder(self):
		path  = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'FBX Folder')
		if path != [] and path is not None:
			toStr = path[0]
			if toStr != '' and toStr != None:
				self.list_to_clearAll(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS)
				del self.LIST_ALL_CHARACTERS_IN_FORLDER[:]
				self.FBX_CHARACTER_FOLDER = ''
				self.FBX_CHARACTER_FOLDER = toStr
				self.ui.lineEdit_character_fbx.setText(self.FBX_CHARACTER_FOLDER)
				
				#create for all - mode
				check = os.listdir(self.FBX_CHARACTER_FOLDER)
				name_fbx = list(filter(lambda x: x.endswith('ModelFromBlender.fbx'), check))

				if name_fbx == [] or name_fbx == None:
					print('Bad path, no fbx files :(')
					self.BAD_FBX_PATH_OR_GOOD(good_or_no = 0)
					del check
					del name_fbx
					self.BAD_FBX_PATH = 1
					return
				self.BAD_FBX_PATH = 0
				self.BAD_FBX_PATH_OR_GOOD(good_or_no = 2)

				del check
				
				for name in name_fbx:
					create_path = self.FBX_CHARACTER_FOLDER + '/' + name
					self.LIST_ALL_CHARACTERS_IN_FORLDER.append(create_path)
				del name_fbx

				self.update_mode()
		else:
			self.update_mode()

	def add_save_character_folder(self):
		path = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'Save .ma Folder')
		if path != [] and path is not None:
			toStr = path[0]
			if toStr != '' and toStr != None:
				self.SAVE_CHARACTER_FOLDER = toStr
				self.ui.lineEdit_character_mb_save.setText(self.SAVE_CHARACTER_FOLDER)
				self.ADD_PLEASE_SAVE_PATH(good_or_no = 1)
				self.update_mode()

		else:
			self.update_mode()


	# done!
	def add_path_to_mode(self, fbx=bool):
		if fbx:
			path  = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'FBX Folder')
			if path != [] and path is not None:
				toStr = path[0]
				if toStr != '' and toStr != None: 
					if self.MODE==0:
						# character mode
						self.list_to_clearAll(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS)
						del self.LIST_ALL_CHARACTERS_IN_FORLDER[:]
						self.FBX_CHARACTER_FOLDER = ''
						self.FBX_CHARACTER_FOLDER = toStr
						self.character_path_line_fbx.setText(self.FBX_CHARACTER_FOLDER)
						#create for all - mode
						check = os.listdir(self.FBX_CHARACTER_FOLDER)
						name_fbx = list(filter(lambda x: x.endswith('ModelFromBlender.fbx'), check))
						if name_fbx == [] or name_fbx == None:
							print('Bad path, no fbx files :(')
							self.BAD_FBX_PATH_OR_GOOD(good_or_no = 0)
							del check
							del name_fbx
							self.BAD_FBX_PATH = 1
							self.update_mode()
							return
						# check characters files
						print('tyt')
						print(str(name_fbx))
						print('tyt')
						new_name_fbx = []
						for fbx in name_fbx:
							if fbx.find('ctm_')!=-1 or fbx.find('tm_')!=-1:
								#print(fbx)
								#get mass from str
								#fbx_mass = list(fbx)
								#for_check = fbx_mass[0]+fbx_mass[1]+fbx_mass[2]+fbx_mass[2]
								#del fbx_mass
								#if for_check.find('ctm_')!=-1 or for_check.find('tm_')!=-1:
								new_name_fbx.append(fbx)
								#del for_check
						if new_name_fbx == []:
							self.BAD_FBX_PATH_OR_GOOD(good_or_no = 0)
							self.BAD_FBX_PATH = 1
							self.update_mode()
							return
						self.BAD_FBX_PATH = 0
						self.BAD_FBX_PATH_OR_GOOD(good_or_no = 2)
						del check
						for name in new_name_fbx:
							create_path = self.FBX_CHARACTER_FOLDER + '/' + name
							self.LIST_ALL_CHARACTERS_IN_FORLDER.append(create_path)
						del new_name_fbx
						self.update_mode()
					elif self.MODE==1:
						# weapon mode
						self.list_to_clearAll(list_edit=self.weapon_list_widget,paths_array=self.LIST_PATHS_WEAPONS)
						del self.LIST_WEAPON_IN_FOLDER[:]
						self.WEAPONS_PATH_FBX = ''
						self.WEAPONS_PATH_FBX = toStr
						self.weapon_path_fbx_line.setText(self.WEAPONS_PATH_FBX)
						#create for all - mode
						check = os.listdir(self.WEAPONS_PATH_FBX)
						name_fbx = list(filter(lambda x: x.endswith('ModelFromBlender.fbx'), check))
						if name_fbx == [] or name_fbx == None or name_fbx != []:
							BAD = True
							for fbx in name_fbx:
								'''
								if fbx.find('v_')!=-1 or fbx.find('w_')!=-1 :
									BAD = False
									break
								'''
								if fbx.find('v_')!=-1:    # ONLY FOR VIEW TO WORLD
									BAD = False
									break
							if BAD:
								self.update_mode()
								print('Bad path, no fbx files :(')
								#self.BAD_FBX_PATH_OR_GOOD(good_or_no = 0)
								del check
								del name_fbx
								self.BAD_FBX_PATH_WEAPONS = 1
								self.update_mode()
								return
							del BAD
						v_name_fbx = []
						for new in name_fbx:
							if new.find('v_')!=-1:
								#check 2 mass
								mass_str = list(new)
								app = str(mass_str[0]+mass_str[1])
								if app == 'v_':
									v_name_fbx.append(new)
									del mass_str, app
								else:
									del mass_str, app
									continue
						del name_fbx
						self.BAD_FBX_PATH_WEAPONS = 0
						#self.BAD_FBX_PATH_OR_GOOD(good_or_no = 2)
						del check
						for name in v_name_fbx:
							#print(name)
							create_path = self.WEAPONS_PATH_FBX + '/' + name
							self.LIST_WEAPON_IN_FOLDER.append(create_path)
						del v_name_fbx
						self.update_mode()
					elif self.MODE==2:
						# pov mode
						self.update_mode()
						pass
			else:
				self.update_mode()
		else:
			path = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'Save .ma Folder')
			if path != [] and path is not None:
				toStr = path[0]
				if toStr != '' and toStr != None:
					save_path = toStr
					if self.MODE==0:
						# character mode
						self.character_path_line_save.setText(save_path)
						self.SAVE_CHARACTER_FOLDER = save_path
						del save_path
						#self.ADD_PLEASE_SAVE_PATH(good_or_no = 1)
						self.update_mode()
					elif self.MODE==1:
						# weapon mode
						self.weapon_path_save_line.setText(save_path)
						self.WEAPON_PATH_SAVE = save_path
						del save_path
						self.update_mode()
					elif self.MODE==2:
						# pov mode
						self.update_mode()
			else:
				self.update_mode()
		

	##############################################################
	# WEAPON MODE INFO INPUT



	def weapon_init_buttons(self):
		''' CREATE CONNECNTEDS '''
		#self.ui.pushButton_folder_fbx_weapon.clicked.connect(self.weapons_path_fbx_root)
		pass
		
	def BAD_FBX_PATH_OR_GOOD_WEAPONS(self, good_or_no = 0):
		pass
	

	def type_export_weapons(self):
		# view to world
		# only for world
		# maybe view to world AND world models
		# universal generator for weapons
		pass

	def update_weapon_mode(self):
		pass

	# done!
	def for_weapons(self, for_all = bool):
		if for_all:
			# for all
			self.display_weapon_for_all_text.show()
			self.check_for_good_generate_weapons = 1
			self.weapon_add.setEnabled(False)
			self.weapon_edit.setEnabled(False)
			self.weapon_remove.setEnabled(False)
			self.weapon_clear.setEnabled(False)
			self.update_mode()
			self.check_weapon_mode_list_or_all_inits = 1
		else:
			# for list
			self.display_weapon_for_all_text.hide()	
			self.check_for_good_generate_weapons = 0
			if self.WEAPONS_PATH_FBX != '':
				self.weapon_add.setEnabled(True)
				self.weapon_edit.setEnabled(True)
				self.weapon_remove.setEnabled(True)
				self.weapon_clear.setEnabled(True)
				self.update_mode()
			else:
				self.weapon_add.setEnabled(False)
				self.weapon_edit.setEnabled(False)
				self.weapon_remove.setEnabled(False)
				self.weapon_clear.setEnabled(False)
			self.check_weapon_mode_list_or_all_inits = 0
			self.update_mode()
		self.update_mode()

	

	####################################################

	def Generate_Start(self):
		#print('generate start!!!!!!!!!')
		self.update_mode()

		#for all MODES



		mode_generate = self.MODE

		if mode_generate == 0:
			#character mode

			if self.Check_For == 0:
				#for list
				print('mode generate = '+str(mode_generate))

				#open dialog for start
				print('dadadada')
				if self.FBX_CHARACTER_FOLDER != '' and self.SAVE_CHARACTER_FOLDER != '':
					if self.RIG_USE != '' :
						if self.LIST_CHARACTERS_PATHS != None:
							if self.LIST_CHARACTERS_PATHS != [] :
								stg = Generate_Start(self,mode = 0, fbx = self.FBX_CHARACTER_FOLDER, save = self.SAVE_CHARACTER_FOLDER, file = self.RIG_USE, list_model = self.LIST_CHARACTERS_PATHS)
								stg.exec_()
			elif self.Check_For == 1:
				print('mode generate = '+str(mode_generate))
				#for all 
				#open dialog for start
				print('allll')
				if self.FBX_CHARACTER_FOLDER != '' and self.SAVE_CHARACTER_FOLDER != '':
					if self.RIG_USE != '' :
						if self.LIST_ALL_CHARACTERS_IN_FORLDER != None:
							if self.LIST_ALL_CHARACTERS_IN_FORLDER != [] :
								stg = Generate_Start(self,mode = 0, fbx = self.FBX_CHARACTER_FOLDER, save = self.SAVE_CHARACTER_FOLDER, file = self.RIG_USE, list_model = self.LIST_ALL_CHARACTERS_IN_FORLDER)
								stg.exec_()
								
		
		elif mode_generate == 1:
			#weapon mode
			print('start weapon mode generate...')
			if self.check_weapon_mode_list_or_all_inits == 0:
				# for list
				if self.WEAPONS_PATH_FBX != '' and self.WEAPON_PATH_SAVE != '':
					if self.LIST_PATHS_WEAPONS != []:
						stg = Generate_Start(self,mode = 1, fbx = self.WEAPONS_PATH_FBX, save = self.WEAPON_PATH_SAVE, list_model = self.LIST_PATHS_WEAPONS)
						stg.exec_()
			elif self.check_weapon_mode_list_or_all_inits == 1:
				# for all
				if self.WEAPONS_PATH_FBX != '' and self.WEAPON_PATH_SAVE != '':
					if self.LIST_WEAPON_IN_FOLDER != []:
						stg = Generate_Start(self,mode = 1, fbx = self.WEAPONS_PATH_FBX, save = self.WEAPON_PATH_SAVE, list_model = self.LIST_WEAPON_IN_FOLDER)
						stg.exec_()

		elif mode_generate == 2:
			#pov mode 
			print("start pov mode generate...")




if __name__ == "__main__":
	try:
		desinger_ui.close()
		desinger_ui.deleteLater()
		hello()
	except Exception as e:
		pass

	desinger_ui = MainWindow()
	desinger_ui.show()


'''
class CHARACTER_GENETATE(object):
	"""docstring for CHARACTER"""
	def __init__(self, arg):
		super(CHARACTER_GENETATE, self).__init__()
		self.arg = arg
		del self.arg

		# create updater
		# create variables
		# create inputs
		# create edit
		# create delete
		# create generate
		# create 


class WEAPONS_GENETATE(object):
	"""docstring for WEAPONS_GENETATE"""
	def __init__(self, arg):
		super(WEAPONS_GENETATE, self).__init__()
		self.arg = arg
		del self.arg

class POV_GENERATE(object):
	"""docstring for POV_GENERATE"""
	def __init__(self, arg):
		super(POV_GENERATE, self).__init__()
		self.arg = arg
		del self.arg

class CREATE_LIST_FILES(object):
	"""docstring for CREATE_LIST_FILES
	"""#STATIC FOR ALL
	def __init__(self, arg, folder_import = '', mode_generate = 0, manual_or_all = 0):
		super(CREATE_LIST_FILES, self).__init__()
		self.arg = arg
		del self.arg
		if mode_generate == 0:
			character_list_files()
		elif mode_generate == 1:
			weapons_list_files()
		elif mode_generate == 3:
			pov_list_files()

		# return varibles to generate
		self.CHARACTER_VOID = False


	def character_list_files(self, folder_void = '', for_who = 0):
		# init list character widget
		if folder_void != '':
			init_connections()

		CHARACTER_LIST_FILES = []
		CHARACTER_PATH_INIT = []


		# create connection buttons 
		def init_connections():
			pass
		def add_new_file():
			pass
		def edit_file():
			pass
		def remove_file():
			pass
		def clear_all_files():
			pass






	def weapons_list_files(self):
		pass
	def pov_list_files(self):
		pass

#dont work class
class Edit_Fbx_Path(QtWidgets.QDialog):
	"""docstring for ClassName"""
	def __init__(self, parent = maya_main_window(), old_path = ''):
		super(Edit_Fbx_Path, self).__init__(parent)

		self.setFixedSize(400, 150)
		self.setWindowTitle("Edit Path To FBX")
		self.init_ui()
		#global var
		self.OLD_PATH = ''
		self.New_Path = ''
		self.old_path = old_path
		#self.setWindowFlags(QtCore.Qt.WindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.WindowStaysOnTopHint))
		
	
		
	def init_ui(self):

		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(edit_path_ui)
		
		
		main_layout = QtWidgets.QVBoxLayout(self)
		main_layout.addWidget(self.ui)



		#global var 
		backWin = self.ui.BackGround_image
		#button
		save_bt = self.ui.Save_button
		cancel_bt = self.ui.Cancel_button
		dialog_open_path = self.ui.open_dialog_folder


		#background
		backWin.setPixmap(background_dialog_edit_path)

		#color buttons
		save_bt.setStyleSheet("background-color: rgb(18, 18, 18);")
		cancel_bt.setStyleSheet("background-color: rgb(18, 18, 18);") 

		folder_icon = QtGui.QPixmap(folder_red_icon)

		dialog_open_path.setFlat(True)
		dialog_open_path.setIcon(QtGui.QIcon(folder_icon))
		dialog_open_path.setIconSize(QtCore.QSize(25,25))

		#connections button

		dialog_open_path.clicked.connect(self.open_dialog_for_new_path)



		save_bt.clicked.connect(self.save_path)
		cancel_bt.clicked.connect(self.close_dialog)




	def open_dialog_for_new_path(self):
		pass

	def edit_path(self):
		print(self.old_path)
		pass


	def save_path(self):
		pass


	def close_dialog(self):
		New_Path = ''
		self.close()
		return New_Path


class Error_dialogs(QtWidgets.QDialog):
	"""docstring for Error_dialogs"""
	def __init__(self, parent = maya_main_window(), error_type = ''):
		super(Error_dialogs, self).__init__()
		self.error_type = error_type



	def error_path_fbx(self):
		print('plese add path fbx')
'''	
#edit model class 
class Custom_Dialog(QtWidgets.QDialog):
	#this edit dialog
	def __init__(self, parent = maya_main_window(), INPUT = '', folder_dir = ''):
		super(Custom_Dialog, self).__init__(parent)

		#Global Variables
		self.INPUT_PATH = INPUT
		self.OUTPUT_PATH = ''
		self.edit_line = ''
		self.result_line = ''
		self.directory_folder = folder_dir
		self.save_or_cancel = 1
		
		#start __init__ func
		self.setWindowTitle("Edit Path")
		self.init_ui()
		self.create_layout()
		self.create_connections()
		

	def init_ui(self):
		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(edit_path_ui)

		self.ui.lineEdit_path_edit.setText(self.INPUT_PATH)

	def create_layout(self):
		main_layout = QtWidgets.QVBoxLayout(self)
		main_layout.setContentsMargins(0,0,0,0)
		main_layout.addWidget(self.ui)

		label_back = self.ui.BackGround_image
		label_back.setPixmap(background_dialog_edit_path)

		pxmfolder = QtGui.QPixmap(folder_red_icon)
		folder_open_bt = self.ui.open_dialog_folder

		folder_open_bt.setFlat(True)
		folder_open_bt.setIcon(QtGui.QIcon(pxmfolder))
		folder_open_bt.setIconSize(QtCore.QSize(25,25))



	def create_connections(self):
		#buttons in widget
		folder_open_bt = self.ui.open_dialog_folder
		save_bt = self.ui.Save_button
		cancel_bt = self.ui.Cancel_button


		folder_open_bt.clicked.connect(self.open_new_path)

		save_bt.clicked.connect(self.save_path)
		cancel_bt.clicked.connect(self.cancel_dialog)


	def update_info(self):
		old = self.INPUT_PATH
		edit = self.edit_line

		if edit == '':
			self.result_line = old
		elif edit != '':
			self.result_line = edit

		self.ui.lineEdit_path_edit.setText(self.edit_line)
		#print('last update for export info = ' + self.result_line)




	def open_new_path(self):
		#return str startingDirectory
		if self.directory_folder == '':
			print('No directory fbx folder!')
			return
		else:
			multipleFilters = "FBX (*.fbx)"
			fbx_file = mc.fileDialog2(dialogStyle= 3,fileMode = 1, okCaption = 'New FBX',fileFilter = multipleFilters, startingDirectory  = self.directory_folder)
			if fbx_file is not None:
				if fbx_file != []:
					if fbx_file[0] != '' and fbx_file[0] != None:
						if fbx_file[0].find(self.directory_folder) != -1:
							self.edit_line = fbx_file[0]
							self.update_info()
			else:
				self.OUTPUT_PATH = self.INPUT_PATH
				self.update_info()


	def save_path(self):
		self.save_or_cancel = 1
		if self.edit_line != '' :
			self.INPUT_PATH = self.edit_line
			self.update_info()
			self.close()
		elif self.edit_line == '':
			self.OUTPUT_PATH = self.INPUT_PATH
			self.update_info()
			self.close()


	def cancel_dialog(self):
		self.save_or_cancel = 2
		self.OUTPUT_PATH = self.INPUT_PATH
		self.update_info()
		self.close()

# Mode = 0, folder_import = '', folder_save = '', rig type = '', file_list_fbx = []
class Generate_Start(QtWidgets.QDialog):
	#this start dialog
	def __init__(self, parent = maya_main_window(), mode = 0, fbx = '', save ='', file = '', list_model = []):
		super(Generate_Start, self).__init__(parent)

		self.FBX = fbx
		self.SAVE = save
		self.FILE = file
		self.list_models = list_model
		self.MODE_GEN = mode
		self.EXPORT_LIST = []
		self.setFixedSize(500, 350)
		self.setWindowTitle("START GENERATE")

		self.init_ui()
		self.create_layout()
		self.CHECK_FROM_BASE_FILES_FOR_RIG()
		self.add_info()
		self.create_connection()
	def init_ui(self):
		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(generate_start_ui)

	def CHECK_FROM_BASE_FILES_FOR_RIG(self):
		# import base
		if self.MODE_GEN == 0:
			# if CHARACTER MODE
			self.EXPORT_LIST = self.list_models
			return
		for_check_files = []
		with open(SCRIPT_DIRECTORY+'/weapons_base.txt','r') as f:
			files = f.readlines()
		f.close()
		del f
		for fl in files:
			for_check_files.append(fl.replace('\n','').replace('\r',''))
		del files
		# for all inputs
		for input_model in self.list_models:
			for check in for_check_files:
				if input_model.find(check)!=-1:
					self.EXPORT_LIST.append(input_model)
		del self.list_models, for_check_files
	def create_layout(self):
		main_layout = QtWidgets.QVBoxLayout(self)
		main_layout.setContentsMargins(0,0,0,0)
		main_layout.addWidget(self.ui)
		self.ui.back_ground_label_start.setPixmap(baackground_generate)
		self.ui.Create_Root_Check.setText("Create Skeletal Mesh")

	def create_connection(self):
		self.ui.Go_generate_button.clicked.connect(lambda: self.startGenerateRig(weapon=False))
		self.ui.Back_dialog.clicked.connect(self.back_dil)
		# back icon
		Go_generate_icon = QtGui.QPixmap(go_icon)
		back_icon = QtGui.QPixmap(back_generate_icon)

		self.ui.Go_generate_button.setFlat(True)
		self.ui.Go_generate_button.setIcon(QtGui.QIcon(Go_generate_icon))
		self.ui.Go_generate_button.setIconSize(QtCore.QSize(120,120))

		self.ui.Back_dialog.setFlat(True)
		self.ui.Back_dialog.setIcon(QtGui.QIcon(back_icon))
		self.ui.Back_dialog.setIconSize(QtCore.QSize(120,120))


	def add_info(self):

		self.ui.fbx_folder_str.setText(self.FBX)
		self.ui.save_figr_folder_str.setText(self.SAVE)
		if self.FILE != '':
			self.ui.file_rig_str.setText(self.FILE)
		else:
			self.ui.file_rig_str.setText('Weapon Universal Rig')

		#self.ui.fbx_folder_str.setStyleSheet('font: 75 7pt "Unispace";color: rgb(255, 255, 255);background-color: rgb(255, 255, 255, 0);')
		#self.ui.save_figr_folder_str.setStyleSheet('font: 75 7pt "Unispace";color: rgb(255, 255, 255);background-color: rgb(255, 255, 255, 0);')
		self.ui.file_rig_str.setStyleSheet('font: 75 7pt "Unispace";color: rgb(255, 255, 255);background-color: rgb(255, 255, 255, 0);')

		list_fbx = self.ui.listWidget_model_to_rig
		list_fbx.setStyleSheet('background-color: rgb(255, 255, 255, 0);font: 8pt "MS Shell Dlg 2";;color: rgb(255, 255, 255);')
		
		for name in range(0,len(self.EXPORT_LIST)):
			new_name = str(self.EXPORT_LIST[name]).replace(self.FBX + '/', "").replace('.qc.ModelFromBlender.fbx', "").replace('.ModelFromBlender.fbx', "")
			list_fbx.addItem(new_name)
			del new_name

	def startGenerateRig(self,weapon=bool):
		print('start generate go')

		self.CREATE_ROOT = self.ui.Create_Root_Check.isChecked() # BOOL 

		#open save dialog
		sv = Save_scene_Questions()
		sv.exec_()
		if sv.START_OR_NO == True:
			if self.MODE_GEN==0:
				#characters generatoe
				#create_generator = Customizer(self,  md = 0, l = [], s = '', r = '', fbx_i = '')
				#create_generator.exec_()
				'''
				print('final for start.....')
				print(str(self.FBX))
				print(str(self.SAVE))
				print(str(self.FILE))
				print(str(self.EXPORT_LIST))
				print(str(self.MODE_GEN))
				'''
				#local

				
				create_generator = Customizer(self)
				create_generator.GENERATOR(fbx_path = self.FBX, save_path = self.SAVE, file_rig_name = self.FILE, list_paths_fbx_models = self.EXPORT_LIST, mode_use = self.MODE_GEN, create_skeletal_mesh=self.CREATE_ROOT)
				#create_generator.Generate_Starting(md = self.MODE_GEN, l = self.EXPORT_LIST, s = self.SAVE, r = self.FILE, fbx_i = self.FBX)
				if create_generator.Final == True:
					self.close()
					# go restart
			elif self.MODE_GEN==1:
				print('start for weapons')

				# create class instance
				create_generator = Customizer(self)
				create_generator.GENERATOR_WEAPONS(fbx_import=self.EXPORT_LIST, save_path=self.SAVE, fbx_path=self.FBX,skeletal_mesh=self.CREATE_ROOT)
				if create_generator.Final == True:
					self.close()
				# weapons generatoe
				#create_generator = Customizer(self)
				#create_generator.GENERATOR(fbx_path = self.FBX, save_path = self.SAVE, file_rig_name = self.FILE, list_paths_fbx_models = self.EXPORT_LIST, mode_use = self.MODE_GEN)


	def back_dil(self):
		self.close()
	

#save scene Dialog
class Save_scene_Questions(QtWidgets.QDialog):
	"""docstring for Save_scene_Questions"""
	def __init__(self, parent = maya_main_window()):
		super(Save_scene_Questions, self).__init__(parent)
		
		self.Start = 0
		self.back = 0
		self.save = 0

		self.START_OR_NO = False



		self.setWindowTitle("Save Scene?")
		#save the current scene?
		self.init_ui()
		self.create_layout()

	
	def init_ui(self):
		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(save_dialog_ui)


	def create_layout(self):
		main_layout = QtWidgets.QVBoxLayout(self)
		main_layout.setContentsMargins(0,0,0,0)
		main_layout.addWidget(self.ui)

		

		self.Save_BT = self.ui.Save_button
		self.No_Save_BT = self.ui.No_Save_Button
		self.Back_BT = self.ui.Back_Button

		#add image
		self.ui.Back_Ground_dilong.setPixmap(backDR_save_scene)

		pixIconSave = QtGui.QPixmap(save_icon)
		#set to button
		self.Save_BT.setFlat(True)
		self.Save_BT.setIcon(QtGui.QIcon(pixIconSave))
		self.Save_BT.setIconSize(QtCore.QSize(100,40))

		pixIconNo = QtGui.QPixmap(no_icon)
		#set to button
		self.No_Save_BT.setFlat(True)
		self.No_Save_BT.setIcon(QtGui.QIcon(pixIconNo))
		self.No_Save_BT.setIconSize(QtCore.QSize(100,40))

		pixIconBack = QtGui.QPixmap(back_icon)
		#set to button
		self.Back_BT.setFlat(True)
		self.Back_BT.setIcon(QtGui.QIcon(pixIconBack))
		self.Back_BT.setIconSize(QtCore.QSize(100,40))
		

		self.Save_BT.clicked.connect(self.save_dialong)
		self.No_Save_BT.clicked.connect(self.No)
		self.Back_BT.clicked.connect(self.Back)

	def save_dialong(self):
		#open dialong
		maya_assci_and_bin = "Maya ASCII (*.ma);;Maya Binary (*.mb)"
		save_maya_scene = mc.fileDialog2(dialogStyle= 3,fileMode = 0, okCaption = 'Save Scene',fileFilter = maya_assci_and_bin)
		#return massive
		if save_maya_scene != None:
			if save_maya_scene[0] != '':
				save_file = save_maya_scene[0]
				#save file
				if save_file.find('.ma') != -1:
					mc.file(save_file, exportAll = 1, force = 1, type = 'mayaAscii')
				if save_file.find('.mb') != -1:
					mc.file(save_file, exportAll = 1, force = 1, type = 'mayaBinary')
				
				del save_maya_scene
				del maya_assci_and_bin

				self.START_OR_NO = True
				#start generate
				


	def No(self):
		self.close()
		self.START_OR_NO = True
		#start generate
		

	def Back(self):
		self.close()
		self.START_OR_NO = False
		#back to window


# import base weapons for rig 
GLOBAL_BASE_CHARACTERS = []
GLOBAL_BASE_WEAPONS_VIEW = []

def Weapon_builder(master_global=str,path_input=str,path_root_weapons = '', save_root = '', list_fbx_weapons = [], fbx_import=list, save_path=str, fbx_path=str):
	LONG_LIST_FILES = list_fbx_weapons
	del list_fbx_weapons
	WEAPON_ROOT_FILES = []
	print master_global
	PATH_FOLDER_FBX = path_input
	folder_save_maya_weapons = save_root
	folder_root_fbx = path_root_weapons

	folder_for_create = [
		'gun',
		'knife',
		'eq',
		'other',
		'vw_weapons',
	]

	#exception
	guns_type = [
		'eq',
		'knife',
		'm4a1_s',
		'w_pist_elite',
		'view_world_weapons',
	]

	elite_done = False
	m4a1s_done = False

	def check_dag_from_weapons(obj_w = ''):
		all_chl = mc.ls(obj_w, dagObjects = True)
		new = []
		for dag in all_chl:
		    if dag.find('_end') == -1:
		        new.append(dag)
		return new

	def CreateFolder(folder = '', name_folder = ''):
		directory = folder + '/' +  name_folder + '/'
		try:
			if not os.path.exists(directory):
				os.makedirs(directory)
		except OSError:
			print ('Error: Creating directory. ' +  directory)


	#create folders in root
	for name in folder_for_create:
		CreateFolder(folder = folder_save_maya_weapons, name_folder = name)

	#for else
	def Universal_rig():
		pass

	SHAPES_RIGS_FBX_FILE = 'ww'
	#   one for one               or                one for several
	if SHAPES_RIGS_FBX_FILE == '':
		print('Check please fbx file shapes from script folder and restart generate!')
		return

	#Import_Shapes_Files(type_s = 0,folder_shapes = FOLDER_SHAPES)

	def Import_Shapes_Files(type_s = 0,folder_shapes = '', WORLD = int):
		inForlder = folder_shapes + '/'
		if WORLD == 1:

			if type_s == 0:
				#for univefsal
				mc.file(inForlder + 'weapon_universal_shapes'+'.ma', i=True, mergeNamespacesOnClash=True, namespace=':')
				shapes = ['Weapon_CTRL_universal','L_HAND_CTRL_universal','R_HAND_CTRL_universal','Slider_CTRL_universal', 'Trigger_CTRL_universal']
				return shapes
				del shapes
				del inForlder
			elif type_s == 1:
				#for pist
				mc.file(inForlder + 'weapon_pist_shapes'+'.ma', i=True, mergeNamespacesOnClash=True, namespace=':')
				shapes = ['Weapon_CTRL_pist','L_HAND_CTRL_pist','R_HAND_CTRL_pist', 'Slider_CTRL_pist', 'Trigger_CTRL_pist']
				return shapes
				del shapes
				del inForlder
			elif type_s == 2:
				#for pist elite
				pass
			elif type_s == 3:
				#for eq
				pass
			elif type_s == 4:
				#for knife
				pass
		elif WORLD == 0:
			#for view world type
			#import shapes
			if type_s == 0:
				#for univefsal
				#mc.file(inForlder + 'weapon_universal_shapes'+'.ma', i=True, mergeNamespacesOnClash=True, namespace=':')
				#shapes = ['Weapon_CTRL_universal','L_HAND_CTRL_universal','R_HAND_CTRL_universal','Slider_CTRL_universal', 'Trigger_CTRL_universal']
				#return shapes
				pass
				#del shapes
				#del inForlder
			elif type_s == 1:
				#for pist
				mc.file(inForlder + 'weapon_view_pist_shapes'+'.ma', i=True, mergeNamespacesOnClash=True, namespace=':')
				shapes = ['Weapon_CTRL_pist','L_HAND_CTRL_pist','R_HAND_CTRL_pist', 'Slider_CTRL_pist', 'Trigger_CTRL_pist']
				return shapes
				del shapes
				del inForlder
			#import exception weapon typeseeeee


	###############################
	# func for world weapons and for view weapons to world type
	# view world type no recomendation (geometry v_ models incomplete, or have incorrect normals!)


	# REVOLVER
	# import
	# v_pist_revolver_revolver_cylinder_bullets_unfired.ModelFromBlender
	# v_pist_revolver_revolver_loader_loaded.ModelFromBlender
	# v_pist_revolver_revolver_model.ModelFromBlender
	# other from script and fbx folder



	mach_m249para = False
	v_mach_negev = False

	VIEW_WORLD_elites_pists = False
	VIEW_m4a1_S = False


	#init type weapon
	weapons_view_type = [
		#osnova
		'v_mach',
		'v_pist',
		'v_rif',
		'v_shot',
		'v_smg',
		'v_snip',
		#other
		'v_elite',
		'v_revolver',
		'v_tec9',
		'v_silencer_pist',
		'v_silencer_m4a1s',

	]

	other_view_add = [
		'',
	]



	def clear_bones():
		#clear joints
		jnt_objs = mc.ls(type = 'joint')
		for j in range(0,len(jnt_objs)):
			#get rotarion joint
			attRX = mc.getAttr(jnt_objs[j] + '.rotateX')
			attRY = mc.getAttr(jnt_objs[j] + '.rotateY')
			attRZ = mc.getAttr(jnt_objs[j] + '.rotateZ')
			#set to joint orientыы
			mc.setAttr(jnt_objs[j] + '.joint Orient X', attRX)
			mc.setAttr(jnt_objs[j] + '.joint Orient Y', attRY)
			mc.setAttr(jnt_objs[j] + '.joint Orient Z', attRZ)
			#clear rotation joints
			mc.setAttr(jnt_objs[j] + '.rotateX', 0)
			mc.setAttr(jnt_objs[j] + '.rotateY', 0)
			mc.setAttr(jnt_objs[j] + '.rotateZ', 0)
		del jnt_objs  #flip rotation to oritation

	def check_bones(elite = False,knife_push_L_or_R=0):  #return one str 'parent' and mass chldrs from parent joint  # only for  view to world mode
		#find parent
		parent_jnt = ''
		
		#check knife mesh
		one_knife_str = ''
		one_push_knife_str = ''
		knife_m = mc.ls(type = 'mesh')
		for d in knife_m:
			if d.find('knife') !=-1:
				one_knife_str = d
				if d.find('knife_push') !=-1:
					one_push_knife_str = d
					break
		del knife_m


		if elite:
			parent_jnt = 'v_weaponFBXASC046m9a1_R_parent'
		elif one_knife_str != '':
			if one_push_knife_str != '':
				#create for knife pust
				#v_weaponFBXASC046knife_L
				#v_weaponFBXASC046knife_R
				if knife_push_L_or_R == 0:
					parent_jnt = 'v_weaponFBXASC046knife_L'
				elif knife_push_L_or_R == 1:
					parent_jnt = 'v_weaponFBXASC046knife_R'
			else:
				#create for other knife
				#v_weaponFBXASC046knife
				parent_jnt = 'v_weaponFBXASC046knife'
		else:
			jnts = mc.ls(type = 'joint')
			for jt in jnts:
				if jt.find('_parent') != -1 or jt.find('_PARENT') != -1 or jt.find('_Parent') != -1 or jt.find('_L_parent') != -1 or jt.find('parent') != -1 or jt.find('knife') != -1:
					parent_jnt = jt
					break
			del jnts, one_knife_str, one_push_knife_str


		#############################################
		print('---------------------------------------------------------------------')
		print(parent_jnt)
		print('---------------------------------------------------------------------')
		##############################################
		chldrs = []
		ch = mc.ls(parent_jnt, dagObjects = True)
		for c in ch:
			if c.find('_end') == -1:
				chldrs.append(c)

		del ch
		del parent_jnt

		return chldrs   # only for  view to world mode


	def create_nulls(jnts = []):  #view to world mode
		#first index = parent
		#jnts = [0 = parent, 1.2.3.4... = chldrs]
		if jnts == None or jnts == []:
			return
		nulls = []
		for for_create in jnts:
			#create null
			name_null = for_create.replace('FBXASC046', '_') + '_CTRL'
			mc.select(all =1 , deselect=1)
			mel.eval('doGroup 0 1 1;')
			mc.rename('null1', name_null)
			mc.select(all =1 , deselect=1)

			nulls.append(name_null)

			#create math trasfrom
			mc.parent(name_null, for_create)
			mc.matchTransform(name_null, for_create)


			mc.setAttr(name_null + '.translate',0,0,0)
			mc.setAttr(name_null + '.rotate',0,0,0)
			mc.makeIdentity(name_null, apply=1, jointOrient=0, normal=0, rotate=1, scale=1, translate=1)

			mc.parent(name_null, world = True)

			#print(for_create)
			del name_null
			mc.select(all =1 , deselect=1)

		del jnts
		#return list ctrls
		return nulls   #view to world mode


	def create_hierarchy_and_ParentConstrain(jnts = [], ctrls = []):
		if jnts == None or jnts == [] or ctrls == None or ctrls == []:
			return

		#   index from jnts == index from ctrls

		#create hierarchy
		for c_num in range(0, len(ctrls)):
			if c_num != 0:
				mc.parent(ctrls[c_num], ctrls[0])
				mc.makeIdentity(ctrls[c_num],apply=1,  rotate=1, scale=1, translate=1)


		# fix orient ctrls
		for num in range(0,len(ctrls)):
			if num == 0:
				mc.makeIdentity(ctrls[num],apply=1,  rotate=1, scale=1, translate=1)
				continue
			mc.matchTransform(ctrls[num], jnts[num])

			get_atr_x = mc.getAttr(jnts[num] + '.joint Orient X')
			get_atr_y = mc.getAttr(jnts[num] + '.joint Orient Y')
			get_atr_z = mc.getAttr(jnts[num] + '.joint Orient Z')

			if get_atr_x != 0 and get_atr_x != -0:
				mc.setAttr(ctrls[num] + '.rax',get_atr_x)
			if get_atr_y != 0 and get_atr_x != -0:
				mc.setAttr(ctrls[num] + '.ray',get_atr_y)
			if get_atr_z != 0 and get_atr_x != -0:
				mc.setAttr(ctrls[num] + '.raz',get_atr_z)

			mc.setAttr(ctrls[num] + '.rotate',0,0,0)
			del get_atr_x, get_atr_y, get_atr_z



		#create constrains
		for n in range(0, len(ctrls)):
			mc.parentConstraint(ctrls[n], jnts[n], maintainOffset = True)


		del jnts, ctrls


	clear_bones()

	jnts = check_bones(elite = False,knife_push_L_or_R = 0)
	CTRS = create_nulls(jnts = jnts)
	create_hierarchy_and_ParentConstrain(jnts = jnts, ctrls = CTRS)

	def flip_rotation_axis(from_object = '', for_whom = '', axis = True):
		#call axis
		if axis == True:
			# axis to axis
			r_X = mc.getAttr(from_object + '.rotateAxisX')
			r_Y = mc.getAttr(from_object + '.rotateAxisY')
			r_Z = mc.getAttr(from_object + '.rotateAxisZ')

			fw_X = for_whom + '.rotateAxisX'
			fw_Y = for_whom + '.rotateAxisY'
			fw_Z = for_whom + '.rotateAxisZ'

			mc.setAttr(fw_X, r_X)
			mc.setAttr(fw_Y, r_Y)
			mc.setAttr(fw_Z, r_Z)

			del r_X, r_Y, r_Z, fw_X, fw_Y, fw_Z


	#create master
	mel.eval('select -cl  ;')
	mel.eval('doGroup 0 1 1;')
	GLOBAL_MASTER = master_global
	mc.rename('null1', GLOBAL_MASTER)
	mel.eval('select -cl  ;')



	def create_ctrls(nulls = [], v_type = '', folder_shapes = '', other = False):  #view to world mode
		#import shapes

		# init type weapon
		if v_type == '' and folder_shapes == '' and nulls == []:
			return

		#init other
		if other == True:
			#init names others ctrls
			#find others cntrls and do import shapes from vw_other.ma
			pass

		cont = False
		# check types from struct
		for tp in weapons_view_type:
			if v_type.find(tp) != -1:
				cont = True
		if cont == False:
			return
		PUSH = False
		# exception
		# NOT ASYNC
		#get mesh
		SSG_SNIP = False
		ALL_MESH = mc.ls(type = 'mesh')
		for geo in ALL_MESH:
			#print(geo)
			if geo.find('_ssg08') != -1:
				SSG_SNIP = True
				break
			elif geo.find('v_knife_push_reference') != -1:
				PUSH = True
				break
		del ALL_MESH


		# import
		# universal file name =   _shapes_view_world

		#pist
		if v_type == 'v_pist':
			mc.file(folder_shapes + '/shapes_view_world.ma', i=True, mergeNamespacesOnClash=True, namespace=':')
		#rif
		elif v_type == 'v_rif':
			pass
		#mach
		elif v_type == 'v_mach':
			pass
		#shot
		elif v_type == 'v_shot':
			pass
		#smg
		elif v_type == 'v_smg':
			pass
		#snip
		elif v_type == 'v_snip':
			pass

		#other

		#elite
		elif v_type == 'v_elite':
			pass
		#revolver
		elif v_type == 'v_revolver':
			pass
		#elite
		elif v_type == 'v_elite':
			pass
		#silencer_pist
		elif v_type == 'v_silencer_pist':
			pass
		#silencer_m4a1s
		elif v_type == 'v_silencer_m4a1s':
			pass


		#create default setup rig...
		def_CtrL = [
			'Mag_CTRL',
			'L_HAND_CNSTR',
			'R_HAND_CNSTR',
			'Trigger_CTRL',
			'Hammer_CTRL',
			'Slider_CTRL',
			'Weapon_CTRL',
			'Silencer_CTRL',
			'MAGAZINE_CTRL',
			'Release_CTRL',
			'MULTY_bold_CTRL',
		]



		# init clip ctrl

		MAG = ''
		TRIGGER = ''
		BOLT = ''
		KNIFE = ''
		HAMMER = ''
		PARENT = ''
		SILENCER = ''
		MAGAZIN = ''
		RELEASE = ''
		MULTY_BOLT = ''
		REVOLVER_CRAN = ''
		REVOLVER_EJECTOR = ''
		REVOLVER_CYLINDER = ''



		#check def nulls from jnts
		all_jnt = mc.ls(type = 'joint')

		for j in all_jnt:
			if j.find('hammer') != -1 or j.find('Hammer') != -1:
				HAMMER = def_CtrL[4]
		del all_jnt

		if HAMMER == '':
			mc.delete(def_CtrL[4]+'Shape')
			mc.delete(def_CtrL[4])


		#GET CONTROLS NULLS

		all_nodes = mc.ls(type = 'transform') # _knife_CTRL
		for node in all_nodes:
			if node.find('_parent_CTRL') != -1 or node.find('_PARENT_CTRL') != -1 or node.find('_Parent_CTRL') != -1 or node.find('_knife_CTRL') != -1 or node.find('_knife_L_CTRL') != -1:
				PARENT = node

			if node.find('_slide_CTRL') != -1 or node.find('_Slide_CTRL') != -1 or node.find('_SLIDE_CTRL') != -1 or node.find('_Bolt_CTRL') != -1 or node.find('_BOLT_CTRL') != -1 or node.find('_bolt_CTRL') != -1 or node.find('_chargehandle_CTRL') != -1 or node.find('_Chamber_CTRL') != -1 or node.find('_pump_CTRL') != -1 or node.find('_PUMP_CTRL') != -1 or node.find('_ChargeHandle_CTRL') != -1 or node.find('_rail_CTRL') != -1:
				BOLT = node

			if node.find('_trigger_CTRL') != -1 or node.find('_Trigger_CTRL') != -1 or node.find('_TRIGGER_CTRL') != -1:
				TRIGGER = node

			if node.find('_clip_CTRL') != -1 or node.find('_Clip_CTRL') != -1 or node.find('_CLIP_CTRL') != -1 or node.find('_magazine_CTRL') != -1 or node.find('_mag_CTRL') != -1 or node.find('_Mag_CTRL') != -1 or node.find('_ammobox_CTRL') != -1:
				MAG = node

			if node.find('_hammer_CTRL') != -1 or node.find('_Hammer_CTRL') != -1 or node.find('_HAMMER_CTRL') != -1:
				HAMMER = node

			if node.find('_silencer_CTRL') != -1 or node.find('_Silencer_CTRL') != -1:
				SILENCER = node

			if node.find('_magazine2_CTRL') != -1:
				MAGAZIN = node

			if node.find('_release_CTRL') != -1 or node.find('_Release_CTRL') != -1 or node.find('_clipRelease_CTRL') != -1 or node.find('_latch_CTRL') != -1 or node.find('_LOADER_CTRL') != -1 or node.find('_Loader_CTRL') != -1 :
				RELEASE = node

			if node.find('_action_CTRL') != -1:
				MULTY_BOLT = node

			if node.find('_crane_CTRL') != -1:
				REVOLVER_CRAN = node

			if node.find('_cylinder_CTRL') != -1:
				REVOLVER_CYLINDER = node

			if node.find('_ejector_CTRL') != -1:
				REVOLVER_EJECTOR = node

		del all_nodes


		if SSG_SNIP == True:
			BOLT = 'v_weapon_weapon_Slide_CTRL'
			MULTY_BOLT = 'v_weapon_weapon_bolt_CTRL'





		print(MAG)
		print(TRIGGER)
		print(BOLT)
		print(HAMMER)
		print(PARENT)
		print(SILENCER)
		print(MAGAZIN)
		print(RELEASE)
		print(MULTY_BOLT)
		print(REVOLVER_CRAN)
		print(REVOLVER_EJECTOR)
		print(REVOLVER_CYLINDER)
		print()
		



		#create ctrls to null...

		# check mag
		if MAG != '':
			mc.parent('Mag_CTRL', PARENT)
			mc.matchTransform('Mag_CTRL', MAG)
			mc.makeIdentity('Mag_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = MAG, for_whom = 'Mag_CTRL', axis = True)
		else:
			mc.delete('Mag_CTRL'+'Shape')
			mc.delete('Mag_CTRL')


		# check bolt slider
		if BOLT != '':
			mc.parent('Slider_CTRL', PARENT)
			mc.matchTransform('Slider_CTRL', BOLT)
			mc.makeIdentity('Slider_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = BOLT, for_whom = 'Slider_CTRL', axis = True)
		else:
			mc.delete('Slider_CTRL'+'Shape')
			mc.delete('Slider_CTRL')


		if RELEASE != '':
			mc.parent('Release_CTRL', PARENT)
			mc.matchTransform('Release_CTRL', RELEASE)
			mc.makeIdentity('Release_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = RELEASE, for_whom = 'Release_CTRL', axis = True)
		else:
			mc.delete('Release_CTRL'+'Shape')
			mc.delete('Release_CTRL')


		if MULTY_BOLT != '':
			mc.parent('MULTY_bold_CTRL', PARENT)
			mc.matchTransform('MULTY_bold_CTRL', MULTY_BOLT)
			mc.makeIdentity('MULTY_bold_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = MULTY_BOLT, for_whom = 'MULTY_bold_CTRL', axis = True)
		else:
			mc.delete('MULTY_bold_CTRL'+'Shape')
			mc.delete('MULTY_bold_CTRL')

		if TRIGGER == '':
			mc.delete('Trigger_CTRL'+'Shape')
			mc.delete('Trigger_CTRL')




		def bullet_generator(bullets=[], parent = '', SHELL = False):
			'''	create VIEW WORLD METHOD rig for bullets '''
			local_or_world_GRP = ''
			if bullets != None:
				if bullets != []:
					if SHELL:
						local_or_world_GRP = 'SHELLS'#+'_BULLETS'
					else:
						local_or_world_GRP = 'BULLET'#+'_BULLETS'
					#create all grp
					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', local_or_world_GRP)
					mel.eval('select -cl  ;')
					mc.parent(local_or_world_GRP, GLOBAL_MASTER)
					#del SHELL
				else:
					del local_or_world_GRP
					return
			else:
				del local_or_world_GRP
				return
			EXPORT_SHELLS =[]
			# create for each bullet...
			for GET in bullets:
				#create offset
				offset = 'offset_' + GET
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', offset)
				mel.eval('select -cl  ;')

				# create control
				mc.parent(offset, GET)
				mc.matchTransform(offset, GET)
				mc.makeIdentity(offset, apply = 1, translate = 1 ,rotate = 1)
				mc.parent(offset, parent)
				#create,,,
				if SHELL:
					mel.eval(
					'curve -d 1 -p -1 0 1 -p -1 0 -1 -p 1 0 -1 -p 1 0 1 -p -1 0 1 -k 0 -k 1 -k 2 -k 3 -k 4 ;'
					'hilite curve1 ;'
					'select -r curve1.cv[0:4] ;'
					'scale -r -p 0cm 0cm 0cm 0.355827 0.355827 0.355827 ;'
					'scale -r -p 0cm 0cm 0cm 1.220648 1.220648 1.220648 ;'
					'select -cl  ;'
					)
					ctrl_get = GET.replace('v_weapon_', '')
					mc.rename('curve1', ctrl_get)
				else:
					mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;hilite nurbsCircle1 ;select -r nurbsCircle1.cv[0:7] ;scale -r -p 0cm 0cm 0cm 0.314594 0.314594 0.314594 ;rotate -r -p 0cm 0cm 0cm -ws -fo 90 0 0 ;scale -r -p 0cm 0cm 0cm 1.074808 1.074808 1.074808 ;select -r nurbsCircle1.cv[0] ;select -tgl nurbsCircle1.cv[2] ;select -tgl nurbsCircle1.cv[4] ;select -tgl nurbsCircle1.cv[6] ;move -r -os -wd 0 0 0.887825 ;move -r -os -wd 0 0 0.164455 ;select -r nurbsCircle1.cv[0:7] ;move -r -os -wd 0 0 -0.55977 ;scale -r -p 0cm 0cm -0.0336301cm 1.110661 1.110661 1.110661 ;scale -r -p 0cm 0cm -0.0336301cm 0.917011 0.917011 0.917011 ;move -r -os -wd 0 0 -0.99488 ;select -cl  ;')
					ctrl_get = GET.replace('v_weapon_', '')
					mc.rename('nurbsCircle1', ctrl_get)
				mc.parent(ctrl_get, offset)
				mc.matchTransform(ctrl_get, offset)
				mc.makeIdentity(ctrl_get, apply = 1, translate = 1 ,rotate = 1)

				mc.parent(offset, local_or_world_GRP)
				mc.parent(GET, ctrl_get)


				#create attrt to weapon
				mc.addAttr(ctrl_get, longName='Weapon', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)
				mc.parentConstraint('Cylinder_CTRL', offset, maintainOffset = True)

				#get costrain and attrb
				constrain_name_attrb = offset + '_parentConstraint1' + '.' + 'Cylinder_CTRL' + 'W0'
				ctrl_atr = ctrl_get + '.Weapon'
				mc.setAttr(ctrl_atr, 1)
				mc.connectAttr(ctrl_atr, constrain_name_attrb)
				del constrain_name_attrb, ctrl_atr

				#visibility add
				v_ctrl = ctrl_get + '.visibility'
				v_W = 'Weapon_CTRL.Visibility_CTRLS'
				mc.connectAttr(v_W, v_ctrl)
				del v_ctrl, v_W

				#lock and hide scale, visibility
				mc.setAttr(ctrl_get + '.sx',lock =1, keyable =False, channelBox = False)
				mc.setAttr(ctrl_get + '.sy',lock =1, keyable =False, channelBox = False)
				mc.setAttr(ctrl_get + '.sz',lock =1, keyable =False, channelBox = False)
				mc.setAttr(ctrl_get + '.visibility', lock =1, keyable =False, channelBox = False)


				mc.setAttr(ctrl_get + '.overrideEnabled', True)
				mc.setAttr(ctrl_get + '.overrideRGBColors', True)
				if SHELL:
					mc.setAttr(ctrl_get + '.overrideColorR', 0.025)
					mc.setAttr(ctrl_get + '.overrideColorG', 0,128)
					mc.setAttr(ctrl_get + '.overrideColorB', 1)
				else:
					mc.setAttr(ctrl_get + '.overrideColorR', 1)
					EXPORT_SHELLS.append(ctrl_get)

				del ctrl_get
				del offset
			if not SHELL:
				return EXPORT_SHELLS
				del EXPORT_SHELLS
			del bullets,SHELL
			del parent

			######################################  GO TO NEXT  ######################################


		if REVOLVER_CRAN != '' and REVOLVER_EJECTOR != '' and REVOLVER_CYLINDER != '':
			# cran
			mc.parent('Crane_CTRL', PARENT)
			mc.matchTransform('Crane_CTRL', REVOLVER_CRAN)
			mc.makeIdentity('Crane_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = REVOLVER_CRAN, for_whom = 'Crane_CTRL', axis = True)
			mc.setAttr('Crane_CTRL.rotate',90,0,0)
			mc.makeIdentity('Crane_CTRL', apply = 1, translate = 1 ,rotate = 1)


			# ejector
			mc.parent('Ejector_CTRL', PARENT)
			mc.matchTransform('Ejector_CTRL', REVOLVER_EJECTOR)
			mc.makeIdentity('Ejector_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = REVOLVER_EJECTOR, for_whom = 'Ejector_CTRL', axis = True)
			mc.setAttr('Ejector_CTRL.rotate',-90,0,0)
			mc.makeIdentity('Ejector_CTRL', apply = 1, translate = 1 ,rotate = 1)

			# cylinder
			mc.parent('Cylinder_CTRL', PARENT)
			mc.matchTransform('Cylinder_CTRL', REVOLVER_CYLINDER)
			mc.makeIdentity('Cylinder_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = REVOLVER_CYLINDER, for_whom = 'Cylinder_CTRL', axis = True)
			#mc.setAttr(REVOLVER_CYLINDER + '.rotate',0,0,0)



			# create parent ctrls
			BULLET_LIST = []
			trnsf = mc.ls(type = 'transform')
			for nd in trnsf:
				if nd.find('_cylbullet') != -1 and nd.find('_CTRL') != -1:
					BULLET_LIST.append(nd)
					#print(nd)
			del trnsf

			BULLET_JOINTS = []
			jntssss = mc.ls(type = 'joint')
			for nd in jntssss:
				if nd.find('cylbullet') != -1 and not nd.find('_end') != -1:
					BULLET_JOINTS.append(nd)
					#print(nd)
			del jntssss

			# hierarhy default FK
			mc.parent(REVOLVER_CRAN, 'Crane_CTRL')
			mc.parent(REVOLVER_EJECTOR, 'Ejector_CTRL')
			mc.parent(REVOLVER_CYLINDER, 'Cylinder_CTRL')



			mc.parent('Ejector_CTRL', 'Crane_CTRL')
			mc.parent('Cylinder_CTRL', 'Crane_CTRL')


			# CREATE EMPTY
			# check error
			nice = True
			mesh = mc.ls(type = 'mesh')
			for m in mesh:
				if m.find('_cylinder_bullets_fired') != -1:
					nice = False
					break
			del mesh
			if not nice:
				return
			del nice


			# WORLD CREATE
			CTRLS_BULLETS = bullet_generator(bullets = BULLET_LIST, parent = PARENT, SHELL = False)
			#del BULLET_LIST



			#print('-----------BULLET_JOINTS + bullet--------------')
			# rename all
			for bl in BULLET_JOINTS:
				mc.rename(bl, 'bullet_'+bl)
				#print('bullet_'+bl)

			#print('---------BULLET_LIST + bullet AND OFFSET AND CONSTRAIN----------------')
			for bl in BULLET_LIST:
				mc.rename(bl, 'bullet_'+bl)
				#print('bullet_'+bl)
				offset = 'offset_' + bl
				mc.rename(offset, 'bullet_'+offset)
				mc.rename(offset + '_parentConstraint1','bullet_'+offset + '_parentConstraint1')
				del offset

			#print('-------------CTRLS_BULLETS------------')
			for bl in CTRLS_BULLETS:
				mc.rename(bl, 'bullet_'+bl)
				#print('bullet_'+bl)

			#print('--------- jonts -------------')
			#for bl in BULLET_JOINTS:
			#	print(bl)


			#import SHELLS
			# import empty models

			mc.file(PATH_FOLDER_FBX +'/'+ 'v_pist_revolver_revolver_cylinder_bullets_fired.ModelFromBlender.fbx',i=True, mergeNamespacesOnClash=True, namespace=':')


			SHELL_NULLS = create_nulls(jnts = BULLET_JOINTS)

			# create constrains
			for n in range(0,len(SHELL_NULLS)):
				mc.parentConstraint(SHELL_NULLS[n],BULLET_JOINTS[n])

			# build shells
			bullet_generator(bullets = SHELL_NULLS, parent = PARENT, SHELL = True)

			# rename shells
			# rename all
			for bl in BULLET_JOINTS:
				mc.rename(bl, 'shell_'+bl)

			for bl in BULLET_LIST:
				mc.rename(bl, 'shell_'+bl)
				#print('bullet_'+bl)
				offset = 'offset_' + bl
				mc.rename(offset, 'shell_'+offset)
				mc.rename(offset + '_parentConstraint1','shell_'+offset + '_parentConstraint1')
				del offset

			for bl in CTRLS_BULLETS:
				mc.rename(bl, 'shell_'+bl)


			del CTRLS_BULLETS, BULLET_JOINTS, BULLET_LIST, SHELL_NULLS

			############################################
			# create hierarhy

		else:
			mc.delete('Crane_CTRL'+'Shape')
			mc.delete('Crane_CTRL')
			mc.delete('Cylinder_CTRL'+'Shape')
			mc.delete('Cylinder_CTRL')
			mc.delete('Ejector_CTRL'+'Shape')
			mc.delete('Ejector_CTRL')





		if TRIGGER != '':
			mc.parent('Trigger_CTRL', PARENT)
		#mc.parent('Trigger_CTRL', PARENT)
		#mc.parent('Slider_CTRL', PARENT)
		if HAMMER != '':
			mc.parent('Hammer_CTRL', PARENT)


		#match transform
		#mc.matchTransform('Mag_CTRL', MAG)
		if TRIGGER != '':
			mc.matchTransform('Trigger_CTRL', TRIGGER)
		if BOLT != '':
			mc.matchTransform('Slider_CTRL', BOLT)
		if RELEASE != '':
			mc.matchTransform('Release_CTRL', RELEASE)
		if MULTY_BOLT != '':
			mc.matchTransform('MULTY_bold_CTRL', MULTY_BOLT)
		if PARENT != '':
			mc.matchTransform('Weapon_CTRL', PARENT)
		if PARENT != '':
			mc.matchTransform('R_HAND_CNSTR', PARENT)
		if PARENT != '':
			mc.matchTransform('L_HAND_CNSTR', PARENT)


		if HAMMER != '':
			mc.matchTransform('Hammer_CTRL', HAMMER)


		#mc.makeIdentity('Mag_CTRL', apply = 1, translate = 1 ,rotate = 1)
		if TRIGGER != '':
			mc.makeIdentity('Trigger_CTRL', apply = 1, translate = 1 ,rotate = 1)
		#mc.makeIdentity('Slider_CTRL', apply = 1, translate = 1 ,rotate = 1)

		if HAMMER != '':
			mc.makeIdentity('Hammer_CTRL', apply = 1, translate = 1 ,rotate = 1)


		#fix
		#flip_rotation_axis(from_object = MAG, for_whom = 'Mag_CTRL', axis = True)
		#flip_rotation_axis(from_object = BOLT, for_whom = 'Slider_CTRL', axis = True)
		if TRIGGER != '':
			flip_rotation_axis(from_object = TRIGGER, for_whom = 'Trigger_CTRL', axis = True)


		#nulls to ctrls
		if TRIGGER != '':
			mc.parent(TRIGGER, 'Trigger_CTRL')
			mc.setAttr(TRIGGER + '.rotate',0,0,0)
		if BOLT != '':
			mc.parent(BOLT, 'Slider_CTRL')
			mc.setAttr(BOLT + '.rotate',0,0,0)

		if HAMMER != '':
			mc.parent(HAMMER, 'Hammer_CTRL')
			mc.setAttr(HAMMER + '.rotate',0,0,0)

		if RELEASE != '':
			mc.parent(RELEASE, 'Release_CTRL')
			mc.setAttr(RELEASE + '.rotate',0,0,0)

		if MULTY_BOLT != '':
			mc.parent('MULTY_bold_CTRL', BOLT)
			mc.parent(MULTY_BOLT, 'MULTY_bold_CTRL')




		# NOT ASYNC
		#get mesh
		REVOLVER = False
		ALL_MESH = mc.ls(type = 'mesh')
		for geo in ALL_MESH:
			if geo.find('_revolver') != -1:
				REVOLVER = True
				break
		del ALL_MESH
		if REVOLVER:
			#call null
			mc.setAttr('v_weapon_trigger_CTRL.rotate',0,0,0)
			mc.setAttr('Trigger_CTRL.rotate',90,0,0)
			mc.makeIdentity('Trigger_CTRL', apply = 1, translate = 1, rotate = 1)









		if SILENCER != '':
			mc.parent('Silencer_CTRL', PARENT)
			mc.matchTransform('Silencer_CTRL', SILENCER)
			mc.makeIdentity('Silencer_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = SILENCER, for_whom = 'Silencer_CTRL', axis = True)
		else:
			mc.delete('Silencer_CTRL'+'Shape')
			mc.delete('Silencer_CTRL')

		if MAGAZIN != '':
			mc.parent('MAGAZINE_CTRL', PARENT)
			mc.matchTransform('MAGAZINE_CTRL', MAGAZIN)
			mc.makeIdentity('MAGAZINE_CTRL', apply = 1, translate = 1 ,rotate = 1)
			flip_rotation_axis(from_object = MAGAZIN, for_whom = 'MAGAZINE_CTRL', axis = True)
		else:
			mc.delete('MAGAZINE_CTRL'+'Shape')
			mc.delete('MAGAZINE_CTRL')



		'''
		#create master
		mel.eval('select -cl  ;')
		mel.eval('doGroup 0 1 1;')
		GLOBAL_MASTER = 'fast_master'
		mc.rename('null1', GLOBAL_MASTER)
		mel.eval('select -cl  ;')
		'''


		# for mag and silenster and others models
		def local_world_ctrls(offset_add = 1, ctrl = '', null = '', master = '', parent = '', grp = False):
			#init void
			if ctrl == '' and null == '' and master == '':
				return

			offset = ''

			#create offset
			if offset_add == 1:
				name_null = 'offset_' + ctrl
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', name_null)
				mel.eval('select -cl  ;')
				offset = name_null
				del name_null

			if parent != '':
				mc.matchTransform(offset, parent)
			else:
				mc.matchTransform(offset, null)

			mc.parent(ctrl, offset)

			mc.parent(offset, master)



			if parent != '':
				mc.parentConstraint(parent, offset, maintainOffset = True)
				mc.parent(null, ctrl)
			else:
				mc.parentConstraint(null, offset, maintainOffset = True)


			#get constrain name AND attribute from constrain
			name_cnstr = offset + '_parentConstraint1'
			to_weapon_ctrl = ctrl + '.To_Weapon'
			to_weapon_constrain = ''
			if parent != '':
				to_weapon_constrain = name_cnstr + '.' + parent + 'W0'
			else:
				to_weapon_constrain = name_cnstr + '.' + null + 'W0'

			mc.connectAttr(to_weapon_ctrl, to_weapon_constrain)

			mc.setAttr(to_weapon_ctrl, 1)

			#if grp = True
			if grp == True:
				#get offset for parent
				#get ctrl
				#create new _grp

				new_grp = ctrl + '_grp'
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', new_grp)
				mel.eval('select -cl  ;')

				mc.parent(new_grp, offset)
				mc.matchTransform(new_grp, ctrl)

				mc.parent(ctrl, new_grp)
				mc.parent(null, offset)

				#create rotation AXIS

				#   GET

				from_x = mc.getAttr(ctrl + '.rax')
				from_y = mc.getAttr(ctrl + '.ray')
				from_z = mc.getAttr(ctrl + '.raz')
				#print(str(from_x) + '\n' + str(from_y) + '\n' + str(from_z))
				mc.setAttr(new_grp + '.rotateAxisX', from_x)
				mc.setAttr(new_grp + '.rotateAxisY', from_y)
				mc.setAttr(new_grp + '.rotateAxisZ', from_z)

				mc.setAttr(ctrl + '.rotate',0,0,0)

				mc.setAttr(ctrl + '.rax',0)
				mc.setAttr(ctrl + '.ray',0)
				mc.setAttr(ctrl + '.raz',0)

				mc.makeIdentity(ctrl, apply = 1, translate = 1 ,rotate = 0)

				mc.parent(null, ctrl)

				del from_x, from_y, from_z


				##########################################
				#    exception
				if parent != '':
					if parent.find('tec9') != -1:
						#fix mag ctrls
						mc.parent(null, new_grp)
						mc.setAttr(ctrl + '.rx', -90)
						mc.makeIdentity(ctrl, apply = 1, translate = 0 ,rotate = 1)
						mc.parent(null, ctrl)
						# for slider
						mc.setAttr('Slider_CTRL.rotate',90,0,180)
						mc.makeIdentity('Slider_CTRL', apply = 1, translate = 1 ,rotate = 1)
					elif parent.find('cz') != -1:
						mc.parent(null, new_grp)
						mc.setAttr(ctrl + '.rx', -90)
						mc.makeIdentity(ctrl, apply = 1, translate = 0 ,rotate = 1)
						mc.parent(null, ctrl)
						#mel.eval('select -r Slider_CTRLShape.cv[0:75] ;rotate -r -p -0.195342cm 7.438298cm 0.992976cm -os -fo 90 0 0 ;rotate -r -p -0.195342cm 7.438298cm 0.992976cm -os -fo 0 180 0 ;move -r -os -wd 0 -0.659835 2.582293 ;select -cl  ;')




			del name_cnstr, to_weapon_ctrl, to_weapon_constrain, offset


		if MAG != '':
			#create mag
			local_world_ctrls(offset_add = 1, ctrl = 'Mag_CTRL', null = MAG, master = GLOBAL_MASTER, parent = PARENT, grp = True)

		if SILENCER != '':
			#create SILENCER
			local_world_ctrls(offset_add = 1, ctrl = 'Silencer_CTRL', null = SILENCER, master = GLOBAL_MASTER, parent = PARENT, grp = True)

		if MAGAZIN != '':
			#create 2 mag
			local_world_ctrls(offset_add = 1, ctrl = 'MAGAZINE_CTRL', null = MAGAZIN, master = GLOBAL_MASTER, parent = PARENT, grp = True)
		if not PUSH:
			#create R ctrl
			local_world_ctrls(offset_add = 1, ctrl = 'R_HAND_CNSTR', null = PARENT, master = GLOBAL_MASTER, parent = '')

		if not PUSH:
			#create L ctrl
			local_world_ctrls(offset_add = 1, ctrl = 'L_HAND_CNSTR', null = PARENT, master = GLOBAL_MASTER, parent = '')
	
		del PUSH


		# FUNC FOR FIX SHAPES
		def GLOBAL_FIX_CTRLS(MODEL_NAME = ''):
			''' fix default shapes for all weapons
				func its slow
			'''


			# GLOBAL FIX
			# NOT ASYNC
			#get mesh
			CZ_INIT = False
			TEG9_INIT = False
			REVOLVER_INIT = False
			SSG08_INIT = False
			G3SG1_INIT = False
			SCAR20_INIT = False
			AWP_INIT = False
			UMP_INIT = False
			P90_INIT = False

			MP5SD_INIT = False
			MAG10_INIT = False

			BIZON_INIT = False

			XM1014_INIT = False

			SAWEDOFF_INIT = False

			NOVA_INIT = False

			MAG7_INIT = False
			#rif
			SG556_INIT = False
			M4A1S_INIT = False
			M4A4_INIT = False
			GALILAR_INIT = False
			FAMAS_INIT = False
			AUG_INIT = False
			AK47_INIT = False

			#other pist
			TEC9_INIT = False
			HKP2OOO_INIT = False
			ELITE_INIT = False

			TASER_INIT = False

			#mach
			NEGEV_INIT = False
			M249PARA_INIT = False

			#knife
			KNIFE_INIT = False
			


			#  and trafshorm AND   ERRORS FROM RIG

			#mel.eval('select -r Trigger_CTRL ;setAttr -k on Trigger_CTRL.visibility;CBunlockAttr "Trigger_CTRL.v";')
			#extra trigger find

			ch_knife = mc.ls(type = 'mesh')
			k = False
			for ddd in ch_knife:
				if ddd.find('knife'):
					k = True
					break
			del ch_knife
			if not k:
				mc.setAttr('Trigger_CTRL.visibility', lock = 0)

			

			#    EXTRA METHOD
			revo = False
			valera_mesh = mc.ls(type = 'mesh')
			for xs in valera_mesh:
				if xs.find('revolver') != -1 or xs.find('p250') != -1 or xs.find('hkp2000') != -1 or xs.find('elite') != -1 or xs.find('deagle_reference') != -1 or xs.find('cz_75') != -1 or xs.find('223') != -1:
					revo = True
					break
			del valera_mesh
			if revo != True:
				if not k:
					mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', 'Trigger_CTRL.visibility')
					mel.eval('setAttr -lock true -keyable false -channelBox false "Trigger_CTRL.v";')
			del revo
			#
			if RELEASE != '':
				mc.setAttr('Release_CTRL.visibility', lock = 0)
				mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', 'Release_CTRL.visibility')
				mel.eval('setAttr -lock true -keyable false -channelBox false "Release_CTRL.v";')

			#  CREATE SPLINE IK FOR MAG 10  #

			#DEF SPLINE IK ------!  FK def
			def create_FK_mag10():
				# FUNC STATIC!!! NO PROCEDURAL!
				# GET TRANSFORM

				FK_NULLS = [
					'v_weapon_mac10_strap1_CTRL',
					'v_weapon_mac10_strap2_CTRL',
					'v_weapon_mac10_strap3_CTRL',
					'v_weapon_mac10_strap4_CTRL',
					'v_weapon_mac10_strap5_CTRL',
					'v_weapon_mac10_strap6_CTRL',
					'v_weapon_mac10_strap7_CTRL',
				]

				FK_CTRLS = []

				for NULL in FK_NULLS:
					#create cntrl
					name_ctrl = NULL.replace('v_weapon_', '')
					mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1;')
					mc.rename('nurbsCircle1', name_ctrl)

					mc.parent(name_ctrl, 'v_weapon_mac10_parent_CTRL')
					mc.matchTransform(name_ctrl, NULL)
					mc.makeIdentity(name_ctrl, apply=1 , translate = 1, rotate = 1)
					FK_CTRLS.append(name_ctrl)
					mc.parent(NULL, name_ctrl)

					mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', name_ctrl + '.visibility')

					#lock and hide scale, visibility
					mc.setAttr(name_ctrl + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_ctrl + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_ctrl + '.sz',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_ctrl + '.visibility', lock =1, keyable =False, channelBox = False)
					del name_ctrl

				#for x in FK_CTRLS:
				#	print(x)

				mc.parent(FK_CTRLS[6], FK_CTRLS[5])
				mc.parent(FK_CTRLS[5], FK_CTRLS[4])
				mc.parent(FK_CTRLS[4], FK_CTRLS[3])
				mc.parent(FK_CTRLS[3], FK_CTRLS[2])
				mc.parent(FK_CTRLS[2], FK_CTRLS[1])
				mc.parent(FK_CTRLS[1], FK_CTRLS[0])

				del FK_CTRLS,FK_NULLS

				mel.eval('select -r mac10_strap1_CTRL ;hilite mac10_strap1_CTRL ;select -r mac10_strap1_CTRLShape.cv[0:7] ;rotate -r -p 1.24305e-05cm 2.928226cm 11.756476cm -os -fo 90 0 0 ;select -r mac10_strap2_CTRLShape.cv[0:7] ;scale -r -p 1.22049e-05cm 1.354337cm 11.759047cm 0.908973 0.908973 0.908973 ;select -r mac10_strap4_CTRLShape.cv[0:7] ;scale -r -p 0.00434419cm 0.0235145cm 11.572613cm 0.691965 0.691965 0.691965 ;scale -r -p 0.00434419cm 0.0235145cm 11.572613cm 1.262734 1.262734 1.262734 ;select -r mac10_strap3_CTRLShape.cv[0:7] ;scale -r -p 0.00411534cm 0.577939cm 11.576525cm 0.638589 0.638589 0.638589 ;scale -r -p 0.00411534cm 0.577939cm 11.576525cm 1.234406 1.234406 1.234406 ;select -r mac10_strap5_CTRLShape.cv[0:7] ;scale -r -p 0.00481766cm -1.102833cm 11.560383cm 0.633763 0.633763 0.633763 ;select -r mac10_strap6_CTRLShape.cv[0:7] ;scale -r -p 0.00529548cm -2.238159cm 11.564541cm 0.670353 0.670353 0.670353 ;select -r mac10_strap7_CTRLShape.cv[0:7] ;scale -r -p 0.00589692cm -3.672752cm 11.569795cm 0.786568 0.786568 0.786568 ;select -cl  ;')

				mc.setAttr('mac10_strap1_CTRL.overrideEnabled', True)
				mc.setAttr('mac10_strap1_CTRL.overrideRGBColors', True)
				mc.setAttr('mac10_strap1_CTRL.overrideColorR', 0)
				mc.setAttr('mac10_strap1_CTRL.overrideColorG', 0,574)
				mc.setAttr('mac10_strap1_CTRL.overrideColorB', 1)


			def shell_static_local_world():
				# FUNC STATIC!!! NO PROCEDURAL!
				# GET TRANSFORM
				TRANSFORM = [
					'v_weapon_xm1014_Shell1_CTRL',
					'v_weapon_xm1014_Shell2_CTRL',
					'v_weapon_xm1014_Shell3_CTRL',
					'v_weapon_xm1014_Shell4_CTRL',
				]

				#create grp
				SHELLS = 'SHELLS'
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', SHELLS)
				mel.eval('select -cl  ;')


				for nll in TRANSFORM:
					#create ctrls'
					mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;select -addFirst makeNurbCircle1 ;setAttr "makeNurbCircle1.normalY" 0;setAttr "makeNurbCircle1.normalZ" 1;setAttr "makeNurbCircle1.radius" 0.5;hilite makeNurbCircle1 nurbsCircle1 ;select -r nurbsCircle1.cv[0:7] ;move -r -os -wd 0 0 1.226403 ;select -cl  ;')
					CTRL_NAME = nll.replace('v_weapon_','')
					mc.rename('nurbsCircle1', CTRL_NAME)

					#create offset
					#create grp
					OFFSET = 'offset_' + CTRL_NAME
					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', OFFSET)
					mel.eval('select -cl  ;')

					mc.parent(CTRL_NAME, SHELLS)
					mc.parent(OFFSET, SHELLS)

					# match transform
					mc.matchTransform(CTRL_NAME, nll)
					mc.matchTransform(OFFSET, nll)

					mc.parent(CTRL_NAME, OFFSET)

					#create attrb

					mc.addAttr(CTRL_NAME, longName='Weapon', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)
					mc.parentConstraint('v_weapon_xm1014_Parent_CTRL', OFFSET, maintainOffset = True)
					mc.setAttr(CTRL_NAME + '.Weapon',1)
					#connect
					cnstr_attrb = OFFSET + '_parentConstraint1' + '.v_weapon_xm1014_Parent_CTRLW0'
					mc.connectAttr(CTRL_NAME + '.Weapon',cnstr_attrb)
					del cnstr_attrb

					mc.parent(nll, CTRL_NAME)

					#lock and hide scale, visibility
					mc.setAttr(CTRL_NAME + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(CTRL_NAME + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(CTRL_NAME + '.sz',lock =1, keyable =False, channelBox = False)
					mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', CTRL_NAME + '.visibility')
					mc.setAttr(CTRL_NAME + '.visibility', lock =1, keyable =False, channelBox = False)
					#color
					mc.setAttr(CTRL_NAME + '.overrideEnabled', True)
					mc.setAttr(CTRL_NAME + '.overrideRGBColors', True)
					mc.setAttr(CTRL_NAME + '.overrideColorR', 1)

					del CTRL_NAME, OFFSET

				del SHELLS
				del TRANSFORM
				mel.eval('select -cl  ;select -r xm1014_Shell1_CTRL ;select -addFirst makeNurbCircle1 ;select -cl  ;select -r xm1014_Shell2_CTRL ;select -addFirst makeNurbCircle2 ;setAttr "makeNurbCircle2.normalY" 0;setAttr "makeNurbCircle2.normalZ" 1;setAttr "makeNurbCircle2.radius" 0.5;select -r xm1014_Shell3_CTRL ;select -addFirst makeNurbCircle3 ;setAttr "makeNurbCircle3.radius" 0.5;setAttr "makeNurbCircle3.normalZ" 1;setAttr "makeNurbCircle3.normalY" 0;select -r xm1014_Shell4_CTRL ;select -addFirst makeNurbCircle4 ;setAttr "makeNurbCircle4.radius" 0.5;setAttr "makeNurbCircle4.normalZ" 1;setAttr "makeNurbCircle4.normalY" 0;select -cl  ;')


			def create_circle_ctrl(name = '', lock_scale=False,color = [0,0,0], hide_and_connect_visibility_to = ''):
				''' 
				name = [name ctrls],
				lock_scale = [lock scale and hide in ctrl],
				color = [RGB color shapes ctrl]
				hide_and_connect_visibility_to = [ctrl attrb conntrol visibility connect to CTRL visibility and lock/hide]
				'''
				if name =='':
					return
				mel.eval(
					'circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;'
					'select -addFirst makeNurbCircle1 ;'
					'select -cl  ;'
					)
				mc.rename('nurbsCircle1', name)


				if lock_scale:
					mc.setAttr(name + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name + '.sz',lock =1, keyable =False, channelBox = False)

				if hide_and_connect_visibility_to != '':
					if hide_and_connect_visibility_to.find('.')!=-1:
						mc.connectAttr(hide_and_connect_visibility_to, name + '.visibility')
						mc.setAttr(name + '.visibility', lock =1, keyable =False, channelBox = False)

				#color
				mc.setAttr(name + '.overrideEnabled', True)
				mc.setAttr(name + '.overrideRGBColors', True)
				mc.setAttr(name + '.overrideColorR', color[0])
				mc.setAttr(name + '.overrideColorG', color[1])
				mc.setAttr(name + '.overrideColorB', color[2])


			def create_math_bullet_setup(math = '', folder_fbx = ''):
				'''
				for all math
				for negev 
				for M249PARA
				'''
				
				# STATIC
				NEGEV_BULLETS = [
					'v_mach_negev_bullet01.ModelFromBlender',
					'v_mach_negev_bullet02.ModelFromBlender',
					'v_mach_negev_bullet03.ModelFromBlender',
					'v_mach_negev_bullet04.ModelFromBlender',
					'v_mach_negev_bullet05.ModelFromBlender',
					'v_mach_negev_bullet06.ModelFromBlender',
					'v_mach_negev_bullet07.ModelFromBlender',
					'v_mach_negev_bullet08.ModelFromBlender',
					'v_mach_negev_bullet09.ModelFromBlender',
					'v_mach_negev_bullet10.ModelFromBlender',
					'v_mach_negev_bullet11.ModelFromBlender',
					'v_mach_negev_bullet12.ModelFromBlender',
					'v_mach_negev_bullet13.ModelFromBlender',
					'v_mach_negev_bullet14.ModelFromBlender',
					'v_mach_negev_bullet15.ModelFromBlender',
					'v_mach_negev_bullet16.ModelFromBlender',
					'v_mach_negev_bullet17.ModelFromBlender',
					'v_mach_negev_bullet18.ModelFromBlender',
					'v_mach_negev_bullet19.ModelFromBlender',
					'v_mach_negev_bullet10.ModelFromBlender',
				]

				M249PARA_BULLETS = [
					'v_mach_m249para_bullet01.ModelFromBlender',
					'v_mach_m249para_bullet02.ModelFromBlender',
					'v_mach_m249para_bullet03.ModelFromBlender',
					'v_mach_m249para_bullet04.ModelFromBlender',
					'v_mach_m249para_bullet05.ModelFromBlender',
					'v_mach_m249para_bullet06.ModelFromBlender',
					'v_mach_m249para_bullet07.ModelFromBlender',
					'v_mach_m249para_bullet08.ModelFromBlender',
					'v_mach_m249para_bullet09.ModelFromBlender',
					'v_mach_m249para_bullet10.ModelFromBlender',
					'v_mach_m249para_bullet11.ModelFromBlender',
					'v_mach_m249para_bullet12.ModelFromBlender',
					'v_mach_m249para_bullet13.ModelFromBlender',
					'v_mach_m249para_bullet14.ModelFromBlender',
					'v_mach_m249para_bullet15.ModelFromBlender',
					'v_mach_m249para_bullet16.ModelFromBlender',
				]



				# IMPORT BULLETS 
				if math.find('negev')!=-1:
					#import negev
					pass
				elif math.find('m249para')!=-1:
					#import m249para
					pass

				# create curve

				# create hierarhy joints
				# add new type 
				# FK AND MOTION PATH

				# unbinding



				# create motionPath

				# create attrbs and connections

				# hide and lock

				# mach_m249para  011 to 02 belt

			# SET NODEL NAME
			MODEL_NAME = 'mda'


			ALL_MESH = mc.ls(type = 'mesh')
			for geo in ALL_MESH:
				#_cz_75
				if geo.find('_cz_75') != -1:
					CZ_INIT = True
					break

				#tec9
				elif geo.find('tec9') != -1:
					TEG9_INIT = True
					TEC9_INIT = True
					break

				elif geo.find('revolver') != -1:
					REVOLVER_INIT = True
					break

				# NORMAL
				elif geo.find('ssg08') != -1:
					SSG08_INIT = True
					break

				elif geo.find('_g3sg1') != -1:
					G3SG1_INIT = True
					break

				elif geo.find('scar20') != -1:
					SCAR20_INIT = True
					break

				elif geo.find('awp') != -1:
					AWP_INIT = True
					break

				elif geo.find('ump45') != -1:
					UMP_INIT = True
					break

				elif geo.find('p90') != -1:
					P90_INIT = True
					break

				elif geo.find('mp5sd') != -1:
					MP5SD_INIT = True
					break

				elif geo.find('mac10') != -1:
					MAG10_INIT = True
					break

				elif geo.find('bizon') != -1:
					BIZON_INIT = True
					break

				elif geo.find('xm1014') != -1:
					XM1014_INIT = True
					break

				elif geo.find('sawedoff') != -1:
					SAWEDOFF_INIT = True
					break

				elif geo.find('nova') != -1:
					NOVA_INIT = True
					break

				elif geo.find('mag7') != -1:
					MAG7_INIT = True
					break

				elif geo.find('sg556') != -1:
					SG556_INIT = True
					break

				elif geo.find('m4a1_s') != -1:
					M4A1S_INIT = True
					break

				elif geo.find('m4a1_reference') != -1:
					M4A4_INIT = True
					break

				elif geo.find('galilar') != -1:
					GALILAR_INIT = True
					break

				elif geo.find('_famas') != -1:
					FAMAS_INIT = True
					break

				elif geo.find('aug') != -1:
					AUG_INIT = True
					break

				elif geo.find('ak47') != -1:
					AK47_INIT = True
					break

				#pist
				elif geo.find('hkp2000') != -1:
					HKP2OOO_INIT = True
					break

				elif geo.find('elite') != -1:
					ELITE_INIT = True
					break

				elif geo.find('negev') != -1:
					NEGEV_INIT = True
					break

				elif geo.find('_taser') != -1:
					TASER_INIT = True
					break

				elif geo.find('_knife') != -1:
					KNIFE_INIT = True
					break

				elif geo.find('_m249para') != -1:
					M249PARA_INIT = True
					break


			del ALL_MESH
			#fix methods
			if CZ_INIT:
				mel.eval('select -r Slider_CTRLShape.cv[0:75] ;rotate -r -p -0.195342cm 7.438298cm 0.992976cm -os -fo 90 0 0 ;rotate -r -p -0.195342cm 7.438298cm 0.992976cm -os -fo 0 180 0 ;move -r -os -wd 0 -0.659835 2.582293 ;move -r 0.300036 -3.061717 2.187448 ;rotate -r -p 0.104691cm 6.958873cm 3.840264cm -os -fo 0 0 -180 ;rotate -r -p 0.104691cm 6.958873cm 3.840264cm -os -fo 0 180 0 ;select -cl  ;')
				mc.setAttr('Slider_CTRL.rax',0)
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 1.876488 0 ;rotate -r -p 0.104691cm 6.439075cm 4.642952cm -os -fo -90 0 0 ;move -r -os -wd 0 -0.197082 -1.187038 ;select -cl  ;select -r Hammer_CTRL ;hilite Hammer_CTRL ;select -r Hammer_CTRLShape.cv[0:11] ;scale -r -p -0.79131cm 6.371612cm 1.713443cm 0.660233 0.660233 0.660233 ;move -r -os -wd 0 -1.034076 -1.22642 ;move -r -os -wd 0 -0.0165663 -0.000274488 ;select -cl  ;')
			del CZ_INIT

			if REVOLVER_INIT:
				mel.eval('select -r Release_CTRLShape.cv[0:9] ;rotate -r -p 1.223664cm -1.05733cm 0.309915cm -ws -fo 0 0 -90 ;rotate -r -p 1.223664cm -1.05733cm 0.309915cm -ws -fo 90 0 0 ;scale -r -p 1.223664cm -1.05733cm 0.309915cm 0.528762 0.528762 0.528762 ;move -r -os -wd 0 -1.494825 5.811191 ;select -cl  ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd -0.568212 0 0 ;select -cl  ;')


				# CREATE LOADER

				#create grp

				mel.eval(
					'select -cl  ;'
					'doGroup 0 1 1;'
					'select -cl  ;'
					)

				mc.rename('null1', 'LOADER')

				bone_parent = 'v_weaponFBXASC046loader_handle'

				# create ctrl
				mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;'
					'select -add v_weaponFBXASC046loader_handle ;'
					'select -r nurbsCircle1 ;'
					'hilite nurbsCircle1 ;'
					'select -r nurbsCircle1.cv[5] ;'
					'select -tgl nurbsCircle1.cv[1] ;'
					'move -r -os -wd 0 -1.853414 0 ;'
					'select -r nurbsCircle1.cv[0:7] ;'
					'move -r -os -wd 0 0.659525 0 ;'
					'select -cl ;'
					)

				loader_name = 'Loader_bullet_CTRL'
				mc.rename('nurbsCircle1',loader_name)
				mc.matchTransform(loader_name, bone_parent)
				mc.parent('LOADER', GLOBAL_MASTER)
				mc.parent(loader_name, 'LOADER')
				mc.matchTransform(loader_name, bone_parent)
				mc.makeIdentity(loader_name, apply = 1, translate = 0, rotate =1)

				mc.parentConstraint(loader_name, bone_parent, maintainOffset = 1)

				mc.setAttr(loader_name+'.overrideEnabled', True)
				mc.setAttr(loader_name+'.overrideRGBColors', True)
				mc.setAttr(loader_name+'.overrideColorR', 0)
				mc.setAttr(loader_name+'.overrideColorG', 0,574)
				mc.setAttr(loader_name+'.overrideColorB', 1)

				mc.setAttr(loader_name + '.sx',lock =1, keyable =False, channelBox = False)
				mc.setAttr(loader_name + '.sy',lock =1, keyable =False, channelBox = False)
				mc.setAttr(loader_name + '.sz',lock =1, keyable =False, channelBox = False)
				mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', loader_name + '.visibility')
				mc.setAttr(loader_name + '.visibility', lock =1, keyable =False, channelBox = False)

				del loader_name

				# CREATE EMPTY
				# check error
				nice = True
				mesh = mc.ls(type = 'mesh')
				for m in mesh:
					if m.find('_revolver_loader_empty') != -1:
						nice = False
						break
				del mesh
				if not nice:
					return
				del nice

				# new prefix

				#get bones
				mc.rename('v_weaponFBXASC046loader_holder', 'load_v_weaponFBXASC046loader_holder')
				mc.rename(bone_parent, 'load_'+bone_parent)
				mc.rename('v_weaponFBXASC046loader_holder_end', 'load_v_weaponFBXASC046loader_holder_end')
				mc.rename('v_weaponFBXASC046loader_handle_parentConstraint1', 'load_v_weaponFBXASC046loader_handle_parentConstraint1')

				# import empty
				mc.file(PATH_FOLDER_FBX +'/'+ 'v_pist_revolver_revolver_loader_empty.ModelFromBlender.fbx',i=True, mergeNamespacesOnClash=True, namespace=':')

				mel.eval(
					'select -cl  ;'
					'doGroup 0 1 1;'
					'select -cl  ;'
					)

				mc.rename('null1', 'EMPTY')


				# create ctrl
				mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;'
					'select -add v_weaponFBXASC046loader_handle ;'
					'select -r nurbsCircle1 ;'
					'hilite nurbsCircle1 ;'
					'select -r nurbsCircle1.cv[5] ;'
					'select -tgl nurbsCircle1.cv[1] ;'
					'move -r -os -wd 0 -1.853414 0 ;'
					'select -r nurbsCircle1.cv[0:7] ;'
					'move -r -os -wd 0 0.659525 0 ;'
					'select -cl ;'
					)

				empty_name = 'Empty_bullet_CTRL'
				mc.rename('nurbsCircle1',empty_name)
				mc.matchTransform(empty_name, bone_parent)
				mc.parent('EMPTY', GLOBAL_MASTER)
				mc.parent(empty_name, 'LOADER')
				mc.matchTransform(empty_name, bone_parent)
				mc.makeIdentity(empty_name, apply = 1, translate = 0, rotate =1)

				mc.parentConstraint(empty_name, bone_parent, maintainOffset = 1)

				mc.setAttr(empty_name+'.overrideEnabled', True)
				mc.setAttr(empty_name+'.overrideRGBColors', True)
				mc.setAttr(empty_name+'.overrideColorR', 0,802)
				mc.setAttr(empty_name+'.overrideColorG', 1)
				mc.setAttr(empty_name+'.overrideColorB', 1)

				mc.setAttr(empty_name + '.sx',lock =1, keyable =False, channelBox = False)
				mc.setAttr(empty_name + '.sy',lock =1, keyable =False, channelBox = False)
				mc.setAttr(empty_name + '.sz',lock =1, keyable =False, channelBox = False)
				mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', empty_name + '.visibility')
				mc.setAttr(empty_name + '.visibility', lock =1, keyable =False, channelBox = False)

				mc.setAttr(empty_name+'.translate',-5.218,0.174,5.373)
				del empty_name

				# fix connections vis
				mc.setAttr("Trigger_CTRL.v",lock=False)
				mc.setAttr("Hammer_CTRL.v",lock=False)
				mel.eval(
					# trigger
					'select -cl  ;'
					'select -r Trigger_CTRL ;'
					'setAttr -k on |v_pist_revolver_revolver_model_weapon|Weapon_CTRL|v_weapon_deagle_parent_CTRL|Trigger_CTRL.visibility;'
					#'CBunlockAttr "Trigger_CTRL.v";'
					'connectAttr -f Weapon_CTRL.Visibility_CTRLS Trigger_CTRL.visibility;'
					'setAttr -lock true -keyable false -channelBox false "Trigger_CTRL.v";'
					'select -cl  ;'
					# hammer
					'select -r Hammer_CTRL ;'
					'setAttr -k on |v_pist_revolver_revolver_model_weapon|Weapon_CTRL|v_weapon_deagle_parent_CTRL|Hammer_CTRL.visibility;'
					#'CBunlockAttr "Hammer_CTRL.v";'
					'connectAttr -f Weapon_CTRL.Visibility_CTRLS Hammer_CTRL.visibility;'
					'setAttr -lock true -keyable false -channelBox false "Hammer_CTRL.v";'
					'select -r Hammer_CTRL ;'
					)


			del REVOLVER_INIT

			if SSG08_INIT:
				# MULTY_bold_CTRL
				mc.setAttr('MULTY_bold_CTRL.tx',lock =1, keyable =False, channelBox = False)
				mc.setAttr('MULTY_bold_CTRL.ty',lock =1, keyable =False, channelBox = False)
				mc.setAttr('MULTY_bold_CTRL.tz',lock =1, keyable =False, channelBox = False)
				mc.setAttr('MULTY_bold_CTRL.rotate',0,0,0)
				mel.eval('select -r MULTY_bold_CTRL ;hilite MULTY_bold_CTRL ;select -r MULTY_bold_CTRLShape.cv[0:12] ;rotate -r -p -0.56217cm 3.204285cm 3.46527cm -os -fo 180 0 0 ;move -r -os -wd 0 -1.850807 0.35659 ;rotate -r -p -0.56217cm 5.055091cm 3.82186cm -os -fo 0 90 0 ;move -r -os -wd 0 0.219317 1.497448 ;move -r -os -wd 0.793402 0 0 ;scale -r -p -1.355574cm 4.835774cm 5.319307cm 0.441101 0.441101 0.441101 ;scale -r -p -1.355574cm 4.835774cm 5.319307cm 0.721556 0.721556 0.721556 ;scale -r -p -1.355574cm 4.835774cm 5.319307cm 1.024118 1.024118 1.024118 ;move -r -os -wd 0.688587 0.516739 0 ;select -cl  ;')
				# Slider_CTRL
				mc.setAttr('Slider_CTRL.rx',lock =1, keyable =False, channelBox = False)
				mc.setAttr('Slider_CTRL.ry',lock =1, keyable =False, channelBox = False)
				mc.setAttr('Slider_CTRL.rz',lock =1, keyable =False, channelBox = False)
				mc.setAttr('Slider_CTRL.translate',0,0,0)
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 0 -4.272812 ;move -r -os -wd 0 -1.957041 2.953074 ;move -r -os -wd -0.803123 0 0 ;select -cl  ;')
				# R_HAND_CNSTR
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0 -2.417208 0 ;move -r -os -wd 0.836026 0 0 ;move -r -os -wd 0 -1.637764 0 ;move -r -os -wd 0 1.938858 0 ;select -cl  ;')
				# L_HAND_CNSTR
				mel.eval('select -r L_HAND_CNSTR.cv[0:5] ; move -r -0.611351 -1.266069 -5.439515 ;move -r -os -wd 0.537423 0 0 ;move -r -os -wd 0 1.285345 0 ;move -r -os -wd 0 -2.325299 5.843643 ;move -r -os -wd 1.116686 0 0 ;move -r -os -wd 0 0.557043 0.0320012 ;select -cl  ;')
				# Weapon_CTRL
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 1.874558 0.697452 ;scale -r -p -0.187525cm 9.042562cm 5.426791cm 4.491445 4.491445 4.491445 ;move -r -os -wd 3.086578 -3.483801 0 ;move -r -os -wd -10.6508 -2.470649 0 ;move -r -os -wd 9.288585 0 0 ;move -r -os -wd 0 0 3.750595 ;move -r -os -wd -0.115979 1.607908 0 ;move -r -os -wd 0 0 0.4872 ;move -r -os -wd 0 -0.917904 0 ;select -cl  ;')
			del SSG08_INIT


			if G3SG1_INIT:
				# fix sphs
				mel.eval('select -r Slider_CTRLShape.cv[0:75] ;rotate -r -p -0.265927cm 8.663626cm 27.808402cm -ws -fo 0 0 -90 ;rotate -r -p -0.265927cm 8.663626cm 27.808402cm -ws -fo 90 0 0 ;rotate -r -p -0.265927cm 8.663626cm 27.808402cm -ws -fo 0 90 0 ;move -r -os -wd 7.23296e-10 -2.44051 -0.887335 ;move -r -os -wd 2.035679 2.38303e-10 -2.31477e-09 ;move -r -os -wd 4.5054e-10 0.382228 -0.356868 ;select -cl  ;')
				mel.eval('select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 0 -1.266973 3.941213 ;rotate -r -p 2.109367cm 3.610883cm 19.089083cm -ws -fo 0 90 0 ;scale -r -p 2.109367cm 3.610883cm 19.089083cm 0.675462 0.675462 0.675462 ;move -r -os -wd -1.256317 0.115617 0 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 4.041236 6.060868 ;scale -r -p -0.10904cm 10.842228cm 24.315557cm 1.226876 1.226876 1.226876 ;move -r -os -wd 0 -0.179217 0 ;select -cl  ;')
			del G3SG1_INIT

			if SCAR20_INIT:
				mel.eval('select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 1.857972 -2.134859 0 ;move -r -os -wd -0.31741 0 -1.165069 ;rotate -r -p 1.386372cm 13.987026cm 24.378983cm -ws -fo 0 0 90 ;rotate -r -p 1.386372cm 13.987026cm 24.378983cm -ws -fo 90 0 0 ;rotate -r -p 1.386372cm 13.987026cm 24.378983cm -ws -fo 0 -90 0 ;scale -r -p 1.386372cm 13.987026cm 24.378983cm 1.235904 1.235904 1.235904 ;move -r -os -wd -0.296258 0 -0.035177 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 6.215358 0.0139381 ;scale -r -p -0.109055cm 18.298467cm 19.947256cm 2.193309 2.193309 2.193309 ;move -r -os -wd 0 0.121501 0.000272468 ;select -cl  ;')
				mel.eval('select -r Trigger_CTRL ;rotate -r -ws -fo 81.258587 0 0 ;setAttr "Trigger_CTRL.rotateX" 90;makeIdentity -apply true -t 1 -r 1 -s 0 -n 0 -pn 0;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;rotate -r -p -1.178287cm 10.721245cm 18.621737cm -ws -fo -90 0 0 ;move -r -os -wd 0 -1.757681 -2.270764 ;select -cl  ;')
			del SCAR20_INIT

			if AWP_INIT:
				#mel.eval('select -r Slider_CTRL ;rotate -r -ws -fo -184.788678 0 0 ;setAttr "Slider_CTRL.rotateX" -180;rotate -r -ws -fo 0 0 178.348539 ;setAttr "Slider_CTRL.rotateZ" 180;makeIdentity -apply true -t 1 -r 1 -s 0 -n 0 -pn 0;select -r MULTY_bold_CTRL ;select -add v_weapon_awp_bolt_rail_CTRL ;parent; select -cl  ;')
				mc.parent('MULTY_bold_CTRL', 'v_weapon_awp_parent_CTRL')
				mc.setAttr('Slider_CTRL.rotate',180,0,180)
				mc.makeIdentity('Slider_CTRL', apply =1, translate =1,rotate=1)
				mc.parent('MULTY_bold_CTRL', 'Slider_CTRL')
				mel.eval('select -r MULTY_bold_CTRL ;hilite MULTY_bold_CTRL ;select -r MULTY_bold_CTRLShape.cv[0:12] ;move -r -os -wd -2.55577 0 0 ;rotate -r -p -1.898778cm 10.468349cm 3.905667cm -ws -fo 0 90 0 ;move -r -os -wd 0 -1.209674 1.412908 ;scale -r -p -1.898778cm 9.258676cm 5.318575cm 0.441667 0.441667 0.441667 ;move -r -os -wd -0.485082 -0.393193 0 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 -0.90318 -3.151575 ;move -r -os -wd -1.403528 0 0 ;move -r -os -wd 0 -0.718083 -0.474211 ;move -r -os -wd 0.535544 0 0 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 3.112615 3.602962 ;scale -r -p -0.109033cm 13.182746cm 9.692221cm 1.540865 1.540865 1.540865 ;move -r -os -wd 2.736005 0 0 ;move -r -os -wd -1.455174 -3.280211 0 ;move -r -os -wd -6.567084 2.005592 0 ;move -r -os -wd 3.431572 0 7.27772 ;move -r -os -wd 0 -0.721328 -2.707691 ;move -r -os -wd 0.0714114 0 0 ;scale -r -p -1.892303cm 11.186798cm 14.26225cm 1.812091 1.812091 1.812091 ;select -cl  ;')
				mel.eval('setAttr -lock true -keyable false -channelBox false "Slider_CTRL.rx";setAttr -lock true -keyable false -channelBox false "Slider_CTRL.ry";setAttr -lock true -keyable false -channelBox false "Slider_CTRL.rz";')
				mel.eval('select -r MULTY_bold_CTRL ;setAttr -lock true -keyable false -channelBox false "MULTY_bold_CTRL.tx";setAttr -lock true -keyable false -channelBox false "MULTY_bold_CTRL.ty";setAttr -lock true -keyable false -channelBox false "MULTY_bold_CTRL.tz";select -cl  ;')
				#mel.eval('select -r Trigger_CTRL ;setAttr -k on |fast_master|Weapon_CTRL|v_weapon_awp_parent_CTRL|Trigger_CTRL.visibility;CBunlockAttr "Trigger_CTRL.v";')
				#mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', 'Trigger_CTRL.visibility')
				#mel.eval('setAttr -lock true -keyable false -channelBox false "Trigger_CTRL.v";')
			del AWP_INIT

			if UMP_INIT:
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 2.168974 0.642211 ;scale -r -p -0.109048cm 6.391014cm 7.543706cm 1.473119 1.473119 1.473119 ;move -r -os -wd 0 0.503727 1.061279 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 1.815555 0.709906 0 ;move -r -os -wd 0 -1.687076 -1.908358 ;select -cl  ;')
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 0 0 3.421839 ;rotate -r -p 0.69847cm 2.805589cm 8.079054cm -ws -fo 0 90 0 ;scale -r -p 0.69847cm 2.805589cm 8.079054cm 0.542699 0.542699 0.542699 ;move -r -os -wd 0 -1.52891 0 ;move -r -os -wd 0.421413 0 0 ;move -r -os -wd 0 -0.343405 0.537781 ;move -r -os -wd 0 0.906042 0 ;move -r -os -wd 0 0 0.42504 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.391158 0 0 ;select -cl  ;')
				mel.eval("select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0.38349 0 0 ;select -cl  ;")
			del UMP_INIT

			if P90_INIT:
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;rotate -r -p 0.698477cm 6.876337cm -1.922174cm -ws -fo 0 90 0 ;move -r -1.117285 -0.280619 3.511783 ;scale -r -p -0.418808cm 6.595718cm 1.589609cm 0.450886 0.450886 0.450886 ;move -r -os -wd 1.473093 0 0 ;move -r -os -wd 0 -1.309703 -0.103534 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;rotate -r -p -1.178274cm 7.007041cm 3.546063cm -ws -fo 0 0 -90 ;rotate -r -p -1.178274cm 7.007041cm 3.546063cm -ws -fo 0 -90 0 ;move -r -os -wd 0 -1.257048 1.429831 ;move -r -os -wd 1.015903 0 0 ;move -r -os -wd 0 0.247092 0 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0 2.950715 ;select -tgl Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0.154157 0 0 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 2.109611 -0.248102 ;scale -r -p -0.109036cm 8.053521cm 10.665317cm 1.76291 1.76291 1.76291 ;move -r -os -wd 0 0.232542 0.226738 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ; hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 4.131158 0 0 ;move -r -os -wd -1.394331 0 0 ;move -r -os -wd 0 -2.023075 -2.14172 ;move -r -os -wd -1.209906 0 0 ;select -cl  ;')
			del P90_INIT

			if MP5SD_INIT:
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 1.89072 0 0 ;rotate -r -p 2.589196cm 2.660733cm 0.955332cm -ws -fo 0 90 0 ;move -r -os -wd 0 -0.231735 4.19897 ;scale -r -p 2.589197cm 2.429004cm 5.154302cm 0.517281 0.517281 0.517281 ;move -r -os -wd -1.556615 -0.850515 0 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0 -2.944302 2.079129 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0.101705 -1.494974 ;select -cl  ;')
			del MP5SD_INIT

			if MAG10_INIT:
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 -0.904324 -2.069668 ;select -cl  ;')
				#create spline ik rig
				create_FK_mag10()
			del MAG10_INIT

			if BIZON_INIT:
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 0 0 2.634379 ;move -r -os -wd 1.595603 0 0 ;rotate -r -p 2.294084cm 2.016058cm 3.105118cm -os -fo 0 90 0 ;scale -r -p 2.294084cm 2.016058cm 3.105114cm 0.581387 0.581387 0.581387 ;move -r -os -wd -1.467931 -1.022591 0 ;move -r -os -wd 0 0 1.726619 ;move -r -os -wd 0.485398 0 0 ;move -r -os -wd -0.107484 0.108424 0 ;move -r -os -wd -0.0297889 0 0 ;move -r -os -wd 0 0 -0.329154 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 0.943032 0 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd -1.431786 0 -0.970837 ;move -r -os -wd 0 -1.536933 -1.228855 ;move -r -os -wd 0.722988 0 0 ;move -r -os -wd 0 -0.0771518 -0.25816 ;move -r -os -wd -0.328618 0 0 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;rotate -r -p -1.178264cm 1.769179cm 7.16579cm -os -fo 90 0 0 ;move -r -os -wd 0 -1.478644 0.634348 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0 5.900311 ;select -r Mag_CTRLShape.cv[0:4] ;select -cl  ;')
			del BIZON_INIT

			if XM1014_INIT:
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 0 0 4.380457 ;move -r -os -wd 0.636318 0 0 ;rotate -r -p 1.334773cm 3.731422cm 2.628869cm -os -fo 0 90 0 ;move -r -os -wd 0 -1.248877 0 ;scale -r -p 1.33477cm 2.482545cm 2.628859cm 0.540199 0.540199 0.540199 ;move -r -os -wd -0.380848 0 0 ;move -r -os -wd 0 0 0.218383 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 0.44544 0 ;move -r -os -wd 0 0 2.314208 ;move -r -os -wd 0 0.15638 0 ;move -r -os -wd 0 0 1.227643 ;move -r -os -wd 0 0 -3.330973 ;move -r -os -wd -1.980509 -1.395414 0 ;move -r -os -wd 0 -0.417615 -1.967416 ;move -r -os -wd 0.616009 0 0 ;move -r -os -wd 0 -0.075086 -0.332878 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 0.944387 1.4507 ;select -cl  ;')
				#create rig shell
				shell_static_local_world()
			del XM1014_INIT

			if SAWEDOFF_INIT:
				mc.setAttr('Slider_CTRL.rax',0)
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 1.276687 0 ;select -cl  ;')
				mc.setAttr('Trigger_CTRL.rax',0)
				mc.setAttr('Slider_CTRL.visibility', lock = 0)
				mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', 'Slider_CTRL.visibility')
				mel.eval('setAttr -lock true -keyable false -channelBox false "Slider_CTRL.v";')
				nll = 'v_weapon_sawedoff_shell_CTRL'
				#create shell ctrl
				#create grp
				SHELLS = 'SHELLS'
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', SHELLS)
				mel.eval('select -cl  ;')

				mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;select -addFirst makeNurbCircle1 ;setAttr "makeNurbCircle1.normalY" 0;setAttr "makeNurbCircle1.normalZ" 1;setAttr "makeNurbCircle1.radius" 0.5;hilite makeNurbCircle1 nurbsCircle1 ;select -r nurbsCircle1.cv[0:7] ;move -r -os -wd 0 0 1.226403 ;select -cl  ;')
				CTRL_NAME = nll.replace('v_weapon_','')
				mc.rename('nurbsCircle1', CTRL_NAME)

				#create offset
				#create grp
				OFFSET = 'offset_' + CTRL_NAME
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', OFFSET)
				mel.eval('select -cl  ;')

				mc.parent(CTRL_NAME, SHELLS)
				mc.parent(OFFSET, SHELLS)

				# match transform
				mc.matchTransform(CTRL_NAME, nll)
				mc.matchTransform(OFFSET, nll)

				mc.parent(CTRL_NAME, OFFSET)

				#create attrb

				mc.addAttr(CTRL_NAME, longName='Weapon', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)
				mc.parentConstraint('v_weapon_sawedoff_parent_CTRL', OFFSET, maintainOffset = True)
				mc.setAttr(CTRL_NAME + '.Weapon',1)
				#connect
				cnstr_attrb = OFFSET + '_parentConstraint1' + '.v_weapon_sawedoff_parent_CTRLW0'
				mc.connectAttr(CTRL_NAME + '.Weapon',cnstr_attrb)
				del cnstr_attrb

				mc.parent(nll, CTRL_NAME)

				#lock and hide scale, visibility
				mc.setAttr(CTRL_NAME + '.sx',lock =1, keyable =False, channelBox = False)
				mc.setAttr(CTRL_NAME + '.sy',lock =1, keyable =False, channelBox = False)
				mc.setAttr(CTRL_NAME + '.sz',lock =1, keyable =False, channelBox = False)
				mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', CTRL_NAME + '.visibility')
				mc.setAttr(CTRL_NAME + '.visibility', lock =1, keyable =False, channelBox = False)
				#color
				mc.setAttr(CTRL_NAME + '.overrideEnabled', True)
				mc.setAttr(CTRL_NAME + '.overrideRGBColors', True)
				mc.setAttr(CTRL_NAME + '.overrideColorR', 1)
				mc.setAttr(CTRL_NAME + '.ty',6.364)

				mc.parent(SHELLS, GLOBAL_MASTER)


				mel.eval('select -r SHELLS ;setAttr -lock true -keyable false -channelBox false "SHELLS.tx";setAttr -lock true -keyable false -channelBox false "SHELLS.ty";setAttr -lock true -keyable false -channelBox false "SHELLS.tz";setAttr -lock true -keyable false -channelBox false "SHELLS.rx";setAttr -lock true -keyable false -channelBox false "SHELLS.ry";setAttr -lock true -keyable false -channelBox false "SHELLS.rz";setAttr -lock true -keyable false -channelBox false "SHELLS.sx";setAttr -lock true -keyable false -channelBox false "SHELLS.sy";setAttr -lock true -keyable false -channelBox false "SHELLS.sz";setAttr -lock true -keyable false -channelBox false "SHELLS.v";')
				del CTRL_NAME, OFFSET, SHELLS
			del SAWEDOFF_INIT

			if NOVA_INIT:
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 1.532888 0 3.439385 ;rotate -r -p 2.231338cm 4.380868cm 6.052069cm -os -fo 0 80 0 ;rotate -r -p 2.231338cm 4.380868cm 6.052069cm -os -fo 0 10 0 ;scale -r -p 2.231338cm 4.380868cm 6.052075cm 0.571678 0.571678 0.571678 ;move -r -os -wd -1.421441 -1.157347 0 ;move -r -os -wd 0 0 0.766053 ;move -r -os -wd 0.0573905 0 0 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 0.993694 0 ;select -cl  ;')
				nll = 'v_weapon_NOVA_SHELL_CTRL'
				#create shell ctrl
				#create grp
				SHELLS = 'SHELLS'
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', SHELLS)
				mel.eval('select -cl  ;')

				mel.eval('circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;select -addFirst makeNurbCircle1 ;setAttr "makeNurbCircle1.normalY" 0;setAttr "makeNurbCircle1.normalZ" 1;setAttr "makeNurbCircle1.radius" 0.5;hilite makeNurbCircle1 nurbsCircle1 ;select -r nurbsCircle1.cv[0:7] ;move -r -os -wd 0 0 1.226403 ;select -cl  ;')
				CTRL_NAME = nll.replace('v_weapon_','')
				mc.rename('nurbsCircle1', CTRL_NAME)

				#create offset
				#create grp
				OFFSET = 'offset_' + CTRL_NAME
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', OFFSET)
				mel.eval('select -cl  ;')

				mc.parent(CTRL_NAME, SHELLS)
				mc.parent(OFFSET, SHELLS)

				# match transform
				mc.matchTransform(CTRL_NAME, nll)
				mc.matchTransform(OFFSET, nll)

				mc.parent(CTRL_NAME, OFFSET)

				#create attrb

				mc.addAttr(CTRL_NAME, longName='Weapon', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)
				mc.parentConstraint('v_weapon_NOVA_PARENT_CTRL', OFFSET, maintainOffset = True)
				mc.setAttr(CTRL_NAME + '.Weapon',1)
				#connect
				cnstr_attrb = OFFSET + '_parentConstraint1' + '.v_weapon_NOVA_PARENT_CTRLW0'
				mc.connectAttr(CTRL_NAME + '.Weapon',cnstr_attrb)
				del cnstr_attrb

				mc.parent(nll, CTRL_NAME)

				#lock and hide scale, visibility
				mc.setAttr(CTRL_NAME + '.sx',lock =1, keyable =False, channelBox = False)
				mc.setAttr(CTRL_NAME + '.sy',lock =1, keyable =False, channelBox = False)
				mc.setAttr(CTRL_NAME + '.sz',lock =1, keyable =False, channelBox = False)
				mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', CTRL_NAME + '.visibility')
				mc.setAttr(CTRL_NAME + '.visibility', lock =1, keyable =False, channelBox = False)
				#color
				mc.setAttr(CTRL_NAME + '.overrideEnabled', True)
				mc.setAttr(CTRL_NAME + '.overrideRGBColors', True)
				mc.setAttr(CTRL_NAME + '.overrideColorR', 1)
				mc.setAttr(CTRL_NAME + '.ty',6.364)

				mc.parent(SHELLS, GLOBAL_MASTER)


				mel.eval('select -r SHELLS ;setAttr -lock true -keyable false -channelBox false "SHELLS.tx";setAttr -lock true -keyable false -channelBox false "SHELLS.ty";setAttr -lock true -keyable false -channelBox false "SHELLS.tz";setAttr -lock true -keyable false -channelBox false "SHELLS.rx";setAttr -lock true -keyable false -channelBox false "SHELLS.ry";setAttr -lock true -keyable false -channelBox false "SHELLS.rz";setAttr -lock true -keyable false -channelBox false "SHELLS.sx";setAttr -lock true -keyable false -channelBox false "SHELLS.sy";setAttr -lock true -keyable false -channelBox false "SHELLS.sz";setAttr -lock true -keyable false -channelBox false "SHELLS.v";')
				del CTRL_NAME, OFFSET, SHELLS
			del NOVA_INIT

			if MAG7_INIT:
				mc.setAttr('Slider_CTRL.rax',0)
				mc.setAttr('Trigger_CTRL.rax',0)
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;scale -r -p -0.154171cm 9.258258cm 15.632778cm 2.285068 2.285068 2.285068 ;move -r -os -wd 0 2.304096 -3.81669 ;select -cl  ;')
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0.439513 0 0 ;move -r -os -wd 0 1.220938 0 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.179817 0 0 ;move -r -os -wd 0.161782 0 0 ;move -r -os -wd 0 1.243907 0 ;move -r -os -wd 0 0 0.474977 ;move -r -os -wd 0.040568 0 0 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 1.682954 0 ;scale -r -p -0.109035cm 10.692033cm 3.592224cm 3.452207 3.452207 3.452207 ;move -r -os -wd 0 1.220737 0.208578 ;select -cl  ;')
			del MAG7_INIT
			# rif
			if SG556_INIT:
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd -1.918246 0 0 ;move -r -os -wd 0 -1.419335 -2.022447 ;move -r -os -wd 0.447243 0 0 ;move -r -os -wd 0 0.258471 -0.774853 ;move -r -os -wd 0 0 1.439302 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;move -r -os -wd 0 -0.811855 -0.244646 ;select -r Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0 -2.745172 2.164669 ;select -r Mag_CTRLShape.cv[3] ;select -tgl Mag_CTRLShape.cv[2] ;move -r -os -wd 0 0 -0.709946 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[4] ;select -tgl Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0.537677 0.0761495 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0.512689 0.0835605 ;select -r Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0 -0.200127 -0.791594 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 1.003015 5.477537 ;move -r -os -wd 0 0.391432 5.017326 ;scale -r -p -0.109044cm 6.060573cm 17.650385cm 2.966378 2.966378 2.966378 ;move -r -os -wd 0 0.443066 -0.768857 ;select -cl  ;')
			del SG556_INIT

			if M4A1S_INIT:
				mc.setAttr('Slider_CTRL.rax',0)
				mc.setAttr('Trigger_CTRL.rax',0)
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;select -cl  ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 -0.728468 -2.627745 ;move -r -os -wd 0 -0.0998512 -0.302596 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;move -r -0.0987693 -0.119942 1.697075 ;rotate -r -p -4.227208cm -4.639059cm 12.742043cm -os -fo -90 0 0 ;move -r -os -wd 0 0 -1.626965 ;move -r -os -wd -0.184474 0 0 ;scale -r -p -4.411682cm -6.266024cm 12.742045cm 1.147954 1.147954 1.147954 ;select -r Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0 -2.66093e-05 0.548825 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 -1.518357 -1.576325 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 2.070599 0 ;move -r -os -wd 0 2.351548 3.617468 ;scale -r -p -3.017702cm 2.531589cm 15.96876cm 2.265643 2.265643 2.265643 ;move -r -os -wd 0 0.109606 -0.398198 ;move -r -os -wd 0 -1.019335 1.333688 ;select -cl  ;')
			del M4A1S_INIT

			if M4A4_INIT:
				mc.setAttr('Slider_CTRL.rax',0)
				mc.setAttr('Trigger_CTRL.rax',0)
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 0 -1.989018 ;move -r -os -wd 0 -0.912355 -0.796088 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 2.681725 0 ;scale -r -p -0.109054cm 14.764829cm 19.933309cm 1.48384 1.48384 1.48384 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;move -r -os -wd 0 -1.684163 0 ;rotate -r -p -1.178287cm 9.480352cm 20.305888cm -os -fo -90 0 0 ;select -r Mag_CTRLShape.cv[1:2] ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0 -3.184092 ;move -r -os -wd 0 -1.728099 -0.560948 ;select -r Mag_CTRLShape.cv[1] ;select -tgl Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[4] ;move -r -os -wd 0 0.499621 0 ;select -cl  ;')
			del M4A4_INIT

			if GALILAR_INIT:
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 1.455262 -0.220291 ;select -cl  ;')
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 2.1866 0 2.724409 ;rotate -r -p 2.94179cm 3.623496cm 5.992961cm -os -fo 0 90 0 ;move -r -os -wd -4.340396 -3.100599 0 ;move -r -os -wd 2.56333 1.083129 0 ;scale -r -p 1.164721cm 1.606029cm 5.99296cm 0.517228 0.517228 0.517228 ;move -r -os -wd 0 -0.00117724 1.496098 ;move -r -os -wd -0.0249067 0 0 ;select -cl  ;')
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0.216498 0 0 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.39449 0 0 ;select -cl  ;')
				# create ctrl for plate
				mel.eval(
					'circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;'
					'select -cl  ;'
					)
				mc.rename('nurbsCircle1','Plate_CTRL')
				mc.parent('Plate_CTRL', 'v_weapon_galilar_parent_CTRL')
				mc.matchTransform('Plate_CTRL', 'v_weapon_plate_CTRL')
				mc.makeIdentity('Plate_CTRL', apply=1,translate=1,rotate=1)
				mc.parent('v_weapon_plate_CTRL','Plate_CTRL')
				mel.eval(
					'select -r Plate_CTRL ;'
					'hilite Plate_CTRL ;'
					'select -r Plate_CTRLShape.cv[0:7] ;'
					'rotate -r -p 0.654038cm 3.195203cm 6.476615cm -os -fo 0 0 90 ;'
					'move -r -os -wd 0.276694 0 0 ;'
					'scale -r -p 0.930732cm 3.195203cm 6.476615cm 1 1 2.354793 ;'
					'scale -r -p 0.930732cm 3.195203cm 6.476615cm 1 0.777931 1 ;'
					'scale -r -p 0.930732cm 3.195203cm 6.476615cm 1 1 0.865225 ;'
					'scale -r -p 0.930732cm 3.195203cm 6.476615cm 1 0.694789 1 ;'
					'move -r -os -wd 0 -0.00931674 0 ;'
					'move -r -os -wd 0 0 -0.15043 ;'
					'select -cl  ;'
					'connectAttr -f Weapon_CTRL.Visibility_CTRLS Plate_CTRL.visibility;'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.rx";'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.ry";'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.rz";'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.sx";'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.sy";'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.sz";'
					'setAttr -lock true -keyable false -channelBox false "Plate_CTRL.v";'
					)
			del GALILAR_INIT

			if FAMAS_INIT:
				print('tyt')
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 3.382518 -0.0086112 ;scale -r -p -0.109051cm 8.069516cm 8.589185cm 1.216499 1.216499 1.216499 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0 -1.070372 0 ;move -r -os -wd 0 0 -0.207631 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.243952 0 0 ;select -cl  ;')
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0.447477 0 0 ;select -cl  ;')
			del FAMAS_INIT

			if AUG_INIT:
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0.627731 0 0 ;move -r -os -wd 0 -0.199578 -1.766961 ;move -r -os -wd 0.308119 0 0 ;rotate -r -p 1.662621cm 5.32218cm 6.761499cm -os -fo 0 180 0 ;select -cl  ;')
				mel.eval('select -r Weapon_CTRL ;select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 3.443699 0 ;move -r -os -wd 0 -0.11702 0.828891 ;select -cl  ;')
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0.705239 0 0 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.612781 0 0 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;move -r -os -wd 0 -1.172624 -0.449352 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 1.142297 -0.387324 ;select -r Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0 -3.156944 1.471643 ;select -cl  ;')
			del AUG_INIT

			if AK47_INIT:
				mel.eval('select -r Weapon_CTRL ;hilite Weapon_CTRL ;select -r Weapon_CTRLShape.cv[0:12] ;move -r -os -wd 0 1.549478 0 ;move -r -os -wd 0 -0.28099 0.991629 ;select -cl  ;')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd -1.943344 -0.267315 0 ;move -r -os -wd 0 -0.668269 -1.782756 ;select -cl  ;')
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 2.314589 0 2.637868 ;rotate -r -p 3.01307cm 1.737178cm 2.997426cm -os -fo 0 90 0 ;scale -r -p 3.01307cm 1.737178cm 2.997425cm 0.526017 0.526017 0.526017 ;move -r -os -wd 0 0.105602 1.47865 ;move -r -os -wd -1.951918 -0.753831 0 ;move -r -os -wd 0 -0.166087 0.0776181 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.382877 0 0 ;select -cl  ;')
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape1.cv[0:23] polyToCurveShape2.cv[0:18] ;move -r -os -wd 0.253727 0 0 ;select -cl  ;')
				mel.eval('select -r Mag_CTRL ;hilite Mag_CTRL ;select -r Mag_CTRLShape.cv[0:4] ;move -r -os -wd 0 -0.703968 -0.373026 ;select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;move -r -os -wd 0 0.238791 -0.796428 ;select -r Mag_CTRLShape.cv[1:2] ;move -r -os -wd 0 -3.074448 2.036047 ;select -cl  ;')
			del AK47_INIT

			# pist
			if TEC9_INIT:
				#print('tyyyyyyyyyyyyyttttttttttttttt')
				mel.eval('select -r Slider_CTRL ;hilite Slider_CTRL ;select -r Slider_CTRLShape.cv[0:75] ;move -r -os -wd 0.826967 0 0 ;move -r -os -wd 0 0 1.748559 ;move -r -os -wd -0.717854 -0.824624 0 ;select -cl  ;')
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r -os -wd 1.571929 0 1.835101 ;rotate -r -p 2.27131cm 4.138069cm 7.100601cm -os -fo 0 90 0 ;move -r -1.213159 -0.103691 2.001831 ;move -r -os -wd -0.0391789 -0.128285 0 ;scale -r -p 1.018973cm 3.906092cm 9.102432cm 0.825452 0.825452 0.825452 ;move -r -os -wd 0 -0.755154 0.712877 ;scale -r -p 1.018972cm 3.150939cm 9.815309cm 0.586094 0.586094 0.586094 ;move -r -os -wd 0 -0.107389 0.215619 ;select -cl  ;')
				#mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;move -r 1.047999 -1.75624 1.161952 ;rotate -r -p 1.747381cm 2.38183cm 6.427452cm -os -fo 0 90 0 ;scale -r -p 1.747381cm 2.38183cm 6.427452cm 0.694622 0.694622 0.694622 ;move -r -2.283761 0.391348 3.161617 ;move -r -os -wd 1.371784 0 0 ;move -r -0.476227 0.277348 0.559832 ;move -r -os -wd 0.892548 0 0 ;move -r -0.17861 0.205424 0.158445 ;scale -r -p 1.073115cm 3.25595cm 10.307347cm 0.658974 0.658974 0.658974 ;move -r 0.00212343 -0.0513561 0.0229683 ;select -cl  ;')
				mel.eval('select -r L_HAND_CNSTR ;hilite L_HAND_CNSTR ;select -r L_HAND_CNSTR.cv[0:5] ;move -r -os -wd 0.421744 0 0 ;select -cl  ;')
				mel.eval('select -r R_HAND_CNSTR ;hilite R_HAND_CNSTR ;select -r polyToCurveShape2.cv[0:18] polyToCurveShape1.cv[0:23] ;move -r -os -wd 0.709397 0 0 ;select -cl  ;')
			del TEC9_INIT

			if HKP2OOO_INIT:
				mel.eval('select -r Release_CTRL ;hilite Release_CTRL ;select -r Release_CTRLShape.cv[0:9] ;rotate -r -p 0.699396cm 4.283277cm 1.724867cm -os -fo 0 90 0 ;scale -r -p 0.699396cm 4.283277cm 1.724868cm 0.382911 0.382911 0.382911 ;move -r -os -wd 0 -1.56064 4.129943 ;move -r -os -wd -0.00171303 0.0564974 0 ;move -r -os -wd 0 0.0727845 0 ;select -cl  ;')
				mel.eval('select -r Hammer_CTRL ;hilite Hammer_CTRL ;select -r Hammer_CTRLShape.cv[0:11] ;scale -r -p -0.876894cm 4.896163cm 2.557348cm 0.443553 0.443553 0.443553 ;move -r -os -wd 0 -1.069759 0 ;move -r -os -wd 0 -0.397389 -0.459477 ;move -r -os -wd 0 0.43208 -0.569543 ;move -r -os -wd 0.61052 0 0 ;move -r -os -wd -0.219356 0 0 ;select -cl  ;')
			del HKP2OOO_INIT

			if ELITE_INIT:
				#print('elite gun')
				jnts = check_bones(elite = True)
				# STATIC
				mel.eval('select -cl  ;')
				CTRLS = [
					'Weapon_CTRL',
					'Slider_CTRL',
					'Hammer_CTRL',
					'Trigger_CTRL',
					'Mag_CTRL',
					'L_HAND_CNSTR',
					'R_HAND_CNSTR',
					# others
					'offset_Mag_CTRL',
					'offset_Mag_CTRL_parentConstraint1',
					'Mag_CTRL_grp',

					'offset_L_HAND_CNSTR',
					'offset_L_HAND_CNSTR_parentConstraint1',

					'offset_R_HAND_CNSTR',
					'offset_R_HAND_CNSTR_parentConstraint1',


				]
				# rename...
				for ctr in CTRLS:
					if ctr.find('CNSTR') != -1:
						mc.rename(ctr,'L_elite_' + ctr)
					else:
						mc.rename(ctr,'L_' + ctr)

				CTRS = create_nulls(jnts = jnts)
				create_hierarchy_and_ParentConstrain(jnts = jnts, ctrls = CTRS)
				del CTRS, jnts
				#############################################
				# create ctrls
				mc.file(folder_shapes + '/shapes_view_world.ma', i=True, mergeNamespacesOnClash=True, namespace=':')

				#create default setup rig...
				def_CtrL = [
					'Mag_CTRL',
					'L_HAND_CNSTR',
					'R_HAND_CNSTR',
					'Trigger_CTRL',
					'Hammer_CTRL',
					'Slider_CTRL',
					'Weapon_CTRL',
					'Silencer_CTRL',
					'MAGAZINE_CTRL',
					'Release_CTRL',
					'MULTY_bold_CTRL',
				]

				MAG = ''
				TRIGGER = ''
				BOLT = ''
				HAMMER = def_CtrL[4]
				PARENT = ''

				#check def nulls from jnts

				#GET CONTROLS NULLS

				all_nodes = mc.ls(type = 'transform')
				for node in all_nodes:
					if node.find('_parent_CTRL') != -1 or node.find('_PARENT_CTRL') != -1 or node.find('_Parent_CTRL') != -1:
						PARENT = node

					if node.find('_slide_CTRL') != -1 or node.find('_Slide_CTRL') != -1 or node.find('_SLIDE_CTRL') != -1 or node.find('_Bolt_CTRL') != -1 or node.find('_BOLT_CTRL') != -1 or node.find('_bolt_CTRL') != -1 or node.find('_chargehandle_CTRL') != -1 or node.find('_Chamber_CTRL') != -1 or node.find('_pump_CTRL') != -1 or node.find('_PUMP_CTRL') != -1 or node.find('_ChargeHandle_CTRL') != -1 or node.find('_rail_CTRL') != -1:
						BOLT = node

					if node.find('_trigger_CTRL') != -1 or node.find('_Trigger_CTRL') != -1 or node.find('_TRIGGER_CTRL') != -1:
						TRIGGER = node

					if node.find('_clip_CTRL') != -1 or node.find('_Clip_CTRL') != -1 or node.find('_CLIP_CTRL') != -1 or node.find('_magazine_CTRL') != -1 or node.find('_mag_CTRL') != -1 or node.find('_Mag_CTRL') != -1 or node.find('_ammobox_CTRL') != -1:
						MAG = node

				del all_nodes

				'''
				print(MAG)
				print(TRIGGER)
				print(BOLT)
				print(HAMMER)
				print(PARENT)
				print()
				'''

				# gelete mass
				DELETE = [
					'Crane_CTRL',
					'Cylinder_CTRL',
					'Silencer_CTRL',
					'MAGAZINE_CTRL',
					'MULTY_bold_CTRL',
					'Release_CTRL',
					'Ejector_CTRL',
				]
				for del_ctrl in DELETE:
					mc.delete(del_ctrl+'Shape')
					mc.delete(del_ctrl)
				del DELETE

				# create hierarhy
				mc.parent('Hammer_CTRL', PARENT)
				#match transform

				mc.matchTransform('Trigger_CTRL', TRIGGER)
				mc.matchTransform('Slider_CTRL', BOLT)
				mc.matchTransform('Weapon_CTRL', PARENT)
				mc.matchTransform('R_HAND_CNSTR', PARENT)
				mc.matchTransform('L_HAND_CNSTR', PARENT)

				mc.matchTransform('Hammer_CTRL', HAMMER)

				# fffffffff
				mc.makeIdentity('Trigger_CTRL', apply = 1, translate = 1 ,rotate = 1)
				mc.makeIdentity('Hammer_CTRL', apply = 1, translate = 1 ,rotate = 1)
				flip_rotation_axis(from_object = TRIGGER, for_whom = 'Trigger_CTRL', axis = True)

				#nulls to ctrls
				mc.parent(TRIGGER, 'Trigger_CTRL')
				mc.setAttr(TRIGGER + '.rotate',0,0,0)


				mc.parent(BOLT, 'Slider_CTRL')
				mc.setAttr(BOLT + '.rotate',0,0,0)


				mc.parent(HAMMER, 'Hammer_CTRL')
				mc.setAttr(HAMMER + '.rotate',0,0,0)

				# create world mag
				local_world_ctrls(offset_add = 1, ctrl = 'Mag_CTRL', null = MAG, master = GLOBAL_MASTER, parent = PARENT, grp = True)


				#create R ctrl
				local_world_ctrls(offset_add = 1, ctrl = 'R_HAND_CNSTR', null = PARENT, master = GLOBAL_MASTER, parent = '')


				#create L ctrl
				local_world_ctrls(offset_add = 1, ctrl = 'L_HAND_CNSTR', null = PARENT, master = GLOBAL_MASTER, parent = '')


				# parent master ans grps
				mc.parent('Weapon_CTRL',GLOBAL_MASTER)
				mc.parent('Weapon_CTRL', PARENT)
				mc.makeIdentity('Weapon_CTRL', apply =1 , translate = 1, rotate = 0)
				mc.parent('Weapon_CTRL',GLOBAL_MASTER)
				mc.parent(PARENT, 'Weapon_CTRL')


				#fix mag

				mc.parent('v_weapon_m9a1_R_magazine_CTRL', world = True)
				mc.matchTransform('Mag_CTRL','v_weapon_m9a1_R_magazine_CTRL')
				mc.makeIdentity('Mag_CTRL', apply =1 , translate = 1, rotate = 0)
				#get oritation
				flip_rotation_axis(from_object = 'v_weapon_m9a1_R_magazine_CTRL', for_whom = 'Mag_CTRL', axis = True)
				mc.parent('v_weapon_m9a1_R_magazine_CTRL', 'Mag_CTRL')

				# slider and hammer

				mc.parent('Slider_CTRL', PARENT)
				mc.parent('Trigger_CTRL', PARENT)
				mc.parent('Hammer_CTRL', PARENT)

				mc.parent('v_weapon_m9a1_R_hammer_CTRL', world = True)
				mc.matchTransform('Hammer_CTRL','v_weapon_m9a1_R_hammer_CTRL')

				#get oritation
				flip_rotation_axis(from_object = 'v_weapon_m9a1_R_hammer_CTRL', for_whom = 'Hammer_CTRL', axis = True)
				mc.parent('v_weapon_m9a1_R_hammer_CTRL', 'Hammer_CTRL')
				mc.makeIdentity('Hammer_CTRL', apply =1 , translate = 1, rotate = 0)

				mc.makeIdentity('Slider_CTRL', apply =1 , translate = 1, rotate = 0)

				# create l and r elite
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', 'L_ELIte')
				mel.eval('select -cl  ;')
				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', 'R_ELIte')
				mel.eval('select -cl  ;')

				mc.parent('R_ELIte', GLOBAL_MASTER)
				mc.parent('L_ELIte', GLOBAL_MASTER)


				# rename...
				for ctr in CTRLS:
					if ctr.find('CNSTR') != -1:
						mc.rename(ctr,'R_elite_' + ctr)
					else:
						mc.rename(ctr,'R_' + ctr)

				#parent final
				L_ELITE = [
					'L_offset_Mag_CTRL',
					'L_elite_offset_R_HAND_CNSTR',
					'L_elite_offset_L_HAND_CNSTR',
					'L_Weapon_CTRL',
				]

				R_ELITE = [
					'R_offset_Mag_CTRL',
					'R_elite_offset_R_HAND_CNSTR',
					'R_elite_offset_L_HAND_CNSTR',
					'R_Weapon_CTRL',
				]

				for l in L_ELITE:
					mc.parent(l, 'L_ELIte')

				for r in R_ELITE:
					mc.parent(r, 'R_ELIte')

				del L_ELITE, R_ELITE, CTRLS, def_CtrL, MAG, TRIGGER, BOLT, HAMMER, PARENT

				'''
				print('==================================================')
				print('================== ELITE DONE ====================')
				print('==================================================')
				'''
			del ELITE_INIT


			if TASER_INIT:
				#create cntrls for doors

				ctrl_door = [
					'v_weapon_doorL_CTRL',
					'v_weapon_doorR_CTRL',
				]


				for door in ctrl_door:
					mel.eval(
						'circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.01 -s 8 -ch 1; objectMoveCommand;'
						'select -addFirst makeNurbCircle1 ;'
						'setAttr "makeNurbCircle1.radius" 0.6;'
						'select -cl  ;'
						)
					ct = door.replace('v_weapon_','')
					mc.rename('nurbsCircle1',ct)
					mc.parent(ct, 'v_weapon_parent_CTRL')
					mc.matchTransform(ct, door)
					mc.makeIdentity(ct, apply=1,translate=1,rotate=1)
					mc.parent(door, ct)
					mc.setAttr(ct + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(ct + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(ct + '.sz',lock =1, keyable =False, channelBox = False)
					mc.connectAttr('Weapon_CTRL.Visibility_CTRLS', ct + '.visibility')
					mc.setAttr(ct + '.visibility', lock =1, keyable =False, channelBox = False)

					#color
					mc.setAttr(ct + '.overrideEnabled', True)
					mc.setAttr(ct + '.overrideRGBColors', True)
					mc.setAttr(ct + '.overrideColorR', 1)
					mc.setAttr(ct + '.overrideColorG', 0,435)
					mc.setAttr(ct + '.overrideColorB', 1)
					del ct
				del ctrl_door

				mel.eval(
					'setAttr "makeNurbCircle2.radius" 0.5;'
					'setAttr "makeNurbCircle1.radius" 0.5;'

					'select -r doorL_CTRL ;'
					'select -addFirst makeNurbCircle1 ;'
					'setAttr "makeNurbCircle1.radius" 0.5;'
					'hilite makeNurbCircle1 doorL_CTRL ;'
					'select -r doorL_CTRLShape.cv[0:7] ;'
					'move -r -os -wd 0 0.287177 0 ;'
					'select -cl  ;'

					'select -r doorR_CTRL ;'
					'select -addFirst makeNurbCircle2 ;'
					'setAttr "makeNurbCircle2.radius" 0.5;'
					'hilite makeNurbCircle2 doorL_CTRL ;'
					'select -r doorR_CTRLShape.cv[0:7] ;'
					'move -r -os -wd 0 0.287177 0 ;'
					'select -cl  ;'

					'select -r Weapon_CTRL ;'
					'hilite Weapon_CTRL ;'
					'select -r Weapon_CTRLShape.cv[0:12] ;'
					'move -r -os -wd 0 -1.605563 -0.169521 ;'
					'select -cl  ;'
					)
			del TASER_INIT

			
			if KNIFE_INIT:
				#check types knife 

				KNIFE_TYPES = [
					'bayonet',
					'butterfly',
					'canis',
					'cord',
					'css',
					'default_ct',
					'default_t',
					'falchion',
					'flip',
					'ghost',
					'gut',
					'gypsy',
					'karam',
					'm9_bay',
					'outdoor',
					'push',
					'skeleton',
					'stiletto',
					'survival_bowie',
					'tactical',
					'ursus',
					'widowmaker',
				]

				def fix_weapon_cntrl():
					#crete new ctr
					mel.eval('curve -d 1 -p 0.0433682 4.624742 -1.769113 -p 0.0433682 4.623745 -3.188387 -p 0.0433682 4.458467 -3.188387 -p 0.0433682 4.454508 -2.521308 -p 0.0433682 3.886402 -3.188387 -p 0.0433682 3.679548 -3.188387 -p 0.0433682 4.288233 -2.507452 -p 0.0433682 3.63699 -1.769113 -p 0.0433682 3.868587 -1.769113 -p 0.0433682 4.446144 -2.456858 -p 0.0433682 4.458467 -1.769113 -p 0.0433682 4.624742 -1.769113 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 ;select -cl  ;')
					mc.rename('curve1','KNIFE_CTRL')
					#lock and hide scale, visibility
					mc.setAttr('KNIFE_CTRL.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr('KNIFE_CTRL.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr('KNIFE_CTRL.sz',lock =1, keyable =False, channelBox = False)
					mc.setAttr('KNIFE_CTRL.visibility', lock =1, keyable =False, channelBox = False)
					#color
					mc.setAttr('KNIFE_CTRL.overrideEnabled', True)
					mc.setAttr('KNIFE_CTRL.overrideRGBColors', True)
					mc.setAttr('KNIFE_CTRL.overrideColorR', 1)
					mc.setAttr('KNIFE_CTRL.ty',6.364)

					
					# replace master weapon
					mc.parent('KNIFE_CTRL', GLOBAL_MASTER)
					mc.addAttr('KNIFE_CTRL', longName='Controllers_Visibility', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)
					mc.matchTransform('KNIFE_CTRL', 'Weapon_CTRL')
					mc.parent('v_weapon_knife_CTRL',GLOBAL_MASTER)
					mc.parent('v_weapon_knife_CTRL','KNIFE_CTRL')
					mc.setAttr('KNIFE_CTRL.Controllers_Visibility ',1)

					#delete ctrls
					mc.delete('Weapon_CTRL')
					mc.delete('offset_R_HAND_CNSTR')
					mc.delete('offset_L_HAND_CNSTR')


				knife_mesh = mc.ls(type = 'mesh')
				for s in knife_mesh:
					if s.find('bayonet')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('butterfly')!=-1:
						fix_weapon_cntrl()
						#create others ctrs

						#fix knife ctrl pose
						mel.eval(
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -0.854489 2.808572 ;'
							'scale -r -p 0.0433682cm 3.276377cm 0.329822cm 1.170342 1.170342 1.170342 ;'
							'select -cl  ;'
							)

						# create circle
						create_circle_ctrl(name ='blade1_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						create_circle_ctrl(name ='rear_CTRL',lock_scale=True,color = [1, 0.535, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						create_circle_ctrl(name ='lock_CTRL',lock_scale=True,color = [0, 1, 0.183], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')

						mc.parent('blade1_CTRL', 'v_weapon_knife_CTRL')
						mc.parent('rear_CTRL', 'v_weapon_knife_CTRL')
						mc.parent('lock_CTRL', 'v_weapon_knife_CTRL')

						mc.matchTransform('blade1_CTRL', 'v_weapon_blade1_CTRL')
						mc.matchTransform('rear_CTRL', 'v_weapon_rear_CTRL')
						mc.matchTransform('lock_CTRL', 'v_weapon_lock_CTRL')

						mc.parent('v_weapon_blade1_CTRL','blade1_CTRL')
						mc.parent('v_weapon_rear_CTRL', 'rear_CTRL')
						mc.parent('v_weapon_lock_CTRL', 'lock_CTRL')


						mel.eval(
							'select -r rear_CTRL ;'
							'hilite rear_CTRL ;'
							'select -r rear_CTRLShape.cv[0:7] ;'
							'move -r -os -wd 0 1.39829 2.863994 ;'
							'move -r -os -wd 0 0.178688 0.967326 ;'
							'scale -r -p 1.34276e-06cm 1.045135cm 6.269881cm 1 1 2.524026 ;'
							'scale -r -p 1.34276e-06cm 1.045135cm 6.269881cm 1 1 1.100024 ;'
							'scale -r -p 1.34276e-06cm 1.045135cm 6.269881cm 1 1 0.639629 ;'
							'scale -r -p 1.34276e-06cm 1.045135cm 6.269881cm 1 1 1.314097 ;'
							'move -r -os -wd 0 0 -0.410214 ;'
							'select -r rear_CTRLShape.cv[3] ;'
							'select -tgl rear_CTRLShape.cv[7] ;'
							'move -r -os -wd 0 -1.478727 0 ;'
							'select -r rear_CTRLShape.cv[5] ;'
							'select -tgl rear_CTRLShape.cv[1] ;'
							'move -r -os -wd 0 -2.65131 0 ;'
							'select -r rear_CTRLShape.cv[0:7] ;'
							'scale -r -p 1.34276e-06cm -0.28052cm 5.859667cm 0.630836 1 1 ;'
							'scale -r -p 1.34276e-06cm -0.28052cm 5.859667cm 0.96586 1 1 ;'
							'scale -r -p 1.34276e-06cm -0.28052cm 5.859667cm 1 0.967984 1 ;'
							'move -r -os -wd 0 -0.103321 0 ;'
							'select -cl  ;'
							)

						mel.eval(
							'select -r blade1_CTRL ;'
							'hilite blade1_CTRL ;'
							'select -r blade1_CTRLShape.cv[0:7] ;'
							'move -r -os -wd 0 -1.165245 0 ;'
							'move -r -os -wd 0 -0.0254089 -0.29241 ;'
							'scale -r -p -0.021929cm -1.053387cm 1.736701cm 1 1 2.354586 ;'
							'scale -r -p -0.021929cm -1.053387cm 1.736701cm 1 1 1.395837 ;'
							'select -r blade1_CTRLShape.cv[0:2] ;'
							'move -r -os -wd 0 -1.408746 -1.401663 ;'
							'select -r blade1_CTRLShape.cv[3] blade1_CTRLShape.cv[7] ;'
							'move -r -os -wd 0 1.303331 -2.765112 ;'
							'select -r blade1_CTRLShape.cv[4:6] ;'
							'move -r 0.209417 0.140799 -2.259159 ;'
							'move -r -os -wd 0 0.113961 -1.917592 ;'
							'select -r blade1_CTRLShape.cv[0:7] ;'
							'scale -r -p -0.021929cm -1.106095cm 0.0770735cm 0.698782 1 1 ;'
							'select -r blade1_CTRLShape.cv[0:2] ;'
							'move -r -os -wd 0 1.241314 0 ;'
							'move -r -os -wd 0 -0.0109585 -0.936246 ;'
							'select -cl  ;'
							)
						# fix

						mc.parent('v_weapon_blade1_CTRL','v_weapon_knife_CTRL')
						mc.parent('v_weapon_rear_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade1_CTRL', 'v_weapon_rear_CTRL')
						mc.matchTransform('rear_CTRL', 'v_weapon_blade1_CTRL')

						mc.rename('blade1_CTRL','blade1_CTRL_s')
						mc.rename('rear_CTRL','blade1_CTRL')
						mc.rename('blade1_CTRL_s','blade1_CTRL')

						mc.parent('v_weapon_blade1_CTRL','blade1_CTRL')
						mc.rename('blade1_CTRL1','rear_CTRL')
						mc.parent('v_weapon_rear_CTRL', 'rear_CTRL')

						mc.makeIdentity('rear_CTRL',apply=1,translate=1,rotate=1)
						mc.makeIdentity('blade1_CTRL',apply=1,translate=1,rotate=1)

						mc.parent('lock_CTRL','v_weapon_rear_CTRL')

						mel.eval(
							# lock create
							'select -r lock_CTRL ;'
							'hilite lock_CTRL ;'
							'select -r lock_CTRLShape.cv[0:7] ;'
							'rotate -r -p -0.0219308cm -1.461039cm -3.775071cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.557559 0 0 ;'
							'scale -r -p 0.535628cm -1.461039cm -3.775071cm 0.341266 0.341266 0.341266 ;'
							'select -cl  ;'
							#fix ctrls
							'select -r blade1_CTRL ;'
							'hilite blade1_CTRL ;'
							'select -r blade1_CTRLShape.cv[0:7] ;'
							'move -r -os -wd 0 -0.575412 0 ;'
							'select -cl  ;'
							'select -r rear_CTRL ;'
							'hilite rear_CTRL ;'
							'select -r rear_CTRLShape.cv[0:7] ;'
							'move -r -os -wd 0 0.45142 0 ;'
							'move -r -os -wd 0 0 0.803136 ;'
							'select -cl  ;'
							)

						break
					elif s.find('canis')!=-1:
						fix_weapon_cntrl()
						mel.eval(
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433688cm 4.130869cm -2.478752cm -os -fo -90 0 0 ;'
							'move -r -os -wd 0 -6.75353 0 ;'
							'select -cl  ;'
							)
						mc.setAttr('KNIFE_CTRL.rz',180)
						break
					elif s.find('cord')!=-1:
						fix_weapon_cntrl()
						mel.eval(
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433688cm 4.130869cm -2.478752cm -os -fo -90 0 0 ;'
							'move -r -os -wd 0 -6.75353 0 ;'
							'select -cl  ;'
							)
						mc.setAttr('KNIFE_CTRL.rz',180)
						break
					elif s.find('css')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('default_ct')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('default_t')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('falchion')!=-1:
						fix_weapon_cntrl()
						create_circle_ctrl(name ='blade_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						mc.parent('blade_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade_CTRL', 'v_weapon_blade_CTRL')
						mc.parent('v_weapon_blade_CTRL', 'blade_CTRL')
						mel.eval(
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'rotate -r -p 0cm 9.92141e-10cm 0cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.53472 0 0 ;'
							'scale -r -p 0.53472cm 9.92141e-10cm 0cm 0.950181 0.950181 0.950181 ;'
							'select -cl  ;'
							#weapon cntrl
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -1.507583 1.744868 ;'
							'select -cl  ;'
							)
						mc.setAttr('blade_CTRL.rax',180)
						break
					elif s.find('flip')!=-1:
						fix_weapon_cntrl()
						create_circle_ctrl(name ='blade_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						mc.parent('blade_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade_CTRL', 'v_weapon_blade_CTRL')
						mc.parent('v_weapon_blade_CTRL', 'blade_CTRL')
						mel.eval(
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'rotate -r -p 0cm 9.92141e-10cm 0cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.53472 0 0 ;'
							'scale -r -p 0.53472cm 9.92141e-10cm 0cm 0.950181 0.950181 0.950181 ;'
							'select -cl  ;'
							#weapon cntrl
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -1.507583 1.744868 ;'
							'select -cl  ;'
							)
						mc.setAttr('blade_CTRL.rax',180)
						break
					elif s.find('ghost')!=-1:
						fix_weapon_cntrl()
						create_circle_ctrl(name ='blade_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						mc.parent('blade_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade_CTRL', 'v_weapon_blade_CTRL')
						mc.parent('v_weapon_blade_CTRL', 'blade_CTRL')
						mel.eval(
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'rotate -r -p 0cm 9.92141e-10cm 0cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.53472 0 0 ;'
							'scale -r -p 0.53472cm 9.92141e-10cm 0cm 0.950181 0.950181 0.950181 ;'
							'select -cl  ;'
							#weapon cntrl
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -1.507583 1.744868 ;'
							'select -cl  ;'
							)
						mc.setAttr('blade_CTRL.rax',180)
						break
					elif s.find('gut')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('gypsy')!=-1:
						fix_weapon_cntrl()
						create_circle_ctrl(name ='blade_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						mc.parent('blade_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade_CTRL', 'v_weapon_blade_CTRL')
						mc.parent('v_weapon_blade_CTRL', 'blade_CTRL')
						mel.eval(
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'rotate -r -p 0cm 9.92141e-10cm 0cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.53472 0 0 ;'
							'scale -r -p 0.53472cm 9.92141e-10cm 0cm 0.950181 0.950181 0.950181 ;'
							'select -cl  ;'
							#weapon cntrl
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -1.507583 1.744868 ;'
							'select -cl  ;'
							)
						mc.setAttr('blade_CTRL.rax',180)
						break
					elif s.find('karam')!=-1:
						fix_weapon_cntrl()
						mel.eval('select -r KNIFE_CTRL ;hilite KNIFE_CTRL ;select -r KNIFE_CTRLShape.cv[0:11] ;rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 27.248083 0 0 ;move -r 0.470825 -1.156529 0.711683 ;move -r -os -wd 0 3.187312 2.28794 ;select -cl  ;')
						break
					elif s.find('m9_bay')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('outdoor')!=-1:
						fix_weapon_cntrl()
						create_circle_ctrl(name ='blade_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						mc.parent('blade_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade_CTRL', 'v_weapon_blade_CTRL')
						mc.parent('v_weapon_blade_CTRL', 'blade_CTRL')
						mel.eval(
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'rotate -r -p 0cm 9.92141e-10cm 0cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.53472 0 0 ;'
							'scale -r -p 0.53472cm 9.92141e-10cm 0cm 0.950181 0.950181 0.950181 ;'
							'select -cl  ;'
							#weapon cntrl
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -1.507583 1.744868 ;'
							'select -cl  ;'
							)
						mc.setAttr('blade_CTRL.rax',180)
						break
					elif s.find('push')!=-1:
						# create new ctrls
						# L
						mel.eval(
							#L Shape
							'curve -d 1 -p -2.310292 3.750084 0 -p -1.778186 3.750084 0 -p -1.778186 0.397813 0 -p -0.0906484 0.397813 0 -p -0.0906484 0 0 -p -2.310292 0 0 -p -2.310292 3.750084 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 ;'
							'select -cl  ;'
							)
						mc.rename('curve1', 'L_SHAPE')
						mel.eval(
							#K Shape
							'curve -d 1 -p 0.467082 3.750084 0 -p 0.966249 3.750084 0 -p 0.966249 1.905448 0 -p 2.484019 3.750084 0 -p 3.018857 3.750084 0 -p 1.549942 1.960796 0 -p 3.278219 0 0 -p 2.605643 0 0 -p 0.966249 1.905448 0 -p 0.966249 0 0 -p 0.467082 0 0 -p 0.467082 3.750084 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 ;'
							'select -cl  ;'
							)
						mc.rename('curve1', 'L_SHAPE_K')

						#create new grp
						mel.eval(
						    'select -cl  ;'
						    'doGroup 0 1 1;'
						    'select -r L_SHAPEShape ;'
						    'select -r L_SHAPE_KShape ;'
						    'select -r null1 ;'
						    'parent -r -s "L_SHAPEShape" "L_SHAPE_KShape" "null1";'
						    )
						mc.rename('null1', 'L_Knife_CTRL')

						# R
						mel.eval(
							#R Shape
							'curve -d 1 -p -2.566103 3.750084 0 -p -1.430943 3.750084 0 -p -1.176846 3.735197 0 -p -0.954264 3.690538 0 -p -0.763197 3.616107 0 -p -0.603644 3.511903 0 -p -0.477823 3.379351 0 -p -0.387951 3.219877 0 -p -0.334028 3.033482 0 -p -0.316053 2.820164 0 -p -0.328485 2.646438 0 -p -0.36578 2.48253 0 -p -0.427938 2.328441 0 -p -0.51496 2.18417 0 -p -0.624469 2.052886 0 -p -0.754091 1.937754 0 -p -0.903825 1.838776 0 -p -1.073671 1.755951 0 -p 0.178046 0 0 -p -0.475448 0 0 -p -1.543897 1.586184 0 -p -2.039064 1.586184 0 -p -2.039064 0 0 -p -2.566103 0 0 -p -2.566103 3.750084 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -k 16 -k 17 -k 18 -k 19 -k 20 -k 21 -k 22 -k 23 -k 24 ;'
							'select -cl  ;'
							)
						mc.rename('curve1', 'R_SHAPE_1')
						mel.eval(
							#R Shape 2
							'curve -d 1 -p -2.039064 3.352271 0 -p -1.703885 3.352271 0 -p -1.506294 3.343165 0 -p -1.335048 3.315847 0 -p -1.190148 3.270317 0 -p -1.071593 3.206575 0 -p -0.979384 3.124621 0 -p -0.91352 3.024455 0 -p -0.874002 2.906077 0 -p -0.860829 2.769487 0 -p -0.876858 2.588476 0 -p -0.924947 2.430586 0 -p -1.005094 2.295818 0 -p -1.117301 2.18417 0 -p -1.260297 2.096595 0 -p -1.432814 2.03404 0 -p -1.63485 1.996508 0 -p -1.866407 1.983997 0 -p -2.039064 1.983997 0 -p -2.039064 3.352271 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -k 16 -k 17 -k 18 -k 19 ;'
							'select -cl  ;'
							)
						mc.rename('curve1', 'R_SHAPE_2')
						mel.eval(
							#K Shape
							'curve -d 1 -p 0.722893 0 0 -p 0.722893 3.750084 0 -p 1.222059 3.750084 0 -p 1.222059 1.905448 0 -p 2.73983 3.750084 0 -p 3.274668 3.750084 0 -p 1.805753 1.960796 0 -p 3.53403 0 0 -p 2.861454 0 0 -p 1.222059 1.905448 0 -p 1.222059 0 0 -p 0.722893 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 ;'
							'select -cl  ;'
							)
						mc.rename('curve1', 'R_SHAPE_K')

						#create new grp
						mel.eval(
						    'select -cl  ;'
						    'doGroup 0 1 1;'
						    'select -r R_SHAPE_KShape ;'
						    'select -r R_SHAPE_Shape1 ;'
						    'select -r R_SHAPE_Shape2 ;'
						    'select -r null1 ;'
						    'parent -r -s "R_SHAPE_KShape" "R_SHAPE_Shape1" "R_SHAPE_Shape2" "null1";'
						    )
						mc.rename('null1', 'R_Knife_CTRL')

						mc.parent('v_weapon_knife_L_CTRL',GLOBAL_MASTER)
						mc.delete('Weapon_CTRL')
						mc.delete('L_SHAPE')
						mc.delete('L_SHAPE_K')
						mc.delete('R_SHAPE_1')
						mc.delete('R_SHAPE_2')
						mc.delete('R_SHAPE_K')
						mc.delete('L_HAND_CNSTR')
						mc.delete('R_HAND_CNSTR')

						mc.parent('L_Knife_CTRL', GLOBAL_MASTER)
						mc.parent('R_Knife_CTRL', GLOBAL_MASTER)

						mc.matchTransform('L_Knife_CTRL', 'v_weapon_knife_L_CTRL')
						mc.makeIdentity('L_Knife_CTRL', apply=1,translate=1,rotate=1)
						mc.parent('v_weapon_knife_L_CTRL', 'L_Knife_CTRL')
						# L done!
						# create for R
						mel.eval('select -cl  ;')
						jn = check_bones(elite = False,knife_push_L_or_R=1)
						r_CTRS = create_nulls(jnts = jn)
						create_hierarchy_and_ParentConstrain(jnts = jn, ctrls = r_CTRS)
						del jn, r_CTRS
						mc.parent('v_weapon_knife_R_CTRL',GLOBAL_MASTER)
						mc.matchTransform('R_Knife_CTRL', 'v_weapon_knife_L_CTRL')
						mc.makeIdentity('R_Knife_CTRL', apply=1,translate=1,rotate=1)
						mc.parent('v_weapon_knife_R_CTRL', 'R_Knife_CTRL')
						# R done!
						#fix geo shapes...
						mel.eval('select -r R_Knife_CTRL ;hilite R_Knife_CTRL ;select -r R_SHAPE_Shape2.cv[0:19] R_SHAPE_Shape1.cv[0:24] R_SHAPE_KShape.cv[0:11] ;move -r -os -wd -0.298158 -1.237587 0 ;move -r -os -wd 0 0 1.498045 ;scale -r -p 0.185806cm 0.637455cm 1.498045cm 0.592116 0.592116 0.592116 ;move -r -os -wd -0.0776617 0 0 ;move -r -os -wd 0 1.17242 0 ;move -r -os -wd -0.0770925 0 0 ;select -cl  ;')
						mel.eval('select -r L_Knife_CTRL ;hilite L_Knife_CTRL ;select -r L_SHAPE_KShape.cv[0:11] L_SHAPEShape.cv[0:6] ;move -r -os -wd 0 0 1.478923 ;scale -r -p 0.483963cm 1.875042cm 1.478923cm 0.587123 0.587123 0.587123 ;move -r -os -wd -0.274666 0 0 ;move -r -os -wd -0.0168809 -0.0499546 0 ;select -cl  ;')
						mel.eval('select -r R_Knife_CTRL ;move -r -os -wd -6.749836 0 0 ;select -cl  ;')
						#lock
						mc.setAttr('R_Knife_CTRL.sx',lock =1, keyable =False, channelBox = False)
						mc.setAttr('R_Knife_CTRL.sy',lock =1, keyable =False, channelBox = False)
						mc.setAttr('R_Knife_CTRL.sz',lock =1, keyable =False, channelBox = False)
						mc.setAttr('L_Knife_CTRL.sx',lock =1, keyable =False, channelBox = False)
						mc.setAttr('L_Knife_CTRL.sy',lock =1, keyable =False, channelBox = False)
						mc.setAttr('L_Knife_CTRL.sz',lock =1, keyable =False, channelBox = False)
						#color
						mc.setAttr('R_Knife_CTRL.overrideEnabled', True)
						mc.setAttr('R_Knife_CTRL.overrideRGBColors', True)
						mc.setAttr('R_Knife_CTRL.overrideColorR', 0)
						mc.setAttr('R_Knife_CTRL.overrideColorG', 0)
						mc.setAttr('R_Knife_CTRL.overrideColorB', 1)
						mc.setAttr('L_Knife_CTRL.overrideEnabled', True)
						mc.setAttr('L_Knife_CTRL.overrideRGBColors', True)
						mc.setAttr('L_Knife_CTRL.overrideColorR', 0.576)
						mc.setAttr('L_Knife_CTRL.overrideColorG', 0)
						mc.setAttr('L_Knife_CTRL.overrideColorB', 1)
						break
					elif s.find('skeleton')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('stiletto')!=-1:
						fix_weapon_cntrl()
						create_circle_ctrl(name ='blade_CTRL',lock_scale=True,color = [0, 0.612, 1], hide_and_connect_visibility_to = 'KNIFE_CTRL.Controllers_Visibility')
						mc.parent('blade_CTRL','v_weapon_knife_CTRL')
						mc.matchTransform('blade_CTRL', 'v_weapon_blade_CTRL')
						mc.parent('v_weapon_blade_CTRL', 'blade_CTRL')
						mel.eval(
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'rotate -r -p 0cm 9.92141e-10cm 0cm -os -fo 0 0 -90 ;'
							'move -r -os -wd 0.53472 0 0 ;'
							'scale -r -p 0.53472cm 9.92141e-10cm 0cm 0.950181 0.950181 0.950181 ;'
							'select -cl  ;'
							#weapon cntrl
							'select -r KNIFE_CTRL ;'
							'hilite KNIFE_CTRL ;'
							'select -r KNIFE_CTRLShape.cv[0:11] ;'
							'rotate -r -p 0.0433682cm 4.130866cm -2.47875cm -os -fo 90 0 0 ;'
							'move -r -os -wd 0 -1.507583 1.744868 ;'
							'select -cl  ;'
							#######
							'select -r blade_CTRL ;'
							'hilite blade_CTRL ;'
							'select -r blade_CTRLShape.cv[0:6] ;'
							'select -tgl blade_CTRLShape.cv[0:7] ;'
							'select -r blade_CTRLShape.cv[0:7] ;'
							'move -r -os -wd 0.310059 0 0 ;'
							'scale -r -p 0.844779cm -7.30381e-09cm 0cm 0.804903 0.804903 0.804903 ;'
							'select -cl  ;'
							)
						mc.setAttr('blade_CTRL.rax',180)
						break
					elif s.find('survival_bowie')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('tactical')!=-1:
						fix_weapon_cntrl()
						break
					elif s.find('ursus')!=-1:
						fix_weapon_cntrl()						
						break
					elif s.find('widowmaker')!=-1:
						fix_weapon_cntrl()
						break
					else:
						print('This model of knife is not in the database!')
						break
				del knife_mesh, KNIFE_TYPES
			del KNIFE_INIT


			if NEGEV_INIT:
				mc.setAttr('Slider_CTRL.rax',0)
				mc.setAttr('Slider_CTRL.ray',0)
				mc.setAttr('Slider_CTRL.raz',0)

				mel.eval(
					'select -r Weapon_CTRL ;'
					'hilite Weapon_CTRL ;'
					'select -r Weapon_CTRLShape.cv[0:12] ;'
					'move -r -os -wd 0 2.232058 -0.719511 ;'
					'select -cl  ;'
					'select -r Slider_CTRL ;'
					'hilite Slider_CTRL ;'
					'select -r Slider_CTRLShape.cv[0:75] ;'
					'move -r -os -wd -0.695867 0 -1.553548 ;'
					'move -r -os -wd 0 -0.831191 -0.474595 ;'
					'move -r -os -wd -0.11015 0 0 ;'
					'select -cl  ;'
					'select -r Mag_CTRL ;'
					'hilite Mag_CTRL ;'
					'select -r Mag_CTRLShape.cv[0:4] ;'
					'move -r -os -wd 1.842649 0 0 ;'
					'move -r -os -wd 0 0 -0.17187 ;'
					'move -r -os -wd 0 -0.988921 0 ;'
					'select -r Mag_CTRLShape.cv[2:3] ;'
					'move -r -os -wd 0 0 -0.44208 ;'
					'select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;'
					'move -r -os -wd 0 -0.839929 0 ;'
					'select -r Mag_CTRLShape.cv[1:2] ;'
					'move -r -os -wd 0 -0.68736 0 ;'
					'move -r -os -wd 0 0.200894 0 ;'
					'select -cl  ;'
					)

				create_circle_ctrl(name ='Handle_CTRL',lock_scale=True,color = [1, 0, 0], hide_and_connect_visibility_to = 'Weapon_CTRL.Visibility_CTRLS')
				create_circle_ctrl(name ='TopHinge_CTRL',lock_scale=True,color = [0, 2, 1], hide_and_connect_visibility_to = 'Weapon_CTRL.Visibility_CTRLS')

				mc.parent('Handle_CTRL', 'v_weapon_negev_parent_CTRL')
				mc.parent('TopHinge_CTRL', 'v_weapon_negev_parent_CTRL')

				mc.matchTransform('Handle_CTRL', 'v_weapon_handle_CTRL')
				mc.makeIdentity('Handle_CTRL',apply=1,translate=1,rotate=1)
				mc.matchTransform('TopHinge_CTRL', 'v_weapon_topHinge_CTRL')
				mc.makeIdentity('TopHinge_CTRL',apply=1,translate=1,rotate=1)

				mc.parent('v_weapon_handle_CTRL', 'Handle_CTRL')
				mc.parent('v_weapon_topHinge_CTRL', 'TopHinge_CTRL')

				mel.eval(
					'select -r TopHinge_CTRL ;'
					'hilite TopHinge_CTRL ;'
					'select -r TopHinge_CTRLShape.cv[0:7] ;'
					'rotate -r -p 0.224587cm 5.62133cm 8.108008cm -os -fo 0 0 -90 ;'
					'scale -r -p 0.224587cm 5.62133cm 8.108008cm 0.760498 0.760498 0.760498 ;'
					'move -r -os -wd 1.324724 0 0 ;'
					'move -r -os -wd 0.0939934 0 0 ;'
					'scale -r -p 1.643305cm 5.62133cm 8.108008cm 0.980347 0.980347 0.980347 ;'
					'select -cl  ;'
					'select -r Handle_CTRL ;'
					'hilite Handle_CTRL ;'
					'select -r Handle_CTRLShape.cv[0:7] ;'
					'rotate -r -p 0.216259cm 5.498926cm 11.250868cm -os -fo 0 0 -90 ;'
					'rotate -r -p 0.216259cm 5.498926cm 11.250868cm -os -fo 0 90 0 ;'
					'select -cl  ;'
					) 
			del NEGEV_INIT

			if M249PARA_INIT:
				mc.setAttr('Slider_CTRL.rax',0)
				mc.setAttr('Slider_CTRL.ray',0)
				mc.setAttr('Slider_CTRL.raz',0)
				mel.eval(
					'select -r Weapon_CTRL ;'
					'hilite Weapon_CTRL ;'
					'select -r Weapon_CTRLShape.cv[0:12] ;'
					'move -r -os -wd 0 2.787455 0.507267 ;'
					'scale -r -p -0.0523381cm 7.62959cm 3.603014cm 1.338128 1.338128 1.338128 ;'
					'move -r -os -wd 0 0.0358841 -1.160425 ;'
					'select -cl  ;'
					#slider
					'select -r Slider_CTRL ;'
					'hilite Slider_CTRL ;'
					'select -r Slider_CTRLShape.cv[0:75] ;'
					'move -r -os -wd -1.563888 0 -1.581993 ;'
					'move -r -os -wd 0 -1.402039 -1.417067 ;'
					'select -cl  ;'
					#mag
					'select -r Mag_CTRL ;'
					'hilite Mag_CTRL ;'
					'select -r Mag_CTRLShape.cv[0:4] ;'
					'move -r -os -wd 0 -3.616916 0 ;'
					'move -r -os -wd 2.367627 0.783568 0 ;'
					'scale -r -p 5.017663cm -0.594184cm 6.470462cm 1.244234 1.244234 1.244234 ;'
					'select -r Mag_CTRLShape.cv[0] Mag_CTRLShape.cv[3:4] ;'
					'move -r -os -wd 0 0.993728 0 ;'
					'select -r Mag_CTRLShape.cv[2:3] ;'
					'move -r -os -wd 0 0 -0.416766 ;'
					'select -cl  ;'
					)

				create_circle_ctrl(name ='Handle_CTRL',lock_scale=True,color = [1, 0, 0], hide_and_connect_visibility_to = 'Weapon_CTRL.Visibility_CTRLS')
				create_circle_ctrl(name ='TopHinge_CTRL',lock_scale=True,color = [0, 2, 1], hide_and_connect_visibility_to = 'Weapon_CTRL.Visibility_CTRLS')

				mc.parent('Handle_CTRL', 'v_weapon_m249_Parent_CTRL')
				mc.parent('TopHinge_CTRL', 'v_weapon_m249_Parent_CTRL')

				mc.matchTransform('Handle_CTRL', 'v_weapon_handle_CTRL')
				mc.makeIdentity('Handle_CTRL',apply=1,translate=1,rotate=1)
				mc.matchTransform('TopHinge_CTRL', 'v_weapon_topHinge_CTRL')
				mc.makeIdentity('TopHinge_CTRL',apply=1,translate=1,rotate=1)

				mc.parent('v_weapon_handle_CTRL', 'Handle_CTRL')
				mc.parent('v_weapon_topHinge_CTRL', 'TopHinge_CTRL')

				mel.eval(
					'select -r Handle_CTRL ;'
					'hilite Handle_CTRL ;'
					'select -r Handle_CTRLShape.cv[0:7] ;'
					'rotate -r -p -1.979752cm 6.562201cm 10.050762cm -os -fo 90 0 0 ;'
					'move -r -os -wd 0 0 0.473872 ;'
					'select -cl  ;'
					'select -r TopHinge_CTRL ;'
					'hilite TopHinge_CTRL ;'
					'select -r TopHinge_CTRLShape.cv[0:7] ;'
					'move -r -os -wd 0 0.836329 0 ;'
					'rotate -r -p 0.0566978cm 7.1389cm 8.045519cm -os -fo 0 0 -90 ;'
					'move -r -os -wd 0 0.549356 0.157105 ;'
					'move -r -os -wd 1.871227 -0.996121 0 ;'
					'move -r -0.0826636 -0.433311 -0.195964 ;'
					'scale -r -p 1.845261cm 6.258824cm 8.00666cm 0.616358 0.616358 0.616358 ;'
					'move -r -os -wd 0.141311 0 0 ;'
					'select -cl  ;'
					)
			del M249PARA_INIT



		# parent master ans grps
		mc.parent('Weapon_CTRL',GLOBAL_MASTER)
		mc.parent('Weapon_CTRL', PARENT)
		mc.makeIdentity('Weapon_CTRL', apply =1 , translate = 1, rotate = 0)
		mc.parent('Weapon_CTRL',GLOBAL_MASTER)
		mc.parent(PARENT, 'Weapon_CTRL')

		#mc.makeIdentity('Weapon_CTRL', apply =1 , translate = 1, rotate = 0)



		#fix...
		GLOBAL_FIX_CTRLS(MODEL_NAME = '')



	create_ctrls(nulls = CTRS, v_type = 'v_pist', folder_shapes = FOLDER_SHAPES, other = False)


	def mesh_and_other():
		# create grpa
		#create master
		mel.eval('select -cl  ;')
		mel.eval('doGroup 0 1 1;')
		MESH_GRP = 'mesh'
		mc.rename('null1', MESH_GRP)
		mel.eval('select -cl  ;')
		mc.parent(MESH_GRP, GLOBAL_MASTER)
		mass_mesh = []
		MS = mc.ls(type = 'mesh')
		for node in MS:
			if not node.find('ShapeOrig') != -1:
				mass_mesh.append(node.replace('Shape',''))
		del MS

		#parent to grp
		for geo in mass_mesh:
			mc.parent(geo, MESH_GRP)
			#print('mesh = '+geo)
		#create layer mesh
		ln = 'csgo_weapon'
		mc.createDisplayLayer(MESH_GRP, name = ln)
		mc.setAttr( '%s.displayType' % ln, 2)
		# Enable the layer's color.
		mc.setAttr('%s.color' % ln, True)
		# Enable the layer's color to use rgb.
		mc.setAttr('%s.overrideRGBColors' % ln, True)
		# Set the layer's color with values between 0-1.
		mc.setAttr('%s.overrideColorRGB' % ln, 0, 1, 0)
		del ln, MESH_GRP, mass_mesh

		mel.eval(
			'setAttr -lock true -keyable false -channelBox false "mesh.tx";'
			'setAttr -lock true -keyable false -channelBox false "mesh.ty";'
			'setAttr -lock true -keyable false -channelBox false "mesh.tz";'
			'setAttr -lock true -keyable false -channelBox false "mesh.rx";'
			'setAttr -lock true -keyable false -channelBox false "mesh.ry";'
			'setAttr -lock true -keyable false -channelBox false "mesh.rz";'
			'setAttr -lock true -keyable false -channelBox false "mesh.sx";'
			'setAttr -lock true -keyable false -channelBox false "mesh.sy";'
			'setAttr -lock true -keyable false -channelBox false "mesh.sz";'
			)

		# create skeleton grp

		mel.eval('select -cl  ;')
		mel.eval('doGroup 0 1 1;')
		mc.rename('null1', 'skeleton')
		mel.eval('select -cl  ;')
		mc.parent('skeleton', GLOBAL_MASTER)


		# get locators
		jnt_roots = []
		locs = []
		get_locators = mc.ls(type='locator')
		for l in get_locators:
			findloc = l.replace('Shape','')
			#check connections
			return_connection = mc.listConnections(findloc,type='joint')
			if return_connection is not None and return_connection != []:
				locs.append(findloc)
			del findloc
		# check for all locs
		for add in locs:
			check = mc.listConnections(add,type='joint')
			if check != None and check != [] :
				jnt_roots.append(check)
		# parent joints to grp
		jnt_roots = mc.listConnections(locs,type='joint')
		#check revolver
		m = mc.ls(type='mesh')
		for x in m:
			if x.find('_revolver')!=-1:
				mc.setAttr('skeleton.rotate',-90,0,0)
				break
		del locs, m

		for j in jnt_roots:
			mc.parent(j,'skeleton')
		# del locators
		for delete_loc in get_locators:
			if delete_loc.find('v_')!=-1:
				mc.delete(delete_loc)
				mc.delete(delete_loc.replace('Shape',''))
		del jnt_roots, delete_loc
		mel.eval('setAttr "skeleton.visibility" 0;')
		mel.eval(
			'setAttr -lock true -keyable false -channelBox false "skeleton.tx";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.ty";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.tz";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.rx";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.ry";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.rz";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.sx";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.sy";'
			'setAttr -lock true -keyable false -channelBox false "skeleton.sz";'
			'select -cl  ;'
			)
		# create root
		joints_p = mc.listRelatives("skeleton",children=1)
		mel.eval("select -cl  ;")
		mc.joint(name="csgo_weapon_root",p=(0,0,0))
		if not mc.listRelatives("skeleton",children=1):
			return
		mc.parent("csgo_weapon_root", "skeleton")
		for j in joints_p:
			mc.parent(j,"csgo_weapon_root")


		# create scale to weapon ctrl
		for x in mc.ls():
			if x=="Weapon_CTRL":
				# this weapon
				for constrain in mc.listRelatives(master_global,children=1):
					if constrain != "mesh" and constrain != "Weapon_CTRL" and constrain != "skeleton":
						# scale constrain from Weapon_CTRL
						mel.eval(
							'setAttr -k on -lock 0 '+constrain+'.rotateX;'
							'setAttr -k on -lock 0 '+constrain+'.rotateY;'
							'setAttr -k on -lock 0 '+constrain+'.rotateZ;'
							'setAttr -k on -lock 0 '+constrain+'.scaleX;'
							'setAttr -k on -lock 0 '+constrain+'.scaleY;'
							'setAttr -k on -lock 0 '+constrain+'.scaleZ;'
							'setAttr -k on -lock 0 '+constrain+'.translateX;'
							'setAttr -k on -lock 0 '+constrain+'.translateY;'
							'setAttr -k on -lock 0 '+constrain+'.translateZ;'
							)
						mc.scaleConstraint("Weapon_CTRL", constrain, maintainOffset=1)

				mc.parentConstraint("Weapon_CTRL", "csgo_weapon_root", maintainOffset=1)
				mc.scaleConstraint("Weapon_CTRL", "csgo_weapon_root", maintainOffset=1)
				mel.eval(
					'select -r Weapon_CTRL ;'
					'setAttr -lock 0 -channelBox 1 -keyable 1 Weapon_CTRL.scaleX;'
					'setAttr -lock 0 -channelBox 1 -keyable 1 Weapon_CTRL.scaleY;'
					'setAttr -lock 0 -channelBox 1 -keyable 1 Weapon_CTRL.scaleZ;'
					'setAttr -keyable 1 Weapon_CTRL.scaleX;'
					'setAttr -keyable 1 Weapon_CTRL.scaleY;'
					'setAttr -keyable 1 Weapon_CTRL.scaleZ;'
					'select -cl  ;'
				)
				break
			elif x=="KNIFE_CTRL":
				# this knife
				for constrain in mc.listRelatives(master_global,children=1):
					if constrain != "mesh" and constrain != "KNIFE_CTRL" and constrain != "skeleton":
						# scale constrain from KNIFE_CTRL
						mel.eval(
							'setAttr -k on -lock 0 '+constrain+'.rotateX;'
							'setAttr -k on -lock 0 '+constrain+'.rotateY;'
							'setAttr -k on -lock 0 '+constrain+'.rotateZ;'
							'setAttr -k on -lock 0 '+constrain+'.scaleX;'
							'setAttr -k on -lock 0 '+constrain+'.scaleY;'
							'setAttr -k on -lock 0 '+constrain+'.scaleZ;'
							'setAttr -k on -lock 0 '+constrain+'.translateX;'
							'setAttr -k on -lock 0 '+constrain+'.translateY;'
							'setAttr -k on -lock 0 '+constrain+'.translateZ;'
						)
						mc.scaleConstraint("Weapon_CTRL", constrain, maintainOffset=1)


				mc.parentConstraint("KNIFE_CTRL", "csgo_weapon_root", maintainOffset=1)
				mc.scaleConstraint("KNIFE_CTRL", "csgo_weapon_root", maintainOffset=1)
				mel.eval(
					'select -r KNIFE_CTRL ;'
					'setAttr -lock 0 -channelBox 1 -keyable 1 KNIFE_CTRL.scaleX;'
					'setAttr -lock 0 -channelBox 1 -keyable 1 KNIFE_CTRL.scaleY;'
					'setAttr -lock 0 -channelBox 1 -keyable 1 KNIFE_CTRL.scaleZ;'
					'setAttr -keyable 1 KNIFE_CTRL.scaleX;'
					'setAttr -keyable 1 KNIFE_CTRL.scaleY;'
					'setAttr -keyable 1 KNIFE_CTRL.scaleZ;'
					'select -cl  ;'
				)
				break


	mesh_and_other()

	# export rig...

	return


	#methods
	for path in LONG_LIST_FILES:
		#init type model

		import_model = path.replace(path_root_weapons + '/', '')

		#one for several
		print(path)
		#init types
		if import_model.find('w_rif_m4a1_s') != -1:
			if import_model != 'w_rif_m4a1_s.ModelFromBlender.fbx':
				continue
			#for m4a1_s
			if m4a1s_done == False:
				#exception paths
				exception_m4a1_s = [
					path,
					folder_root_fbx + '/w_rif_m4a1_s_mag.ModelFromBlender.fbx',
					folder_root_fbx + '/w_rif_m4a1_s_silencer.ModelFromBlender.fbx',
				]

				#for create rig space...
				#create new scene
				mel.eval('file -f -new')

				#check files

				mag = False
				silencer = False

				checks_files = os.listdir(folder_root_fbx + '/')
				for files_num in checks_files:
					if files_num.find('w_rif_m4a1_s_mag') != -1:
						mag = True
					elif files_num.find('w_rif_m4a1_s_silencer') != -1:
						silencer = True

				del checks_files

				if mag == True and silencer == True:
					#for import...
					for import_models_m4a1_S in exception_m4a1_s:
						mc.file(import_models_m4a1_S, i=True, mergeNamespacesOnClash=True, namespace=':')
				else:
					print('please check fbx files m4a1_s not found = "w_rif_m4a1_s_silencer" and "w_rif_m4a1_s_mag"')
					del mag
					del silencer
					continue


				#clear joints
				jnt_objs = mc.ls(type = 'joint')
				for j in range(0,len(jnt_objs)):
					#get rotarion joint
					attRX = mc.getAttr(jnt_objs[j] + '.rotateX')
					attRY = mc.getAttr(jnt_objs[j] + '.rotateY')
					attRZ = mc.getAttr(jnt_objs[j] + '.rotateZ')
					#set to joint orient
					mc.setAttr(jnt_objs[j] + '.joint Orient X', attRX)
					mc.setAttr(jnt_objs[j] + '.joint Orient Y', attRY)
					mc.setAttr(jnt_objs[j] + '.joint Orient Z', attRZ)
					#clear rotation joints
					mc.setAttr(jnt_objs[j] + '.rotateX', 0)
					mc.setAttr(jnt_objs[j] + '.rotateY', 0)
					mc.setAttr(jnt_objs[j] + '.rotateZ', 0)


				#s
				#find locators
				joint_names = check_dag_from_weapons(obj_w = 'weapon_hand_R')

				#create master
				#master name
				master = import_model.replace('.ModelFromBlender.fbx', '_weapon')

				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', master)
				mc.select(all =1 , deselect=1)

				#create ctrls and grp
				nulls = []
				for nmjnt in joint_names:
					#create null
					name_null = nmjnt + '_CTRL'
					mc.select(all =1 , deselect=1)
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', name_null)
					mc.select(all =1 , deselect=1)

					nulls.append(name_null)

					#create math trasfrom
					mc.parent(name_null, nmjnt)
					mc.setAttr(name_null + '.translate',0,0,0)
					mc.setAttr(name_null + '.rotate',0,0,0)
					mc.parent(name_null, world = True)

				#st
				#create master
				for nll_num in range(0,len(nulls)):

					if nll_num == 0:
						mc.parent(nulls[nll_num], master)
					else:
						mc.parent(nulls[nll_num], nulls[0])
					if nulls[nll_num] != 'weapon_hand_R_CTRL':
						mc.makeIdentity(nulls[nll_num],apply=1,  rotate=1, scale=1, translate=1)

				#create constrains
				for parent_null in range(0, len(nulls)):
					mc.parentConstraint(nulls[parent_null], joint_names[parent_null], maintainOffset = 1)

				del nulls
				del joint_names

				#hide geometry
				mc.select(all =1 , deselect=1)
				mel.eval('select -cl  ;')

				mel.eval('doGroup 0 1 1;')

				mc.rename('null1', 'mesh')
				mel.eval('select -cl  ;')


				mel.eval('select -cl  ;')
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', 'skeleton')
				mel.eval('select -cl  ;')

				mesh = mc.ls(type='mesh')
				new_mesh = []

				for model in mesh:
					if model.find('Orig') != -1:
						continue
					else:
						new_mesh.append(model.replace('Shape', ''))

				for geo in new_mesh:
					mc.parent(geo, 'mesh')
				del mesh
				del new_mesh
				mc.parent('mesh', master)
				########################################

				loc = import_model.replace('.ModelFromBlender.fbx', '_skeleton')

				joints_roots = mc.listConnections(loc, type= 'joint')
				#print(joints_roots)



				for root_jnt in joints_roots:
					mc.parent(root_jnt, 'skeleton')
				del joints_roots
				locatorssss = mc.ls(type='locator')
				for xd in locatorssss:
					mc.delete(xd)
					mc.delete(xd.replace('Shape', ''))
				del locatorssss
				mc.parent('skeleton', master)
				name_model = import_model.replace('.ModelFromBlender.fbx', '_weapon')
				mc.rename(name_model, name_model.replace('_weapon',''))

				mc.setAttr('skeleton.visibility', 0)
				del name_model

				#lock parms
				name_obj = import_model.replace('.ModelFromBlender.fbx', '')
				mc.setAttr(name_obj + '.translate',lock =1, keyable =0, channelBox = 1)
				mc.setAttr(name_obj + '.rotate',lock =1, keyable =0, channelBox = 1)
				mc.setAttr(name_obj + '.scale',lock =1, keyable =0, channelBox = 1)


				#SAVE RIG
				mc.file(folder_save_maya_weapons + '/gun/' + name_obj + '.ma', exportAll = 1, force = 1, type = 'mayaBinary')
				del name_obj
				#create new
				mel.eval('file -f -new')       # WORLD M4A1_S



		elif import_model.find('w_pist_elite') != -1:     # WORLD ELITE
			#for elite
			if elite_done == False:
				#exception paths
				exception_m4a1_s = [
					path,
					folder_root_fbx + '/w_pist_elite_mag.ModelFromBlender.fbx',
					folder_root_fbx + '/w_pist_elite_mag_left.ModelFromBlender.fbx',
					folder_root_fbx + '/w_pist_elite_right.ModelFromBlender.fbx',
				]

				#for create rig space...


				#for import...
				elite_done = True

		elif import_model.find('w_eq') != -1:   # WORLD EQ
			#for eq
			pass

		elif import_model.find('w_knife') != -1:
			if import_model.find('_gg_') != -1:
				continue
			#for knife
			#for guns universal

			#DONT WORK FOR w_knife_gg_w_knife_ct AND w_knife_gg_w_knife_t

			save_root = 'knife'

			#create new scene
		  	mel.eval('file -f -new')

		  	#import models
		  	mc.file(path, i=True, mergeNamespacesOnClash=True, namespace=':')

			#clear joints
		  	jnt_objs = mc.ls(type = 'joint')
			for j in range(0,len(jnt_objs)):
			    #get rotarion joint
			    attRX = mc.getAttr(jnt_objs[j] + '.rotateX')
			    attRY = mc.getAttr(jnt_objs[j] + '.rotateY')
			    attRZ = mc.getAttr(jnt_objs[j] + '.rotateZ')
			    #set to joint orient
			    mc.setAttr(jnt_objs[j] + '.joint Orient X', attRX)
			    mc.setAttr(jnt_objs[j] + '.joint Orient Y', attRY)
			    mc.setAttr(jnt_objs[j] + '.joint Orient Z', attRZ)
			    #clear rotation joints
			    mc.setAttr(jnt_objs[j] + '.rotateX', 0)
			    mc.setAttr(jnt_objs[j] + '.rotateY', 0)
			    mc.setAttr(jnt_objs[j] + '.rotateZ', 0)


			#find locators
			joint_names = check_dag_from_weapons(obj_w = 'weapon_hand_R')

			#create master
			#master name
			master = import_model.replace('.ModelFromBlender.fbx', '_weapon')

			mel.eval('doGroup 0 1 1;')
			mc.rename('null1', master)
			mc.select(all =1 , deselect=1)

			#create

			#create ctrls and grp
			nulls = []
			for nmjnt in joint_names:
				#create null
				name_null = nmjnt + '_CTRL'
				mc.select(all =1 , deselect=1)
				mel.eval('doGroup 0 1 1;')
				mc.rename('null1', name_null)
				mc.select(all =1 , deselect=1)

				nulls.append(name_null)

				#create math trasfrom
				mc.parent(name_null, nmjnt)
				mc.setAttr(name_null + '.translate',0,0,0)
				mc.setAttr(name_null + '.rotate',0,0,0)
				mc.parent(name_null, world = True)

			#print(nulls)


			#create master
			for nll_num in range(0,len(nulls)):

				if nll_num == 0:
					mc.parent(nulls[nll_num], master)
				else:
					mc.parent(nulls[nll_num], nulls[0])
				if nulls[nll_num] != 'weapon_hand_R_CTRL':
					mc.makeIdentity(nulls[nll_num],apply=1,  rotate=1, scale=1, translate=1)

			#create constrains
			for parent_null in range(0, len(nulls)):
				mc.parentConstraint(nulls[parent_null], joint_names[parent_null], maintainOffset = 1)

			del nulls
			del joint_names

			#hide geometry
			mc.select(all =1 , deselect=1)
			mel.eval('select -cl  ;')

			mel.eval('doGroup 0 1 1;')

			mc.rename('null1', 'mesh')
			mel.eval('select -cl  ;')


			mel.eval('select -cl  ;')
			mel.eval('doGroup 0 1 1;')
			mc.rename('null1', 'skeleton')
			mel.eval('select -cl  ;')

			mesh = mc.ls(type='mesh')


			mc.parent(mesh, 'mesh')
			del mesh
			mc.parent('mesh', master)
			########################################

			loc = import_model.replace('.ModelFromBlender.fbx', '_skeleton')

			joints_roots = mc.listConnections(loc, type= 'joint')
			print(joints_roots)



			for root_jnt in joints_roots:
				mc.parent(root_jnt, 'skeleton')
			del joints_roots
			locatorssss = mc.ls(type='locator')
			for xd in locatorssss:
				mc.delete(xd)
				mc.delete(xd.replace('Shape', ''))
			del locatorssss
			mc.parent('skeleton', master)
			name_model = import_model.replace('.ModelFromBlender.fbx', '_weapon')
			mc.rename(name_model, name_model.replace('_weapon',''))

			mc.setAttr('skeleton.visibility', 0)
			del name_model

			#lock parms
			name_obj = import_model.replace('.ModelFromBlender.fbx', '')
			mc.setAttr(name_obj + '.translate',lock =1, keyable =0, channelBox = 1)
			mc.setAttr(name_obj + '.rotate',lock =1, keyable =0, channelBox = 1)
			mc.setAttr(name_obj + '.scale',lock =1, keyable =0, channelBox = 1)


			#SAVE RIG
			mc.file(folder_save_maya_weapons + '/knife/' + name_obj + '.ma', exportAll = 1, force = 1, type = 'mayaBinary')
			del name_obj
			#create new
			mel.eval('file -f -new')    # WORLD KNIFE


		elif import_model.find('v_') != -1:   #                VIEW TO WORLD
			#print('Warning! view to world generate')



			# init type view models

			if import_model.find('knife') != -1:    #  view world knife
				#knife view world
				pass
			elif import_model.find('eq') != -1:    #  view world eq
				pass
			elif import_model.find('v_mach_m249para') != -1:
				if mach_m249para == False:
					#create new scene
					mel.eval('file -f -new')
					imports_model = [
						'v_mach_m249para_v_m249_model.ModelFromBlender.fbx',
						'v_mach_m249para_bullet01.ModelFromBlender.fbx',
						'v_mach_m249para_bullet02.ModelFromBlender.fbx',
						'v_mach_m249para_bullet03.ModelFromBlender.fbx',
						'v_mach_m249para_bullet04.ModelFromBlender.fbx',
						'v_mach_m249para_bullet05.ModelFromBlender.fbx',
						'v_mach_m249para_bullet06.ModelFromBlender.fbx',
						'v_mach_m249para_bullet07.ModelFromBlender.fbx',
						'v_mach_m249para_bullet08.ModelFromBlender.fbx',
						'v_mach_m249para_bullet09.ModelFromBlender.fbx',
						'v_mach_m249para_bullet10.ModelFromBlender.fbx',
						'v_mach_m249para_bullet11.ModelFromBlender.fbx',
						'v_mach_m249para_bullet12.ModelFromBlender.fbx',
						'v_mach_m249para_bullet13.ModelFromBlender.fbx',
						'v_mach_m249para_bullet14.ModelFromBlender.fbx',
						'v_mach_m249para_bullet15.ModelFromBlender.fbx',
						'v_mach_m249para_bullet16.ModelFromBlender.fbx',
					]

					temp_check = []

					TEMP_MODELS = os.listdir(PATH_FOLDER_FBX+'/')

					for null_file in TEMP_MODELS:
						for check_model in imports_model:
							if null_file == check_model:
								temp_check.append(1)


					if len(temp_check) == len(imports_model):
						del temp_check
						del TEMP_MODELS
					else:
						del temp_check
						del TEMP_MODELS
						#print('nekotorih nety!')
						continue


					#print('est vse models')

					for mm in imports_model:
						mc.file(PATH_FOLDER_FBX+'/'+mm, i=True, mergeNamespacesOnClash=True, namespace=':')



					mach_m249para = True
				pass   #  view world v_mach_m249para

			elif import_model.find('v_mach_negev') != -1:
				if v_mach_negev == False:


					#create new scene
					mel.eval('file -f -new')


					imports_model = [
						'v_mach_negev_v_negev_model.ModelFromBlender.fbx',
						'v_mach_negev_bullet01.ModelFromBlender.fbx',
						'v_mach_negev_bullet02.ModelFromBlender.fbx',
						'v_mach_negev_bullet03.ModelFromBlender.fbx',
						'v_mach_negev_bullet04.ModelFromBlender.fbx',
						'v_mach_negev_bullet05.ModelFromBlender.fbx',
						'v_mach_negev_bullet06.ModelFromBlender.fbx',
						'v_mach_negev_bullet07.ModelFromBlender.fbx',
						'v_mach_negev_bullet08.ModelFromBlender.fbx',
						'v_mach_negev_bullet09.ModelFromBlender.fbx',
						'v_mach_negev_bullet10.ModelFromBlender.fbx',
						'v_mach_negev_bullet11.ModelFromBlender.fbx',
						'v_mach_negev_bullet12.ModelFromBlender.fbx',
						'v_mach_negev_bullet13.ModelFromBlender.fbx',
						'v_mach_negev_bullet14.ModelFromBlender.fbx',
						'v_mach_negev_bullet15.ModelFromBlender.fbx',
						'v_mach_negev_bullet16.ModelFromBlender.fbx',
						'v_mach_negev_bullet17.ModelFromBlender.fbx',
						'v_mach_negev_bullet18.ModelFromBlender.fbx',
						'v_mach_negev_bullet19.ModelFromBlender.fbx',
						'v_mach_negev_bullet20.ModelFromBlender.fbx',
					]

					temp_check = []

					TEMP_MODELS = os.listdir(PATH_FOLDER_FBX+'/')

					for null_file in TEMP_MODELS:
						for check_model in imports_model:
							if null_file == check_model:
								temp_check.append(1)

					if len(temp_check) == len(imports_model):
						del temp_check
						del TEMP_MODELS
					else:
						del temp_check
						del TEMP_MODELS
						#print('nekotorih nety!')
						continue


					for mm in imports_model:
						mc.file(PATH_FOLDER_FBX+'/'+mm, i=True, mergeNamespacesOnClash=True, namespace=':')

					v_mach_negev = True    #  view world v_mach_negev


			# OTHERS MODELS
			elif import_model.find('ied') != -1:
				continue

			elif import_model.find('bumpmine') != -1:
				continue

			elif import_model.find('breachcharge') != -1:
				continue

			elif import_model.find('axe') != -1:
				continue

			elif import_model.find('parachute_reference') != -1:
				continue

			elif import_model.find('fists') != -1:
				continue

			elif import_model.find('healthshot') != -1:
				continue

			elif import_model.find('hammer') != -1:
				continue

			elif import_model.find('tablet') != -1:
				continue

			elif import_model.find('sonar') != -1:
				continue
			elif import_model.find('spanner') != -1:
				continue

			elif import_model.find('revolver') != -1:
				continue


			else:   # WORLD OTHER WEAPONS NOT #exception
				#for view world models others...

				#create new scene
				mel.eval('file -f -new')


				mc.file(path, i=True, mergeNamespacesOnClash=True, namespace=':')

				#clear joints
				jnt_objs = mc.ls(type = 'joint')
				for j in range(0,len(jnt_objs)):
					#get rotarion joint
					attRX = mc.getAttr(jnt_objs[j] + '.rotateX')
					attRY = mc.getAttr(jnt_objs[j] + '.rotateY')
					attRZ = mc.getAttr(jnt_objs[j] + '.rotateZ')
					#set to joint orient
					mc.setAttr(jnt_objs[j] + '.joint Orient X', attRX)
					mc.setAttr(jnt_objs[j] + '.joint Orient Y', attRY)
					mc.setAttr(jnt_objs[j] + '.joint Orient Z', attRZ)
					#clear rotation joints
					mc.setAttr(jnt_objs[j] + '.rotateX', 0)
					mc.setAttr(jnt_objs[j] + '.rotateY', 0)
					mc.setAttr(jnt_objs[j] + '.rotateZ', 0)


					type_type = ''

					pist_gun = False


					for tpnum in weapons_view_type:
						if import_model.find(tpnum) != -1:
							type_type = tpnum
							if tpnum == 'pist':
								pist_gun = True
							else:
								pist_gun = False
							break







					parent_name_jnt = 'v_weaponFBXASC046' +import_model.replace('_reference.ModelFromBlender.fbx', '').replace('v_' + type_type +'_', '').replace('18', '')+'_parent'

					#find locators   v_weaponFBXASC046tec9_parent
					joint_names = check_dag_from_weapons(obj_w = parent_name_jnt)
					#v_pist_ tec9
					#create master
					#master name
					master = import_model.replace('.ModelFromBlender.fbx', '_rig')

					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', master)
					mc.select(all =1 , deselect=1)

					#create
					#print(parent_name_jnt)
					#create ctrls and grp
					nulls = []
					for nmjnt in joint_names:
						#create null
						name_null = nmjnt.replace('FBXASC046', '_') + '_CTRL'
						mc.select(all =1 , deselect=1)
						mel.eval('doGroup 0 1 1;')
						mc.rename('null1', name_null)
						mc.select(all =1 , deselect=1)

						nulls.append(name_null)

						#create math trasfrom
						mc.parent(name_null, nmjnt)
						mc.setAttr(name_null + '.translate',0,0,0)
						mc.setAttr(name_null + '.rotate',0,0,0)
						mc.parent(name_null, world = True)
						#print(nmjnt)

					#return

					#print(nulls)

					#create master
					for nll_num in range(0,len(nulls)):
						#print(nll_num)
						if nll_num == 0:
							mc.parent(nulls[nll_num], master)
						else:
							mc.parent(nulls[nll_num], nulls[0])
						if nulls[nll_num] != parent_name_jnt:
							mc.makeIdentity(nulls[nll_num],apply=1,  rotate=1, scale=1, translate=1)

					#create constrains
					for parent_null in range(0, len(nulls)):
						mc.parentConstraint(nulls[parent_null], joint_names[parent_null], maintainOffset = 1)


					del joint_names



					#hide geometry
					mc.select(all =1 , deselect=1)
					mel.eval('select -cl  ;')

					mel.eval('doGroup 0 1 1;')

					mc.rename('null1', 'mesh')
					mel.eval('select -cl  ;')


					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', 'skeleton')
					mel.eval('select -cl  ;')



					objects = mc.ls(type='mesh')
					mesh = []
					for who in objects:
						if who.find('ShapeOrig') != -1:
							continue
						else:
							mesh.append(who.replace('Shape', ''))


					del objects
					#print(mesh)


					for geo in mesh:
						mc.parent(geo, 'mesh')

					name_model = import_model.replace('.ModelFromBlender.fbx', '_rig')
					del mesh
					mc.parent('mesh', master)
					########################################

					loc = import_model.replace('.ModelFromBlender.fbx', '_skeleton')

					joints_roots = mc.listConnections(loc, type= 'joint')
					#print(joints_roots)



					for root_jnt in joints_roots:
						mc.parent(root_jnt, 'skeleton')
					del joints_roots
					locatorssss = mc.ls(type='locator')
					for xd in locatorssss:
						mc.delete(xd)
						mc.delete(xd.replace('Shape', ''))
					del locatorssss
					mc.parent('skeleton', master)

					view_mag = 'v_weaponFBXASC046' +import_model.replace('_reference.ModelFromBlender.fbx', '').replace('v_' + type_type +'_', '')+'Clip'

					mc.setAttr('skeleton.visibility', 0)

					#create mesh layer
					name_layer = name_model.replace('_rig', '_layer')

					mc.createDisplayLayer('mesh', name = name_layer)

					cmds.setAttr( '%s.displayType' % name_layer, 2)

					# Enable the layer's color.
					cmds.setAttr('%s.color' % name_layer, True)

					# Enable the layer's color to use rgb.
					cmds.setAttr('%s.overrideRGBColors' % name_layer, True)

					# Set the layer's color with values between 0-1.
					cmds.setAttr('%s.overrideColorRGB' % name_layer, 0, 1, 0)

					#lock and hide translate
					mc.setAttr('mesh' + '.tx',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mesh' + '.ty',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mesh' + '.tz',lock =1, keyable =False, channelBox = False)
					#lock and hide rotate
					mc.setAttr('mesh' + '.rx',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mesh' + '.ry',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mesh' + '.rz',lock =1, keyable =False, channelBox = False)
					#lock and hide scale
					mc.setAttr('mesh' + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mesh' + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mesh' + '.sz',lock =1, keyable =False, channelBox = False)



					#lock parms
					name_obj = name_model
					del name_model
					#print('--------------------------  ' +name_obj)
					#lock and hide translate
					mc.setAttr(name_obj + '.tx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_obj + '.ty',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_obj + '.tz',lock =1, keyable =False, channelBox = False)
					#lock and hide rotate
					mc.setAttr(name_obj + '.rx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_obj + '.ry',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_obj + '.rz',lock =1, keyable =False, channelBox = False)
					#lock and hide scale
					mc.setAttr(name_obj + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_obj + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(name_obj + '.sz',lock =1, keyable =False, channelBox = False)



					#create rig for mag or clip

					#get mag name
					mag_offset = ''
					mag_ctrl = ''

					create_for_offset = nulls[0]


					for ctrl in nulls:
						print(ctrl)
						if ctrl.find('Clip') != -1 or ctrl.find('slider'):
							mag_offset = 'offset_' + ctrl
							mag_ctrl = ctrl
							break
					#del nulls

					#create mag offset
					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', mag_offset)
					mel.eval('select -cl  ;')

					#create math trasfrom
					mc.matchTransform(mag_offset, mag_ctrl, position=1, rotation=1)

					mc.parent(mag_offset, master)

					mc.parent(mag_ctrl, mag_offset)

					mc.parentConstraint(create_for_offset,mag_offset,maintainOffset = True)


					#create attrbt

					mc.addAttr(mag_ctrl, longName='Weapon', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)

					#get costrain and attrb

					constrain_name_attrb = mag_offset + '_parentConstraint1' + '.' +create_for_offset + 'W0'
					ctrl_atr = mag_ctrl + '.Weapon'


					mc.connectAttr(ctrl_atr, constrain_name_attrb)

					#lock and hide translate
					mc.setAttr(mag_offset + '.tx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_offset + '.ty',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_offset + '.tz',lock =1, keyable =False, channelBox = False)
					#lock and hide rotate
					mc.setAttr(mag_offset + '.rx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_offset + '.ry',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_offset + '.rz',lock =1, keyable =False, channelBox = False)
					#lock and hide scale
					mc.setAttr(mag_offset + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_offset + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_offset + '.sz',lock =1, keyable =False, channelBox = False)
					#lock and hide visibility
					mc.setAttr(mag_offset + '.visibility',lock =1, keyable =False, channelBox = False)


					#lock and hide scale
					mc.setAttr(mag_ctrl + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_ctrl + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mag_ctrl + '.sz',lock =1, keyable =False, channelBox = False)
					#lock and hide visibility
					mc.setAttr(mag_ctrl + '.visibility',lock =1, keyable =False, channelBox = False)

					#lock and hide scale
					mc.setAttr(create_for_offset + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(create_for_offset + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(create_for_offset + '.sz',lock =1, keyable =False, channelBox = False)
					#lock and hide visibility
					mc.setAttr(create_for_offset + '.visibility',lock =1, keyable =False, channelBox = False)

					#create ctrlss
					#create mag shape
					mel.eval("curve -d 1 -p -1 0 -1 -p 1 0 -1 -p 1 0 1 -p -1 0 1 -p -1 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 ;hilite curve1 ;select -r curve1.cv[0] curve1.cv[3:4] ;select -tgl curve1.cv[1:2] ;scale -r -p 0cm 0cm 0cm 2.267792 1 2.267792 ;scale -r -p 0cm 0cm 0cm 1.788889 1 1 ;scale -r -p 0cm 0cm 0cm 0.839294 1 0.839294 ;move -r -os -wd 0 -2.679734 0 ;rotate -r -p 0cm -2.679734cm 0cm -os -fo 0 -90 0 ;select -cl  ;")
					mc.rename('curve1', 'mag_CTRL')


					mel.eval("select -r mag_CTRLShape.cv[0:4] ;rotate -r -p -1.13896e-05cm -0.321584cm 5.391622cm -os -fo 90 0 0 ;move -r -os -wd -2.78898 0 0 ;move -r -os -wd 0 0 3.582775 ;rotate -r -p -2.788991cm -0.321584cm 8.974397cm -os -fo 0 90 0 ;move -r -os -wd 0 0.537223 1.532674 ;")


					#mc.parent('mag_CTRL','weapon_mag_CTRL')
					mc.matchTransform('mag_CTRL', create_for_offset, position=1, rotation=1)
					mc.parent('mag_CTRL', mag_offset)
					mc.setAttr('mag_CTRL' + '.translate',0,0,0)
					mc.setAttr('mag_CTRL' + '.rotate',0,0,0)

					mc.makeIdentity('mag_CTRL', apply=1, jointOrient=0, normal=0, rotate=1, scale=1, translate=1)
					mc.parent(mag_ctrl, 'mag_CTRL')
					mc.addAttr('mag_CTRL', longName='Weapon', attributeType="short", maxValue = 1, minValue = 0, keyable=1,hidden=0)
					mc.connectAttr('mag_CTRL.Weapon', mag_ctrl + '.Weapon')
					#lock and hide scale
					mc.setAttr('mag_CTRL' + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mag_CTRL' + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mag_CTRL' + '.sz',lock =1, keyable =False, channelBox = False)
					#lock and hide visibility
					#mc.setAttr('mag_CTRL' + '.visibility',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mag_CTRL' + '.overrideEnabled', True)
					mc.setAttr('mag_CTRL' + '.overrideRGBColors', True)
					mc.setAttr('mag_CTRL' + '.overrideColorG', 1)
					#print('--------------------------  ' + mag_offset)
					del create_for_offset
					del mag_offset
					del mag_ctrl

					mel.eval("select -r mag_CTRLShape.cv[0:4] ;move -r 1.77224 -6.018861 -10.769435 ;move -r -os -wd -1.314165 0 0 ;scale -r -p -4.689084cm 0.109512cm 10.159458cm 1 1 0.825195 ;scale -r -p -4.689084cm 0.109512cm 10.159458cm 0.897857 0.897857 0.897857 ;select -cl  ;")



					#create R and master ctrls
					if import_model.find('pist') != -1:
						#import pist shapes
						mass_objects = Import_Shapes_Files(type_s = 1,folder_shapes = FOLDER_SHAPES, WORLD = 0)
						pist_gun = True
					else:
						pass
						#mass_objects = Import_Shapes_Files(type_s = 0,folder_shapes = FOLDER_SHAPES, WORLD = 1)
						pist_gun = False

					#parent_ctrl = name_layer.replace('_reference_layer','_parent_CTRL').replace('v_','v_weapon_')
					del name_layer

					#create cinnections
					mc.connectAttr(mass_objects[0]+'.Controllers_Visibility', 'mag_CTRL.visibility')
					mc.setAttr('mag_CTRL' + '.visibility',lock =1, keyable =False, channelBox = False)
					mc.setAttr('mag_CTRL' + '.Weapon',1)

					#creates transform for ctrls
					#shapes = ['Weapon_CTRL_pist','L_HAND_CTRL_pist','R_HAND_CTRL_pist']
					#        R
		 			mc.parent(mass_objects[2], nulls[0])
		 			mc.setAttr(mass_objects[2] + '.translate',0,0,0)
					mc.setAttr(mass_objects[2] + '.rotate',0,0,0)

					#create grps


					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', 'CTRLS')
					mel.eval('select -cl  ;')

					grp_name = mass_objects[2] + '_grp'
					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', grp_name)
					mel.eval('select -cl  ;')

					mc.matchTransform(grp_name,nulls[0])
					mc.matchTransform(mass_objects[2],nulls[0])

					mc.parent(grp_name, 'CTRLS')
					mc.parent(mass_objects[2], grp_name)
					mc.setAttr(mass_objects[2] + '.translate',0,0,0)
					mc.setAttr(mass_objects[2] + '.rotate',0,0,0)


					#    L

					grp_name_L = mass_objects[1] + '_grp'
					mel.eval('select -cl  ;')
					mel.eval('doGroup 0 1 1;')
					mc.rename('null1', grp_name_L)
					mel.eval('select -cl  ;')

					mc.matchTransform(grp_name_L,nulls[0])
					mc.matchTransform(mass_objects[1],nulls[0])

					mc.parent(grp_name_L, 'CTRLS')
					mc.parent(mass_objects[1], grp_name_L)

					if pist_gun == True:
						mc.makeIdentity(mass_objects[1], apply=1, jointOrient=0, normal=0, rotate=1, scale=0, translate=1)
					else:
						mc.matchTransform(mass_objects[1],nulls[0])
						mc.makeIdentity(mass_objects[1], apply=1, jointOrient=0, normal=0, rotate=1, scale=0, translate=1)
					#del pist_gun


					mc.parent(mass_objects[0], 'CTRLS')

					mc.parentConstraint(mass_objects[0], grp_name, maintainOffset = True)
					mc.parentConstraint(mass_objects[0], grp_name_L, maintainOffset = True)


					mc.parent('CTRLS', master)


					#create constrain name
					get_attrb_R = mass_objects[2] + '.To_Weapon'
					cstran_attrb_R = grp_name + '_parentConstraint1' + '.' + mass_objects[0] + 'W0'
					mc.connectAttr(get_attrb_R, cstran_attrb_R)

					get_attrb_L = mass_objects[1] + '.To_Weapon'
					cstran_attrb_L = grp_name_L + '_parentConstraint1' + '.' + mass_objects[0] + 'W0'
					mc.connectAttr(get_attrb_L, cstran_attrb_L)

					mc.parentConstraint(mass_objects[0], nulls[0])

					del get_attrb_R, cstran_attrb_R, get_attrb_L, cstran_attrb_L


					mc.setAttr(mass_objects[0] + '.sx',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mass_objects[0] + '.sy',lock =1, keyable =False, channelBox = False)
					mc.setAttr(mass_objects[0] + '.sz',lock =1, keyable =False, channelBox = False)


					#lock
					mc.setAttr( nulls[0] + '.tx',lock =1, keyable =False, channelBox = False)
					mc.setAttr( nulls[0] + '.ty',lock =1, keyable =False, channelBox = False)
					mc.setAttr( nulls[0] + '.tz',lock =1, keyable =False, channelBox = False)

					mc.setAttr( nulls[0] + '.rx',lock =1, keyable =False, channelBox = False)
					mc.setAttr( nulls[0] + '.ry',lock =1, keyable =False, channelBox = False)
					mc.setAttr( nulls[0] + '.rz',lock =1, keyable =False, channelBox = False)


					mc.parent( nulls[0], 'CTRLS')
					mc.parent('offset_v_weapon_Clip_CTRL', 'CTRLS')


					#create  slider and trigger ctrls
					mc.parent(mass_objects[3],mass_objects[0])
					mc.parent(mass_objects[4],mass_objects[0])
					if pist_gun == True:
						mc.matchTransform(mass_objects[3], 'v_weapon_Slide_CTRL')
					else:
						mc.matchTransform(mass_objects[3], 'v_weapon_Slide_CTRL')

					mc.matchTransform(mass_objects[4], 'v_weapon_Trigger_CTRL')

					mc.makeIdentity(mass_objects[3], apply=1, jointOrient=0, normal=0, rotate=1, scale=0, translate=1)
					mc.makeIdentity(mass_objects[4], apply=1, jointOrient=0, normal=0, rotate=1, scale=0, translate=1)


					mc.parent('v_weapon_Slide_CTRL','Slider_CTRL_pist')
					mc.parent('v_weapon_Trigger_CTRL','Trigger_CTRL_pist')





					return





		############################################################
		############################################################

class RESTART_DIALOG(QtWidgets.QDialog):
	#this edit dialog
	def __init__(self, parent = maya_main_window()):
		super(RESTART_DIALOG, self).__init__(parent)
		self.lmao_haha = 0

		self.setFixedSize(400, 200)
		self.setWindowTitle("Please Restart Maya!")


		self.init_ui()
		self.create_layuot()
	def init_ui(self):
		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(restart_ui)

	def create_layuot(self):
		main_layout = QtWidgets.QVBoxLayout(self)
		main_layout.setContentsMargins(0,0,0,0)
		main_layout.addWidget(self.ui)
		self.ui.background.setPixmap(back_restart_diloag)
		self.ui.Back_buttn.clicked.connect(self.close)
		self.ui.Quit_maya_bttn.clicked.connect(self.quit_maya)

		# back icon
		quit_icon = QtGui.QPixmap(quit_maya)
		back_icon = QtGui.QPixmap(back_maya)

		self.ui.Back_buttn.setFlat(True)
		self.ui.Back_buttn.setIcon(QtGui.QIcon(back_icon))
		self.ui.Back_buttn.setIconSize(QtCore.QSize(120,120))

		self.ui.Quit_maya_bttn.setFlat(True)
		self.ui.Quit_maya_bttn.setIcon(QtGui.QIcon(quit_icon))
		self.ui.Quit_maya_bttn.setIconSize(QtCore.QSize(120,120))
		


	def quit_maya(self):
		mel.eval('quit')
		self.close


#all methods
class Customizer(object):
	"""Customizer for custom func"""
	#by mp
	def __init__(self, arg):
		super(Customizer, self).__init__()
		#init variables for funcs
		#self.ghehehe()
		self.arg = arg

		self.Final = False
		

	def GENERATOR(self, fbx_path = '', save_path = '', file_rig_name = '', list_paths_fbx_models = [], mode_use = 0, create_skeletal_mesh=bool):
		rigs_path = ''
		if RIGS_DIR != '':
			rigs_path = RIGS_DIR
		else:
			del rigs_path
			return

		if mode_use == 0:
			#start for character
			print(list_paths_fbx_models)

			name_maya_export_file = '.ma'

			for x in range(0,len(list_paths_fbx_models)):

				import_fbx = list_paths_fbx_models[x]
				name_file = list_paths_fbx_models[x].replace(fbx_path+'/','')
				print(name_file)
				#create new scene 
				mel.eval('file -f -new')

				#import FBX from bledner 
				mc.file(import_fbx, i=True,ignoreVersion = True, mergeNamespacesOnClash=True, namespace=':')

				#flip all joint ortation

				#auto
				#clear all joints in scene
				self.JointOrientRotationUP(joints=mc.ls(type='joint'))


			    #unparent bones
				loc_object_joint = []

				for loc in mc.ls(type = 'locator'):
					print loc.replace('Shape','')
					# get chdl
					heh = []
					if mc.listRelatives(loc.replace('Shape',''), children=1) is None:
						mc.delete(loc.replace('Shape',''))
						continue

					for x in mc.listRelatives(loc.replace('Shape',''), children=1):
						if x !=loc and x!=loc.replace('Shape',''):
							heh.append(x)

					if heh != []:
						# get chldrs
						for i in heh:
							print 'joint ==      '+i
							mc.parent(i, world=True)
							loc_object_joint.append(i)
						mc.delete(loc.replace('Shape',''))
					else:
						mc.delete(loc.replace('Shape',''))


				#get name mesh
				my_mesh_list = mc.ls(type = 'mesh', s = 0)
				print(my_mesh_list)
				object_mesh = []
				for x in my_mesh_list:
					if (x.find('ShapeOrig') != -1):
						ab = x.replace('ShapeOrig', '')
						object_mesh.append(ab)
				#print(object_mesh) #for debug

		        #import file rig

				mc.file(rigs_path + file_rig_name,ignoreVersion = True, i=True, mergeNamespacesOnClash=True, namespace=':')

		        #parent content to rigs 
				rig_path_mesh_grp = 'csgo_character|mesh'
				rig_path_skeleton_grp = 'csgo_character|your_skeleton'

		        #parent mesh 
				for mesh in object_mesh:
					mc.parent(mesh, rig_path_mesh_grp)
				#parent skeleton
				one_level_joints = []
				for j in mc.ls(type="joint"):
					if not mc.listRelatives(j, parent=1):
						one_level_joints.append(j)

		        # get all joint in one level dag
				create_root = True
				if create_root:
					# create root joint
					root = self.CreateRoot(name="csgo_root",joints_p=one_level_joints)
					del one_level_joints
					mc.parent(root,rig_path_skeleton_grp)
					mc.parentConstraint("ac_master",root,maintainOffset=1)
					mc.scaleConstraint("ac_master",root,maintainOffset=1)
				else:
					heh = False
					for s in mc.ls(type='joint'):
						if s=="csgo_root":
							heh = True
							break
					if heh:
						# parent all to rig_path_skeleton_grp 
						for skelet in one_level_joints:
							mc.parent(skelet, rig_path_skeleton_grp)
						del one_level_joints
						# parent to root joint
						mc.parentConstraint("ac_master","csgo_root",maintainOffset=1)
						mc.scaleConstraint("ac_master","csgo_root",maintainOffset=1)
					else:
						print 'csgo root not found!'
						continue
				



		        #get path to objects
				print 'file connect = '+ RIGS_DIR+file_rig_name.replace('.ma','_connections.txt')
				File_connenections = self.GetFilaData(file_F=RIGS_DIR+file_rig_name.replace('.ma','_connections.txt'))
				if File_connenections is None or File_connenections == []:
					continue
				# get for root or not
				for line in File_connenections:
					print line
					if line == "": # this commentary
						continue
					if line[0] == "/": # this commentary
						continue
					if line[0]+line[1]=="pc":
						# parent constrain
						get_sp = line.replace("pc*",'').split()
						mc.parentConstraint(get_sp[0],get_sp[1],maintainOffset=True)
					elif line[0]+line[1]+line[2]=="cAr":
						# connect rotations
						get_sp = line.replace("cAr*",'').split()
						mc.connectAttr(get_sp[0]+'.rotate',get_sp[1]+'.rotate')


		        #invisible skeleton
				mc.setAttr('csgo_character|your_skeleton.visibility', 0)

				#delete from RAM data rig 
				#del LEFT_FINGERS_RIG
				#del RIGHT_FINGERS_RIG
				#del LEG_RIG_DATA

		        #delete from RAM data skeleton 
				#del LIST_SKELETON_CSGO_DATA
				#del LIST_SKELETON_LEGS
				#del LEFT_FINGERS_SKELETON
				#del RIGHT_FINGERS_SKELETON
		        
		        #create layer mesh
				ln = 'csgo_mesh'

				mc.setAttr( '%s.displayType' % ln, 2)

		        #export .ma\
		        #name_save_fuile = FOLDER_EXPORT_MA_FILES_RIGS + import_model.replace('.qc.ModelFromBlender.fbx', '.mb')
				mc.file(save_path + '/' + name_file.replace('.qc.ModelFromBlender.fbx', '') + name_maya_export_file,exportAll = 1, ignoreVersion = True ,force = 1, type = 'mayaAscii')
				mel.eval('file -f -new')


				if create_skeletal_mesh:
					# create SM
					heh = []
					heh.append(import_fbx)
					self.CreateSkeletalMesh(export_folder=save_path, imports=heh, skeletal_mesh_name=name_file.replace('.qc.ModelFromBlender.fbx', '_Skeletal_Mesh'),root_name='csgo_root')
					del heh

			del fbx_path, save_path, file_rig_name, list_paths_fbx_models, mode_use
			mel.eval('file -f -new')
			self.restart()
			self.Final = True
		   	#open restart dialog
		
		elif mode_use == 1:
			#start for weapons
			self.generate_weapons()

		elif mode_use == 2:
			#start for pov
			self.generate_weapons()

	def check_files(self,find=str,path=str, long_find=bool, find_long=list):
			files_check = os.listdir(path)
			out_list = []
			if long_find:
				#print('LONG-------')
				GOOD = False
				for f in files_check:
					for find_str in find_long:
						if f == find_str:
							out_list.append(f)
							break
				if len(out_list) == len(find_long):
					GOOD = True
					#print(' ravno =)')
					return find_long
				else:
					del out_list
					lmao = []
					return lmao # void list
			else:
				GOOD = False
				file_yes = str
				for file in files_check:
					if file.find(find)!=-1:
						GOOD=True
						file_yes = file
						break
				if GOOD:
					return file_yes
					return
				else:
					return file_yes  # void list
					return

	def ghehehe(self):
		print('neponel')



	def GENERATOR_WEAPONS(self, fbx_import=list, save_path=str, fbx_path=str, skeletal_mesh=bool):
		print('weaponew CREATE')
		for fbx in fbx_import:
			print(fbx_path)
			print('To generate ... = '+fbx)   # fbx = path to file or fbx = save_path+/+name.fbx
			# NEW SCENE
			mel.eval('file -f -new;')
			
			CREATE_MASTER = fbx.replace(fbx_path+'/','').replace('.ModelFromBlender.fbx','_weapon')
			print(CREATE_MASTER)

			LIST_IMPORTS = []
			del LIST_IMPORTS[:]
			
			# IMPORT TO SCENE
			# init type for Exceptions import
			name_file= fbx.replace(fbx_path+'/','')
			if name_file == 'v_mach_m249para_v_m249_model.ModelFromBlender.fbx':
				# import for m249parea
				m249para_import = [
					'v_mach_m249para_bullet01.ModelFromBlender.fbx',
					'v_mach_m249para_bullet02.ModelFromBlender.fbx',
					'v_mach_m249para_bullet03.ModelFromBlender.fbx',
					'v_mach_m249para_bullet04.ModelFromBlender.fbx',
					'v_mach_m249para_bullet05.ModelFromBlender.fbx',
					'v_mach_m249para_bullet06.ModelFromBlender.fbx',
					'v_mach_m249para_bullet07.ModelFromBlender.fbx',
					'v_mach_m249para_bullet08.ModelFromBlender.fbx',
					'v_mach_m249para_bullet09.ModelFromBlender.fbx',
					'v_mach_m249para_bullet10.ModelFromBlender.fbx',
					'v_mach_m249para_bullet11.ModelFromBlender.fbx',
					'v_mach_m249para_bullet12.ModelFromBlender.fbx',
					'v_mach_m249para_bullet13.ModelFromBlender.fbx',
					'v_mach_m249para_bullet14.ModelFromBlender.fbx',
					'v_mach_m249para_bullet15.ModelFromBlender.fbx',
					'v_mach_m249para_bullet16.ModelFromBlender.fbx',
				]
				# find in folder 
				yeah = self.check_files(find='',path=fbx_path+'/', long_find=True, find_long=m249para_import)
				if yeah == []:
					del yeah
					#print('nety nekotorih files')
					continue
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				del m249para_import
				for bltt in yeah:
					LIST_IMPORTS.append(fbx_path+'/'+bltt)
					mc.file(fbx_path+'/'+bltt, i=True, mergeNamespacesOnClash=True, namespace=':')
				del yeah
			elif name_file == 'v_mach_negev_v_negev_model.ModelFromBlender.fbx':
				# import for negev
				negev_import = [
					'v_mach_negev_bullet01.ModelFromBlender.fbx',
					'v_mach_negev_bullet02.ModelFromBlender.fbx',
					'v_mach_negev_bullet03.ModelFromBlender.fbx',
					'v_mach_negev_bullet04.ModelFromBlender.fbx',
					'v_mach_negev_bullet05.ModelFromBlender.fbx',
					'v_mach_negev_bullet06.ModelFromBlender.fbx',
					'v_mach_negev_bullet07.ModelFromBlender.fbx',
					'v_mach_negev_bullet08.ModelFromBlender.fbx',
					'v_mach_negev_bullet09.ModelFromBlender.fbx',
					'v_mach_negev_bullet10.ModelFromBlender.fbx',
					'v_mach_negev_bullet11.ModelFromBlender.fbx',
					'v_mach_negev_bullet12.ModelFromBlender.fbx',
					'v_mach_negev_bullet13.ModelFromBlender.fbx',
					'v_mach_negev_bullet14.ModelFromBlender.fbx',
					'v_mach_negev_bullet15.ModelFromBlender.fbx',
					'v_mach_negev_bullet16.ModelFromBlender.fbx',
					'v_mach_negev_bullet17.ModelFromBlender.fbx',
					'v_mach_negev_bullet18.ModelFromBlender.fbx',
					'v_mach_negev_bullet19.ModelFromBlender.fbx',
					'v_mach_negev_bullet20.ModelFromBlender.fbx',
				]
				# find in folder 
				yeah = self.check_files(find='',path=fbx_path+'/', long_find=True, find_long=negev_import)
				if yeah == []:
					del yeah
					#print('nety nekotorih files')
					continue
				del negev_import
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				for bltt in yeah:
					LIST_IMPORTS.append(fbx_path+'/'+bltt)
					mc.file(fbx_path+'/'+bltt, i=True, mergeNamespacesOnClash=True, namespace=':')
				del yeah
			elif name_file == 'v_pist_223.ModelFromBlender.fbx':
				# import for usp
				check = 'v_pist_223_silencer.ModelFromBlender.fbx'
				yeah = self.check_files(find=check,path=fbx_path+'/', long_find=False, find_long=[])
				if yeah != check:
					continue
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+yeah, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				LIST_IMPORTS.append(fbx_path+'/'+yeah)
			elif name_file == 'v_pist_cz_75_pist_cz_75.ModelFromBlender.fbx':
				# import for cz_75
				check = 'v_pist_cz_75_pist_cz_75_frontmagazine.ModelFromBlender.fbx'
				yeah = self.check_files(find=check,path=fbx_path+'/', long_find=False, find_long=[])
				if yeah != check:
					continue
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+yeah, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				LIST_IMPORTS.append(fbx_path+'/'+yeah)
			elif name_file == 'v_pist_revolver_revolver_model.ModelFromBlender.fbx':
				# import for revolver
				mass_revo = [
					'v_pist_revolver_revolver_cylinder_bullets_fired.ModelFromBlender.fbx',
					'v_pist_revolver_revolver_cylinder_bullets_unfired.ModelFromBlender.fbx',
					'v_pist_revolver_revolver_loader_empty.ModelFromBlender.fbx',
					'v_pist_revolver_revolver_loader_loaded.ModelFromBlender.fbx',
				]
				yeah = self.check_files(find='',path=fbx_path+'/', long_find=True, find_long=mass_revo)
				if yeah == []:
					del yeah
					#print('nety nekotorih files')
					continue
				del mass_revo,yeah
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+'v_pist_revolver_revolver_loader_loaded.ModelFromBlender.fbx', i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+'v_pist_revolver_revolver_cylinder_bullets_unfired.ModelFromBlender.fbx', i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				LIST_IMPORTS.append(fbx_path+'/'+'v_pist_revolver_revolver_loader_loaded.ModelFromBlender.fbx')
				LIST_IMPORTS.append(fbx_path+'/'+'v_pist_revolver_revolver_cylinder_bullets_unfired.ModelFromBlender.fbx')
			elif name_file == 'v_rif_m4a1_s.ModelFromBlender.fbx':
				# import for m4a1_s
				m4a1_s_mass = [
					'v_rif_m4a1_s_body3_model0.ModelFromBlender.fbx',
					'v_rif_m4a1_s_silencer.ModelFromBlender.fbx'
				]
				yeah = self.check_files(find='',path=fbx_path+'/', long_find=True, find_long=m4a1_s_mass)
				if yeah == []:
					del yeah
					#print('nety nekotorih files')
					continue
				del m4a1_s_mass,yeah 
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+'v_rif_m4a1_s_body3_model0.ModelFromBlender.fbx', i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+'v_rif_m4a1_s_silencer.ModelFromBlender.fbx', i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				LIST_IMPORTS.append(fbx_path+'/'+'v_rif_m4a1_s_body3_model0.ModelFromBlender.fbx')
				LIST_IMPORTS.append(fbx_path+'/'+'v_rif_m4a1_s_silencer.ModelFromBlender.fbx')
			elif name_file == 'v_shot_xm1014_xm1014_model.ModelFromBlender.fbx':
				# import for xm1014
				find_file = 'v_shot_xm1014_body1_model0.ModelFromBlender.fbx'
				yeah = self.check_files(find=find_file,path=fbx_path+'/', long_find=False, find_long=[])
				if yeah != find_file:
					continue
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+yeah, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				LIST_IMPORTS.append(fbx_path+'/'+yeah)
			elif name_file == 'v_snip_ssg08_ssg08_model.ModelFromBlender.fbx':
				# import for ssg08
				find_file = 'v_snip_ssg08_body1_model0.ModelFromBlender.fbx'
				yeah = self.check_files(find=find_file,path=fbx_path+'/', long_find=False, find_long=[])
				if yeah != find_file:
					continue
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				mc.file(fbx_path+'/'+yeah, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
				LIST_IMPORTS.append(fbx_path+'/'+yeah)
			else:
				# for other models
				mc.file(fbx, i=True, mergeNamespacesOnClash=True, namespace=':')
				LIST_IMPORTS.append(fbx)
			# start create rig
			Weapon_builder(master_global =CREATE_MASTER, path_input=fbx_path+'/',path_root_weapons = '', save_root = '', list_fbx_weapons = [])
			mc.file(save_path + '/'+CREATE_MASTER+'.ma',exportAll = 1, ignoreVersion = True ,force = 1, type = 'mayaAscii')
			
			# create Skeletal Mesh
			if skeletal_mesh:
				# create SM
				self.CreateSkeletalMesh(export_folder=save_path, imports=LIST_IMPORTS, skeletal_mesh_name=CREATE_MASTER.replace("reference_weapon",'Skeletal_Mesh'),root_name='csgo_weapon_root')
			del CREATE_MASTER
			del LIST_IMPORTS




		# NEW SCENE
		mel.eval('file -f -new;')
		self.Final = True
		# open_dialog restart
		self.restart()



		#WeaponBuilder()
		# generate end!
		# create restart dialog class,,
	def generate_pov(self, list_path, save_path):
		pass

	def restart(self):
		lmao = RESTART_DIALOG()
		lmao.exec_()

	# other
	def CreateRoot(self, name=str,joints_p=list):
		mel.eval("select -cl  ;")
		mc.joint(name=name,p=(0,0,0))
		for j in joints_p:
			mc.parent(j,name)
		return name

	def GetFilaData(self, file_F=str):
		# check file
		folder_check = ""
		filename_f = ''
		filename_f = list(file_F.replace('/',' ').split())[len(filename_f)-1]
		folder_check = file_F.replace(filename_f, '') 
		good = False
		for ff in os.listdir(folder_check):
			if ff == filename_f:
				good = True
				break
		del folder_check,filename_f 
		if good:
			# open FiLe
			f = open(file_F,'r')
			fll = f.readlines()
			f.close()
			fll = [line.rstrip() for line in fll]
			return fll
		else:
			hmm = []
			return hmm

	def JointOrientRotationUP(self, joints=list):
		for sjjj in joints:
			attRX = mc.getAttr(sjjj + '.rotateX')
			attRY = mc.getAttr(sjjj + '.rotateY')
			attRZ = mc.getAttr(sjjj + '.rotateZ')
			#set to joint orient
			mc.setAttr(sjjj + '.joint Orient X', attRX)
			mc.setAttr(sjjj + '.joint Orient Y', attRY)
			mc.setAttr(sjjj + '.joint Orient Z', attRZ)
			#clear rotation joints
			mc.setAttr(sjjj + '.rotateX', 0)
			mc.setAttr(sjjj + '.rotateY', 0)
			mc.setAttr(sjjj + '.rotateZ', 0)

	def CreateSkeletalMesh(self, export_folder=str, imports=list, skeletal_mesh_name=str, root_name=str):
		# export_folder - out path and create in export_folder 'CSGO Skeletal Mesh'
		directory = self.CreateFolder(folder=export_folder, name_folder="CSGO Skeletal Mesh")
		mel.eval('file -f -new;')
		for fil in imports:
			mc.file(fil, i=True, mergeNamespacesOnClash=True, namespace=':')
		self.JointOrientRotationUP(joints=mc.ls(type='joint'))
		# create root
		joints_parent = []
		for x in mc.ls(type='locator'):
			loc_name = x.replace('Shape','')
			for ch in mc.listRelatives(loc_name,children=True):
				joints_parent.append(ch)
		self.CreateRoot(name=root_name, joints_p=joints_parent)
		for x in mc.ls(type='locator'):
			mc.delete(x.replace('Shape',''))
		# export to fbx
		mc.file(directory+skeletal_mesh_name+'.fbx', force=1, exportAll=1,type='FBX Export')
		mel.eval('file -f -new;')

	def CreateFolder(self, folder = '', name_folder = ''):
		directory = folder + '/' +  name_folder + '/'
		try:
			if not os.path.exists(directory):
				os.makedirs(directory)
		except OSError:
			print ('Error: Creating directory. ' +  directory)
		return directory



class SettingsDialog(object):
	"""docstring for SettingsDialog"""
	def __init__(self, arg):
		super(SettingsDialog, self).__init__()
		self.arg = arg

		self.Main()

	def layout(self):
		pass


	def Main(self):
		self.tool_fix_student_ASCII = type  ####### tool for clear line "fileInfo "license" "student";" in .ma files
		self.export_rigs_type = type  ############# save rig .ma or .mb < WARNING >
		self.main = type  ######################### if you have a student program license, we recommend choosing .ma - you can fix them ############################

		self.setting_type_export = str


	def student_Ascii(folder_files=str):
		if folder_files is None or folder_files=="":
			return

		# create dialog path 


		# check folder
		all_files = os.listdir(folder_files)


	def UpdateSettings(self):
		pass

		
	def Close_Dialog(self):
		pass
