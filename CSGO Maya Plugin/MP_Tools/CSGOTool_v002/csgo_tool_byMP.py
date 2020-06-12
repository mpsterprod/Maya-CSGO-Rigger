# -*- coding: utf-8 -*-
'''
MIT License

Copyright (c) 2020 mpsterprod

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
'''
# GITHUB https://github.com/mpsterprod
# debug version
from PySide2 import QtCore
from PySide2.QtCore import QPropertyAnimation, QRect
from PySide2 import QtUiTools
from PySide2 import QtWidgets
from PySide2 import QtGui
from PySide2 import *
from shiboken2 import wrapInstance
import os
import sys
import time
import math

import maya.cmds as mc
import maya.OpenMayaUI as omui
import pymel.core as pm
import maya.mel as mel
import maya.OpenMayaUI as apiUI
from maya import mel




#####################################################################
####### GLOBAL VARIABLES
#####################################################################

Pathversion = os.path.abspath(os.curdir)
arrversion = Pathversion.replace('\\', ' ').split()
version = str(arrversion[4]).replace('Maya','')   #version maya 
#print(version)
path_script = os.environ['MAYA_APP_DIR']    #C:/Users/userName/Documents/maya   \2018\scripts\CSGOtool
#print(path_script)
del Pathversion





SCRIPT_DIRECTORY = path_script + '/' + version + '/scripts/CSGOTool_v002'

RIGS_DIR = SCRIPT_DIRECTORY + '/Your Rigs' + '/'

ALL_FILES_In_RIGS_DIR = os.listdir(RIGS_DIR)
RIGS = list(filter(lambda x: x.endswith('.mb'), ALL_FILES_In_RIGS_DIR))
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

save_icon = GUI_FOLDER +  "save_btn_in.png"
no_icon = GUI_FOLDER +  "NO_btn_in.png"
back_icon = GUI_FOLDER + "back_btn_in.png"

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

		self.FBX_WEAPON_FOLDER = ''
		self.SAVE_WEAPON_FOLDER = ''


		self.FBX_POV_FOLDER = ''
		self.SAVE_POV_FOLDER = ''

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
		self.check_weapon_mode_list_or_all_inits = False
		self.LIST_WEAPON_IN_FOLDER = []
		self.BAD_FBX_PATH_WEAPONS = 0
		self.LIST_PATHS_WEAPONS = []
		self.ALL_WEAPONS_IN_FOLDER = []


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




		#line glow and move

		lineY = 45
		lineSizeY = 4

		self.GLOBAL_X = 126
		self.GLOBAL_Y = lineY
		self.SIZE_X = 191
		self.SIZE_Y = lineSizeY
		
		

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
		add_character = self.ui.pushButton_character_add_model
		edit_chracter = self.ui.pushButton_character_edit_model
		remove_chracter = self.ui.pushButton_character_remove_model
		clearAll_chracter = self.ui.pushButton_character_clear_alL_model

		list_buttons = [
			add_character,
			edit_chracter,
			remove_chracter,
			clearAll_chracter,
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
			add_character.clicked.connect(lambda: self.list_to_add(characterListWig=self.ui.List_fbx_characters, reference_list_paths=self.LIST_CHARACTERS_PATHS, directory_fbx=self.FBX_CHARACTER_FOLDER, all_fbx=self.LIST_ALL_CHARACTERS_IN_FORLDER))
			edit_chracter.clicked.connect(lambda: self.list_to_edit(list_edit=self.ui.List_fbx_characters, folder_fbx=self.FBX_CHARACTER_FOLDER, ALL_PATHS=self.LIST_CHARACTERS_PATHS))
			remove_chracter.clicked.connect(lambda: self.list_to_remove(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS))
			clearAll_chracter.clicked.connect(lambda: self.list_to_clearAll(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS))



			#radio buttons
			self.ui.radio_For_List.clicked.connect(self.List_Mode)
			self.ui.radio_For_all.clicked.connect(self.For_All_Mode)


			self.ui.pushButton_folder_fbx_character.clicked.connect(self.add_fbx_character_folder)
			self.ui.pushButton_folder_mb_save_character.clicked.connect(self.add_save_character_folder)

		



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
		self.button_edit_path_Weapon_mode = self.ui.pushButton_weapon_edit_model
		self.button_remove_path_Weapon_mode = self.ui.pushButton_weapon_remove_model
		self.button_clear_all_in_list_Weapon_objects = self.ui.pushButton_weapon_clear_alL_model

		list_buttons_weapons = [
			self.button_add_weapon_or_path_in_root,
			self.button_edit_path_Weapon_mode,
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

		self.animation = QPropertyAnimation(animation_line, b'geometry')

		speed_duration = 160

		#mode - character or weapon or pov
		if mode.find('character') != -1:
			print('hello character')

			self.animation.setDuration(speed_duration)
			self.animation.setStartValue(QRect(self.GLOBAL_X, self.GLOBAL_Y, self.SIZE_X, self.SIZE_Y))
			self.animation.setEndValue(QRect(126, lineY, 191, lineSizeY))
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
			self.animation.setStartValue(QRect(self.GLOBAL_X, self.GLOBAL_Y, self.SIZE_X, self.SIZE_Y))
			self.animation.setEndValue(QRect(335, lineY, 159, lineSizeY))
			self.animation.start()


			self.GLOBAL_X = 335
			self.GLOBAL_Y = lineY
			self.SIZE_X = 159
			self.SIZE_Y = lineSizeY

		
		elif mode.find('pov') != -1:
			print('hello pov')

			self.animation.setDuration(speed_duration)
			self.animation.setStartValue(QRect(self.GLOBAL_X, self.GLOBAL_Y, self.SIZE_X, self.SIZE_Y))
			self.animation.setEndValue(QRect(522, lineY, 117, lineSizeY))
			self.animation.start()
		

		
			#animation_line.setFixedSize(117, lineSizeY)
			#animation_line.move(522, lineY)

			self.GLOBAL_X = 522
			self.GLOBAL_Y = lineY
			self.SIZE_X = 117
			self.SIZE_Y = lineSizeY

	def Display_Update(self, mode=int, check=bool):
		# update for bad and good path and for generate
		# update to update
		pass

	
	#history mode
	def update_mode(self):

		self.RIG_USE = self.ui.rig_type_from_folder_rigs.currentText()
		
		info_to_user = self.ui.info_label

		
		print('hz = '+str(self.BAD_FBX_PATH))
		if self.BAD_FBX_PATH == 1:
			print('----------------------------------------')
			print('------Bad path, no fbx files :(-------')
			print('----------------------------------------')
			info_to_user.show()
			info_to_user.setText("      Add FBX Folder")
			info_to_user.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
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
				self.ui.pushButton_character_add_model.setEnabled(True)
				self.ui.pushButton_character_edit_model.setEnabled(False)
				self.ui.pushButton_character_remove_model.setEnabled(False)
				self.ui.pushButton_character_clear_alL_model.setEnabled(False)
				#print('no fbx in list only ADD')
			else:
				self.ui.pushButton_character_add_model.setEnabled(True)
				self.ui.pushButton_character_edit_model.setEnabled(True)
				self.ui.pushButton_character_remove_model.setEnabled(True)
				self.ui.pushButton_character_clear_alL_model.setEnabled(True)



		if self.FBX_CHARACTER_FOLDER == '':
			info_to_user.show()
			info_to_user.setText("      Add FBX Folder")
			info_to_user.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')
		else:
			info_to_user.show()
			info_to_user.setText("        Add model")
			info_to_user.setStyleSheet('font: 75 12pt "Unispace";color: rgb(255, 255, 255);')

		if len(self.LIST_CHARACTERS_PATHS) >= 1:
			info_to_user.hide()

		if self.Check_For == 1:
			info_to_user.hide()




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
	def list_to_add(self, characterListWig=type, reference_list_paths=list, directory_fbx=str, all_fbx=list):
		#print('character_add')

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
									characterListWig.addItem(add)
							else:
								add = path[0]
								#add to info
								reference_list_paths.append(add)
								#add to widget
								characterListWig.addItem(add)
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
									characterListWig.addItem(add)
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
			item.setText(relut_path)
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
		path = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'Save .mb Folder')
		if path != [] and path is not None:
			toStr = path[0]
			if toStr != '' and toStr != None:
				self.SAVE_CHARACTER_FOLDER = toStr
				self.ui.lineEdit_character_mb_save.setText(self.SAVE_CHARACTER_FOLDER)
				self.ADD_PLEASE_SAVE_PATH(good_or_no = 1)
				self.update_mode()

		else:
			self.update_mode()



	def add_path_to_mode(self):
		path  = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'FBX Folder')
		if path != [] and path is not None:
			toStr = path[0]
			if toStr != '' and toStr != None: # List_fbx_weapons
				# check mode
				if self.MODE==0:
					# character
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
				elif self.MODE==1:
					# weapons
					self.list_to_clearAll(list_edit=self.ui.List_fbx_characters,paths_array=self.LIST_CHARACTERS_PATHS)







 
				elif self.MODE==2:
					# pov
					self.update_mode()
		else:
			self.update_mode()



				





	##############################################################
	# WEAPON MODE INFO INPUT



	def weapon_init_buttons(self):
		self.ui.pushButton_folder_fbx_weapon.clicked.connect(self.weapons_path_fbx_root)
		
	def BAD_FBX_PATH_OR_GOOD_WEAPONS(self, good_or_no = 0):
		pass
	

	def weapons_path_fbx_root(self):
		path  = mc.fileDialog2(dialogStyle= 3,fileMode = 3, okCaption = 'FBX Folder')
		if path != [] and path is not None:
			toStr = path[0]
			if toStr != '' and toStr != None: # List_fbx_weapons
				self.list_to_clearAll(list_edit=self.ui.List_fbx_weapons,paths_array=self.LIST_WEAPON_IN_FOLDER)
				del self.LIST_WEAPON_IN_FOLDER[:]
				self.WEAPONS_PATH_FBX = ''
				self.WEAPONS_PATH_FBX = toStr
				self.ui.lineEdit_character_fbx.setText(self.WEAPONS_PATH_FBX)
				#create for all - mode
				check = os.listdir(self.WEAPONS_PATH_FBX)
				name_fbx = list(filter(lambda x: x.endswith('ModelFromBlender.fbx'), check))
				if name_fbx == [] or name_fbx == None:
					print('Bad path, no fbx files :(')
					self.BAD_FBX_PATH_OR_GOOD_WEAPONS(good_or_no = 0)
					del check
					del name_fbx
					self.BAD_FBX_PATH_WEAPONS = 1
					return
				self.BAD_FBX_PATH_WEAPONS = 0
				self.BAD_FBX_PATH_OR_GOOD_WEAPONS(good_or_no = 2)
				del check
				for name in name_fbx:
					create_path = self.WEAPONS_PATH_FBX + '/' + name
					self.LIST_WEAPON_IN_FOLDER.append(create_path)
				del name_fbx

				self.update_mode()
		else:
			self.update_mode()


		print(self.WEAPONS_PATH_FBX)


	def weapons_path_save_rigs(self):
		pass

	def type_export_weapons(self):
		pass

	def update_weapon_mode(self):
		pass


	def add_weapon_list(self):
		pass

	def edit_weapon_list(self):
		pass

	def remove_weapon_list(self):
		pass

	def clear_weapon_list(self):
		pass

	def for_weapon_for_all_type(self):
		pass














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
								stg = Generate_Character_Start(self,mode = 0, fbx = self.FBX_CHARACTER_FOLDER, save = self.SAVE_CHARACTER_FOLDER, file = self.RIG_USE, list_model = self.LIST_CHARACTERS_PATHS)
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
								stg = Generate_Character_Start(self,mode = 0, fbx = self.FBX_CHARACTER_FOLDER, save = self.SAVE_CHARACTER_FOLDER, file = self.RIG_USE, list_model = self.LIST_ALL_CHARACTERS_IN_FORLDER)
								stg.exec_()
								

		elif mode_generate == 1:
			#weapon mode
			print('start weapon mode generate...')


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
class Generate_Character_Start(QtWidgets.QDialog):
	#this start dialog
	def __init__(self, parent = maya_main_window(), mode = 0, fbx = '', save ='', file = '', list_model = []):
		super(Generate_Character_Start, self).__init__(parent)

		self.FBX = fbx
		self.SAVE = save
		self.FILE = file
		self.EXPORT_LIST = list_model
		self.MODE_GEN = 0
		self.CREATE_ROOT = False
		

		self.setWindowTitle("START GENERATE")

		self.init_ui()
		self.create_layout()
		self.add_info()
		self.create_connection()

	def init_ui(self):
		loader = QtUiTools.QUiLoader()
		self.ui = loader.load(generate_start_ui)

	

	def create_layout(self):
		main_layout = QtWidgets.QVBoxLayout(self)
		main_layout.setContentsMargins(0,0,0,0)
		main_layout.addWidget(self.ui)

		self.ui.back_ground_label_start.setPixmap(baackground_generate)




	def create_connection(self):
		self.ui.Go_generate_button.clicked.connect(self.startGenerateRig)
		self.ui.Back_dialog.clicked.connect(self.back_dil)



	def add_info(self):

		self.ui.fbx_folder_str.setText(self.FBX)
		self.ui.save_figr_folder_str.setText(self.SAVE)
		self.ui.file_rig_str.setText(self.FILE)
		
		#self.ui.fbx_folder_str.setStyleSheet('font: 75 7pt "Unispace";color: rgb(255, 255, 255);background-color: rgb(255, 255, 255, 0);')
		#self.ui.save_figr_folder_str.setStyleSheet('font: 75 7pt "Unispace";color: rgb(255, 255, 255);background-color: rgb(255, 255, 255, 0);')
		self.ui.file_rig_str.setStyleSheet('font: 75 7pt "Unispace";color: rgb(255, 255, 255);background-color: rgb(255, 255, 255, 0);')

		
		list_fbx = self.ui.listWidget_model_to_rig
		list_fbx.setStyleSheet('background-color: rgb(255, 255, 255, 0);font: 8pt "MS Shell Dlg 2";;color: rgb(255, 255, 255);')
		

		for name in range(0,len(self.EXPORT_LIST)):
			new_name = str(self.EXPORT_LIST[name]).replace(self.FBX + '/', "").replace('.qc.ModelFromBlender.fbx', "").replace('.ModelFromBlender.fbx', "")
			list_fbx.addItem(new_name)
			del new_name


	def startGenerateRig(self):
		print('start generate go')

		#open save dialog
		sv = Save_scene_Questions()
		sv.exec_()
		if sv.START_OR_NO == True:
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
			# check create root or not
			self.CREATE_ROOT = self.ui.Create_Root_Check.CheckState()
			print self.CREATE_ROOT
			return
			
			create_generator = Customizer(self)
			create_generator.GENERATOR(fbx_path = self.FBX, save_path = self.SAVE, file_rig_name = self.FILE, list_paths_fbx_models = self.EXPORT_LIST, mode_use = self.MODE_GEN)
			#create_generator.Generate_Starting(md = self.MODE_GEN, l = self.EXPORT_LIST, s = self.SAVE, r = self.FILE, fbx_i = self.FBX)
			if create_generator.Final == True:
				self.close()


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

	def CreateRoot(self, name=str,joints_p=list):
		mel.eval("select -cl  ;")
		mc.joint(name=name,p=(0,0,0))
		for j in joints_p:
			mc.parent(j,name)
		return name

		

	def GENERATOR(self, fbx_path = '', save_path = '', file_rig_name = '', list_paths_fbx_models = [], mode_use = 0):

		rigs_path = ''
		if RIGS_DIR != '':
			rigs_path = RIGS_DIR
		else:
			del rigs_path
			return

		if mode_use == 0:
			#start for character
		    print(list_paths_fbx_models)

		    name_maya_export_file = '.mb'

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
		        selectionsJoints = mc.ls(type = 'joint')

		        for j in range(0,len(selectionsJoints)):
			        #get rotarion joint
			        attRX = mc.getAttr(selectionsJoints[j] + '.rotateX')
			        attRY = mc.getAttr(selectionsJoints[j] + '.rotateY')
			        attRZ = mc.getAttr(selectionsJoints[j] + '.rotateZ')
			        #set to joint orient
			        mc.setAttr(selectionsJoints[j] + '.joint Orient X', attRX)
			        mc.setAttr(selectionsJoints[j] + '.joint Orient Y', attRY)
			        mc.setAttr(selectionsJoints[j] + '.joint Orient Z', attRZ)
			        #clear rotation joints
			        mc.setAttr(selectionsJoints[j] + '.rotateX', 0)
			        mc.setAttr(selectionsJoints[j] + '.rotateY', 0)
			        mc.setAttr(selectionsJoints[j] + '.rotateZ', 0)


			    #unparent bones
		        loc_object_delete = mc.ls(type = 'locator')

		        bone_unparent_pelvis = loc_object_delete[0].replace('Shape', '') + '|pelvis'
		        bone_unparent_cam = loc_object_delete[0].replace('Shape', '') + '|cam_driver'
		        bone_unparent_root = loc_object_delete[0].replace('Shape', '') + '|lean_root'

		        objects_unParent_skeleton = [bone_unparent_pelvis, bone_unparent_cam, bone_unparent_root]
		        for unparent in objects_unParent_skeleton:
		            mc.parent( unparent, world=True)

		        #get one locator from fbx file
		        for locator_delete in loc_object_delete:   
		            mc.delete(locator_delete.replace('Shape', ''))

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

		        cmds.file(rigs_path + file_rig_name,ignoreVersion = True, i=True, mergeNamespacesOnClash=True, namespace=':')

		        #parent content to rigs 
		        rig_path_mesh_grp = 'csgo_character|mesh'
		        rig_path_skeleton_grp = 'csgo_character|your_skeleton'
		        #parent mesh 
		        for mesh in object_mesh:
		            mc.parent(mesh, rig_path_mesh_grp)
		        #parent skeleton
		        skeleton_data_referense = ['pelvis','cam_driver','lean_root'] 
		        for skelet in skeleton_data_referense:
		            mc.parent(skelet, rig_path_skeleton_grp)


		        #get path to objects



		        #rig data
		        #arm and spin neck
		        LIST_RIG_DATA = [           #parent ad=ll rig data

		            'csgo_character|setup|spine_rig1|ac_FK_hip_grp|ac_hip',
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1',
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2',
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest',
		      
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|ac_neck_1_grp|ac_neck_2',
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|ac_neck_1_grp|ac_neck_2|ac_head_0_grp|ac_head_0',
		     
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L',
		            'csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R',
		       
		            'csgo_character|setup|arm_rig_L|ac_DRV_arm_jt_L_grp|jt_drv_arm_upper_L',
		            'csgo_character|setup|arm_rig_L|ac_DRV_arm_jt_L_grp|jt_drv_arm_upper_L|jt_drv_arm_lower_L',
		            'csgo_character|setup|arm_rig_L|ac_DRV_arm_jt_L_grp|jt_drv_arm_upper_L|jt_drv_arm_lower_L|jt_drv_hand_L',
		     
		            'csgo_character|setup|arm_rig_R|ac_DRV_arm_jt_R|jt_drv_arm_upper_R',
		            'csgo_character|setup|arm_rig_R|ac_DRV_arm_jt_R|jt_drv_arm_upper_R|jt_drv_arm_lower_R',
		            'csgo_character|setup|arm_rig_R|ac_DRV_arm_jt_R|jt_drv_arm_upper_R|jt_drv_arm_lower_R|jt_drv_hand_R',

		        ]



		        LEFT_FINGERS_RIG = [

		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_ring_meta_L_grp|ac_finger_ring_meta_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_ring_meta_L_grp|ac_finger_ring_meta_L|ac_drv_finger_ring_0_L_grp|ac_drv_finger_ring_0_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_ring_meta_L_grp|ac_finger_ring_meta_L|ac_drv_finger_ring_0_L_grp|ac_drv_finger_ring_0_L|ac_drv_finger_ring_1_L_grp|ac_drv_finger_ring_1_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_ring_meta_L_grp|ac_finger_ring_meta_L|ac_drv_finger_ring_0_L_grp|ac_drv_finger_ring_0_L|ac_drv_finger_ring_1_L_grp|ac_drv_finger_ring_1_L|ac_drv_finger_ring_2_L_grp|ac_drv_finger_ring_2_L.rotate',



		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_drv_finger_thumb_0_L_grp|ac_drv_finger_thumb_0_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_drv_finger_thumb_0_L_grp|ac_drv_finger_thumb_0_L|ac_drv_finger_thumb_1_L_grp|ac_drv_finger_thumb_1_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_drv_finger_thumb_0_L_grp|ac_drv_finger_thumb_0_L|ac_drv_finger_thumb_1_L_grp|ac_drv_finger_thumb_1_L|ac_drv_finger_thumb_2_L_grp|ac_drv_finger_thumb_2_L.rotate',



		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_index_meta_L_grp|ac_finger_index_meta_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_index_meta_L_grp|ac_finger_index_meta_L|ac_drv_finger_index_0_L_grp|ac_drv_finger_index_0_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_index_meta_L_grp|ac_finger_index_meta_L|ac_drv_finger_index_0_L_grp|ac_drv_finger_index_0_L|ac_drv_finger_index_1_L_grp|ac_drv_finger_index_1_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_index_meta_L_grp|ac_finger_index_meta_L|ac_drv_finger_index_0_L_grp|ac_drv_finger_index_0_L|ac_drv_finger_index_1_L_grp|ac_drv_finger_index_1_L|ac_drv_finger_index_2_L_grp|ac_drv_finger_index_2_L.rotate',



		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_pinky_meta_L_grp|ac_finger_pinky_meta_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_pinky_meta_L_grp|ac_finger_pinky_meta_L|ac_drv_finger_pinky_0_L_grp|ac_drv_finger_pinky_0_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_pinky_meta_L_grp|ac_finger_pinky_meta_L|ac_drv_finger_pinky_0_L_grp|ac_drv_finger_pinky_0_L|ac_drv_finger_pinky_1_L_grp|ac_drv_finger_pinky_1_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_pinky_meta_L_grp|ac_finger_pinky_meta_L|ac_drv_finger_pinky_0_L_grp|ac_drv_finger_pinky_0_L|ac_drv_finger_pinky_1_L_grp|ac_drv_finger_pinky_1_L|ac_drv_finger_pinky_2_L_grp|ac_drv_finger_pinky_2_L.rotate',



		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_middle_meta_L_grp|ac_finger_middle_meta_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_middle_meta_L_grp|ac_finger_middle_meta_L|ac_drv_finger_middle_0_L_grp|ac_drv_finger_middle_0_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_middle_meta_L_grp|ac_finger_middle_meta_L|ac_drv_finger_middle_0_L_grp|ac_drv_finger_middle_0_L|ac_drv_finger_middle_1_L_grp|ac_drv_finger_middle_1_L.rotate',
		            'csgo_character|setup|arm_rig_L|Left_hand_rig|ac_drv_fingers_L_grp|ac_finger_middle_meta_L_grp|ac_finger_middle_meta_L|ac_drv_finger_middle_0_L_grp|ac_drv_finger_middle_0_L|ac_drv_finger_middle_1_L_grp|ac_drv_finger_middle_1_L|ac_drv_finger_middle_2_L_grp|ac_drv_finger_middle_2_L.rotate',



		        ]






		        #finger from rig
		        RIGHT_FINGERS_RIG = [

		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_ring_meta_R_grp|ac_finger_ring_meta_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_ring_meta_R_grp|ac_finger_ring_meta_R|ac_drv_finger_ring_0_R_grp|ac_drv_finger_ring_0_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_ring_meta_R_grp|ac_finger_ring_meta_R|ac_drv_finger_ring_0_R_grp|ac_drv_finger_ring_0_R|ac_drv_finger_ring_1_R_grp|ac_drv_finger_ring_1_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_ring_meta_R_grp|ac_finger_ring_meta_R|ac_drv_finger_ring_0_R_grp|ac_drv_finger_ring_0_R|ac_drv_finger_ring_1_R_grp|ac_drv_finger_ring_1_R|ac_drv_finger_ring_2_R_grp|ac_drv_finger_ring_2_R.rotate',


		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_drv_finger_thumb_0_R_grp|ac_drv_finger_thumb_0_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_drv_finger_thumb_0_R_grp|ac_drv_finger_thumb_0_R|ac_drv_finger_thumb_1_R_grp|ac_drv_finger_thumb_1_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_drv_finger_thumb_0_R_grp|ac_drv_finger_thumb_0_R|ac_drv_finger_thumb_1_R_grp|ac_drv_finger_thumb_1_R|ac_drv_finger_thumb_2_R_grp|ac_drv_finger_thumb_2_R.rotate',



		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_index_meta_R_grp|ac_finger_index_meta_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_index_meta_R_grp|ac_finger_index_meta_R|ac_drv_finger_index_0_R_grp|ac_drv_finger_index_0_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_index_meta_R_grp|ac_finger_index_meta_R|ac_drv_finger_index_0_R_grp|ac_drv_finger_index_0_R|ac_drv_finger_index_1_R_grp|ac_drv_finger_index_1_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_index_meta_R_grp|ac_finger_index_meta_R|ac_drv_finger_index_0_R_grp|ac_drv_finger_index_0_R|ac_drv_finger_index_1_R_grp|ac_drv_finger_index_1_R|ac_drv_finger_index_2_R_grp|ac_drv_finger_index_2_R.rotate',



		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_pinky_meta_R_grp|ac_finger_pinky_meta_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_pinky_meta_R_grp|ac_finger_pinky_meta_R|ac_drv_finger_pinky_0_R_grp|ac_drv_finger_pinky_0_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_pinky_meta_R_grp|ac_finger_pinky_meta_R|ac_drv_finger_pinky_0_R_grp|ac_drv_finger_pinky_0_R|ac_drv_finger_pinky_1_R_grp|ac_drv_finger_pinky_1_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_pinky_meta_R_grp|ac_finger_pinky_meta_R|ac_drv_finger_pinky_0_R_grp|ac_drv_finger_pinky_0_R|ac_drv_finger_pinky_1_R_grp|ac_drv_finger_pinky_1_R|ac_drv_finger_pinky_2_R_grp|ac_drv_finger_pinky_2_R.rotate',



		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_middle_meta_R_grp|ac_finger_middle_meta_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_middle_meta_R_grp|ac_finger_middle_meta_R|ac_drv_finger_middle_0_R_grp|ac_drv_finger_middle_0_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_middle_meta_R_grp|ac_finger_middle_meta_R|ac_drv_finger_middle_0_R_grp|ac_drv_finger_middle_0_R|ac_drv_finger_middle_1_R_grp|ac_drv_finger_middle_1_R.rotate',
		            'csgo_character|setup|arm_rig_R|Right_hand_rig|ac_drv_fingers_R_grp|ac_finger_middle_meta_R_grp|ac_finger_middle_meta_R|ac_drv_finger_middle_0_R_grp|ac_drv_finger_middle_0_R|ac_drv_finger_middle_1_R_grp|ac_drv_finger_middle_1_R|ac_drv_finger_middle_2_R_grp|ac_drv_finger_middle_2_R.rotate',

		        ]


		        #LEGS ADD rig

		        LEG_RIG_DATA = [
		            'csgo_character|setup|Left_leg_rig|result_drv_leg_upper_L1',
		            'csgo_character|setup|Left_leg_rig|result_drv_leg_upper_L1|result_drv_leg_lower_L',
		            'csgo_character|setup|Left_leg_rig|result_drv_leg_upper_L1|result_drv_leg_lower_L|result_drv_ankle_L',
		            'csgo_character|setup|Left_leg_rig|result_drv_leg_upper_L1|result_drv_leg_lower_L|result_drv_ankle_L|result_drv_ball_L',
		       
		            'csgo_character|setup|Right_leg_rig|Result_leg_upper_R',
		            'csgo_character|setup|Right_leg_rig|Result_leg_upper_R|Result_leg_lower_R',
		            'csgo_character|setup|Right_leg_rig|Result_leg_upper_R|Result_leg_lower_R|Result_ankle_R',
		            'csgo_character|setup|Right_leg_rig|Result_leg_upper_R|Result_leg_lower_R|Result_ankle_R|Result_ball_R',

		        ]



		        #twists manul skeleton


		        LONG_TWIST_RIG = [
		            #left arm 
		            'csgo_character|setup|arm_rig_L|ac_arm_setup_L_grp|Left_arm_twists|jt_drv_arm_upper_L_nuLL|ac_arm_upper_L_TWIST_grp|ac_arm_upper_L_TWIST.rotate',
		            'csgo_character|setup|arm_rig_L|ac_arm_setup_L_grp|Left_arm_twists|jt_drv_arm_upper_L_nuLL|ac_arm_upper_L_TWIST1_grp|ac_arm_upper_L_TWIST1.rotate',

		            'csgo_character|setup|arm_rig_L|ac_arm_setup_L_grp|Left_arm_twists|jt_drv_arm_upper_L_nuLL|jt_drv_arm_lower_L_null|ac_arm_lower_L_TWIST_grp|ac_arm_lower_L_TWIST.rotate',
		            'csgo_character|setup|arm_rig_L|ac_arm_setup_L_grp|Left_arm_twists|jt_drv_arm_upper_L_nuLL|jt_drv_arm_lower_L_null|ac_arm_lower_L_TWIST1_grp|ac_arm_lower_L_TWIST1.rotate',
		            #right arm
		            'csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|Right_arm_twists|jt_drv_arm_upper_R_null|ac_arm_upper_R_TWIST_grp|ac_arm_upper_R_TWIST.rotate',
		            'csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|Right_arm_twists|jt_drv_arm_upper_R_null|ac_arm_upper_R_TWIST1_grp|ac_arm_upper_R_TWIST1.rotate',

		            'csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|Right_arm_twists|jt_drv_arm_upper_R_null|jt_drv_arm_lower_R_null|ac_arm_lower_R_TWIST_grp|ac_arm_lower_R_TWIST.rotate',
		            'csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|Right_arm_twists|jt_drv_arm_upper_R_null|jt_drv_arm_lower_R_null|ac_arm_lower_R_TWIST1_grp|ac_arm_lower_R_TWIST1.rotate',

		            #left leg
		            'csgo_character|setup|Left_leg_rig|Left_leg_TWISTS|leg_upper_L_TWIST_grp|leg_upper_L_TWIST.rotate',
		            'csgo_character|setup|Left_leg_rig|Left_leg_TWISTS|leg_upper_L_TWIST1_grp|leg_upper_L_TWIST1.rotate',
		            #right leg
		            'csgo_character|setup|Right_leg_rig|Right_leg_TWISTS|leg_upper_R_TWIST_grp|leg_upper_R_TWIST.rotate',
		            'csgo_character|setup|Right_leg_rig|Right_leg_TWISTS|leg_upper_R_TWIST1_grp|leg_upper_R_TWIST1.rotate',




		        ]






		        #skeleton dats #######################################################################

		        #chld skeleton data
		        LIST_SKELETON_CSGO_DATA = [       

		            'csgo_character|your_skeleton|pelvis',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3',


		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|neck_0',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|neck_0|head_0',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R',


		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L',


		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R',


		        ]

		        #skeleton legs list

		        LIST_SKELETON_LEGS = [

		            'csgo_character|your_skeleton|pelvis|leg_upper_L',
		            'csgo_character|your_skeleton|pelvis|leg_upper_L|leg_lower_L',
		            'csgo_character|your_skeleton|pelvis|leg_upper_L|leg_lower_L|ankle_L',
		            'csgo_character|your_skeleton|pelvis|leg_upper_L|leg_lower_L|ankle_L|ball_L',

		            'csgo_character|your_skeleton|pelvis|leg_upper_R',
		            'csgo_character|your_skeleton|pelvis|leg_upper_R|leg_lower_R',
		            'csgo_character|your_skeleton|pelvis|leg_upper_R|leg_lower_R|ankle_R',
		            'csgo_character|your_skeleton|pelvis|leg_upper_R|leg_lower_R|ankle_R|ball_R',



		        ]

		        #skeleton finger list


		        LEFT_FINGERS_SKELETON = [

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_ring_meta_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_ring_meta_L|finger_ring_0_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_ring_meta_L|finger_ring_0_L|finger_ring_1_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_ring_meta_L|finger_ring_0_L|finger_ring_1_L|finger_ring_2_L.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_thumb_0_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_thumb_0_L|finger_thumb_1_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_thumb_0_L|finger_thumb_1_L|finger_thumb_2_L.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_index_meta_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_index_meta_L|finger_index_0_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_index_meta_L|finger_index_0_L|finger_index_1_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_index_meta_L|finger_index_0_L|finger_index_1_L|finger_index_2_L.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_pinky_meta_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_pinky_meta_L|finger_pinky_0_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_pinky_meta_L|finger_pinky_0_L|finger_pinky_1_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_pinky_meta_L|finger_pinky_0_L|finger_pinky_1_L|finger_pinky_2_L.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_middle_meta_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_middle_meta_L|finger_middle_0_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_middle_meta_L|finger_middle_0_L|finger_middle_1_L.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|hand_L|finger_middle_meta_L|finger_middle_0_L|finger_middle_1_L|finger_middle_2_L.rotate',    

		        ]





		        RIGHT_FINGERS_SKELETON = [
		            

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_ring_meta_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_ring_meta_R|finger_ring_0_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_ring_meta_R|finger_ring_0_R|finger_ring_1_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_ring_meta_R|finger_ring_0_R|finger_ring_1_R|finger_ring_2_R.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_thumb_0_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_thumb_0_R|finger_thumb_1_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_thumb_0_R|finger_thumb_1_R|finger_thumb_2_R.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_index_meta_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_index_meta_R|finger_index_0_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_index_meta_R|finger_index_0_R|finger_index_1_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_index_meta_R|finger_index_0_R|finger_index_1_R|finger_index_2_R.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_pinky_meta_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_pinky_meta_R|finger_pinky_0_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_pinky_meta_R|finger_pinky_0_R|finger_pinky_1_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_pinky_meta_R|finger_pinky_0_R|finger_pinky_1_R|finger_pinky_2_R.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_middle_meta_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_middle_meta_R|finger_middle_0_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_middle_meta_R|finger_middle_0_R|finger_middle_1_R.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|hand_R|finger_middle_meta_R|finger_middle_0_R|finger_middle_1_R|finger_middle_2_R.rotate',

		        ]







		        #twists manul skeleton

		        LONG_TWIST_SKELETON = [
		            #left arm skeleton
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_upper_L_TWIST.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_upper_L_TWIST1.rotate',


		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|arm_lower_L_TWIST.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_L|arm_upper_L|arm_lower_L|arm_lower_L_TWIST1.rotate',


		            #left arm skeleton
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_upper_R_TWIST.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_upper_R_TWIST1.rotate',

		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|arm_lower_R_TWIST.rotate',
		            'csgo_character|your_skeleton|pelvis|spine_0|spine_1|spine_2|spine_3|clavicle_R|arm_upper_R|arm_lower_R|arm_lower_R_TWIST1.rotate',

		            #right arm skeleton
		            

		            #left leg skeleton
		            'csgo_character|your_skeleton|pelvis|leg_upper_L|leg_upper_L_TWIST.rotate',
		            'csgo_character|your_skeleton|pelvis|leg_upper_L|leg_upper_L_TWIST1.rotate',

		            #right leg skeleton
		            'csgo_character|your_skeleton|pelvis|leg_upper_R|leg_upper_R_TWIST.rotate',
		            'csgo_character|your_skeleton|pelvis|leg_upper_R|leg_upper_R_TWIST1.rotate',





		        ]



		        #add constrains or connect attr

		        #character loop




		        #ogbje_parent = 'nurbsCircle1' + '.rotateX'   # ot kogo
		        #object_chldr = 'locator1|locator2' + '.rotateX'  # komy


		        #mc.connectAttr( ogbje_parent, object_chldr )


		        #costrain parent methond
		        
		        #spine neck clavilse loop
		        for spine_arm_clavilse in range(0,len(LIST_RIG_DATA)):
		            #parent constrain
		            mc.parentConstraint(LIST_RIG_DATA[spine_arm_clavilse], LIST_SKELETON_CSGO_DATA[spine_arm_clavilse], maintainOffset = True)    


		        #loop leg
		        for cotroller in range(0,len(LEG_RIG_DATA)): 

		            mc.parentConstraint(LEG_RIG_DATA[cotroller], LIST_SKELETON_LEGS[cotroller], maintainOffset = True)


		        #finger to connected rotation method

		        for left in range(0,len(LEFT_FINGERS_RIG)):
		            mc.connectAttr( LEFT_FINGERS_RIG[left] , LEFT_FINGERS_SKELETON[left] )
		        

		        for right in range(0,len(LEFT_FINGERS_RIG)):
		            mc.connectAttr( RIGHT_FINGERS_RIG[right] , RIGHT_FINGERS_SKELETON[right] )


		        #twists loop
		        for twist in range(0,len(LONG_TWIST_RIG)):
		            mc.connectAttr( LONG_TWIST_RIG[twist] , LONG_TWIST_SKELETON[twist] )



		        #invisible skeleton
		        mc.setAttr('csgo_character|your_skeleton.visibility', 0)

		        #delete from RAM data rig 
		        del LIST_RIG_DATA
		        del LEFT_FINGERS_RIG
		        del RIGHT_FINGERS_RIG
		        del LEG_RIG_DATA

		        #delete from RAM data skeleton 
		        del LIST_SKELETON_CSGO_DATA
		        del LIST_SKELETON_LEGS
		        del LEFT_FINGERS_SKELETON
		        del RIGHT_FINGERS_SKELETON
		        
		        #create layer mesh
		        ln = 'csgo_mesh'

		        path_for_layer = 'csgo_character|mesh'
		        
		        mc.createDisplayLayer(path_for_layer, name = ln)

		        
		        cmds.setAttr( '%s.displayType' % ln, 2)



		        # Enable the layer's color.
		        cmds.setAttr('%s.color' % ln, True)

		        # Enable the layer's color to use rgb.
		        cmds.setAttr('%s.overrideRGBColors' % ln, True)

		        # Set the layer's color with values between 0-1.
		        cmds.setAttr('%s.overrideColorRGB' % ln, 0, 1, 0)





		        #export .ma\
		        #name_save_fuile = FOLDER_EXPORT_MA_FILES_RIGS + import_model.replace('.qc.ModelFromBlender.fbx', '.mb')
		        mc.file(save_path + '/' + name_file.replace('.ModelFromBlender.fbx', '') + name_maya_export_file,exportAll = 1, ignoreVersion = True ,force = 1, type = 'mayaBinary')
		        mel.eval('file -f -new')


		    del fbx_path, save_path, file_rig_name, list_paths_fbx_models, mode_use
		    mel.eval('file -f -new')

		    self.Final = True
		   	#open restart dialog

		elif mode_use == 1:
			#start for weapons
			self.generate_weapons()

		elif mode_use == 2:
			#start for pov
			self.generate_weapons()







	def ghehehe(self):
		print('neponel')






		
	def generate_weapons(self, list_paths, save_path):
		print('weaponew')
		def WeaponBuilder(fbx_folder, mb_save_folder):
			pass
		pass

	def generate_pov(self, list_path, save_path):
		pass

