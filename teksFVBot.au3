#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
Opt("GUIOnEventMode", 1)
#Region ### START Koda GUI section ### Form=c:\folder\dev\teksfvbot\frmmain.kxf
$frmMain = GUICreate("tek's FarmVille Bot", 468, 156, 263, 166)
GUISetOnEvent($GUI_EVENT_CLOSE, "frmMainClose")
GUISetOnEvent($GUI_EVENT_MINIMIZE, "frmMainMinimize")
$LabelStats = GUICtrlCreateLabel("Status:", 0, 138, 37, 17)
$lblStatus = GUICtrlCreateLabel("Ready                                                              ", 40, 138, 288, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0x00FF00)
$TabView = GUICtrlCreateTab(0, 0, 465, 137)
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$tsGeneral = GUICtrlCreateTabItem("General")
$grpHome = GUICtrlCreateGroup("Home", 7, 26, 153, 73)
$Label1 = GUICtrlCreateLabel("X:", 13, 71, 14, 17, $SS_RIGHT)
$txtHomeX = GUICtrlCreateInput("0", 29, 67, 49, 21)
$Label2 = GUICtrlCreateLabel("Y:", 85, 71, 14, 17, $SS_RIGHT)
$txtHomeY = GUICtrlCreateInput("0", 101, 67, 49, 21)
$cmbHome = GUICtrlCreateCombo("", 16, 43, 137, 25)
GUICtrlSetData(-1, "Start Tile|Top-Left|Top-Right|Bottom-Left|Bottom-Right", "Start Tile")
GUICtrlSetOnEvent(-1, "cmbHomeChange")
$txtTopLeftX = GUICtrlCreateInput("0", 29, 67, 49, 21)
$txtTopLeftY = GUICtrlCreateInput("0", 101, 67, 49, 21)
$txtTopRightX = GUICtrlCreateInput("0", 29, 67, 49, 21)
$txtTopRightY = GUICtrlCreateInput("0", 101, 67, 49, 21)
$txtBottomLeftX = GUICtrlCreateInput("0", 29, 67, 49, 21)
$txtBottomLeftY = GUICtrlCreateInput("0", 101, 67, 49, 21)
$txtBottomRightX = GUICtrlCreateInput("0", 29, 67, 49, 21)
$txtBottomRightY = GUICtrlCreateInput("0", 101, 67, 49, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$grpFarm = GUICtrlCreateGroup("Farm Size", 163, 26, 81, 73)
$Label3 = GUICtrlCreateLabel("Rows:", 168, 47, 34, 17, $SS_RIGHT)
$txtSizeRows = GUICtrlCreateInput("20", 204, 43, 33, 21)
GUICtrlSetTip(-1, "Rows go from left to right, low to high")
$Label4 = GUICtrlCreateLabel("Cols:", 172, 71, 27, 17, $SS_RIGHT)
$txtSizeCols = GUICtrlCreateInput("20", 204, 67, 33, 21)
GUICtrlSetTip(-1, "Columns go from left to right, high to low")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$grpTreeLocations = GUICtrlCreateGroup("Tree Locations", 339, 26, 117, 91)
$chkTreeTopLeft = GUICtrlCreateCheckbox("Farm Top-Left", 344, 43, 97, 17)
$chkTreeBottomRight = GUICtrlCreateCheckbox("Farm Bottom-Right", 344, 91, 107, 17)
$chkTreeBottomLeft = GUICtrlCreateCheckbox("Farm Bottom-Left", 344, 75, 105, 17)
$chkTreeTopRight = GUICtrlCreateCheckbox("Farm Top-Right", 344, 59, 97, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$grpSettings = GUICtrlCreateGroup("Control", 247, 26, 89, 91)
$txtSpeed = GUICtrlCreateInput("9", 298, 43, 33, 21)
$Label7 = GUICtrlCreateLabel("Speed:", 259, 45, 38, 17)
$txtLoops = GUICtrlCreateInput("1", 298, 67, 33, 21)
$Label8 = GUICtrlCreateLabel("Loops:", 259, 69, 36, 17)
$txtDelay = GUICtrlCreateInput("0", 298, 91, 33, 21)
$Label9 = GUICtrlCreateLabel("Delay:", 258, 93, 34, 17, $SS_RIGHT)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$chkTestMode = GUICtrlCreateCheckbox("Test Mode", 8, 103, 73, 17)
$chkStayOnTop = GUICtrlCreateCheckbox("Stay On Top", 88, 103, 81, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "chkStayOnTopClick")
$tsOffsets = GUICtrlCreateTabItem("Offsets")
$grpOffsets = GUICtrlCreateGroup("Offsets", 6, 26, 161, 81)
$lblOffsetY = GUICtrlCreateLabel("Y:", 81, 76, 14, 17, $SS_RIGHT)
$txtOffsetTreeY = GUICtrlCreateInput("3", 96, 74, 33, 21)
$lblOffsetX = GUICtrlCreateLabel("X:", 24, 76, 14, 17, $SS_RIGHT)
$txtOffsetTreeX = GUICtrlCreateInput("6", 40, 74, 33, 21)
$txtOffsetMenuX = GUICtrlCreateInput("58", 40, 74, 33, 21)
$txtOffsetMenuY = GUICtrlCreateInput("48", 96, 74, 33, 21)
$txtOffsetSickleLightX = GUICtrlCreateInput("30", 40, 74, 33, 21)
$txtOffsetSickleLightY = GUICtrlCreateInput("9", 96, 74, 33, 21)
$cmbOffset = GUICtrlCreateCombo("", 16, 45, 137, 25)
GUICtrlSetData(-1, "Tiles|Trees|Menu|Sickle Light|Sickle Dark|Sickle Grey", "Tiles")
GUICtrlSetOnEvent(-1, "cmbOffsetChange")
$txtOffsetTileX = GUICtrlCreateInput("25", 40, 74, 33, 21)
$txtOffsetTileY = GUICtrlCreateInput("12", 96, 74, 33, 21)
$txtOffsetSickleDarkX = GUICtrlCreateInput("30", 40, 74, 33, 21)
$txtOffsetSickleDarkY = GUICtrlCreateInput("4", 96, 74, 33, 21)
$txtOffsetSickleGreyX = GUICtrlCreateInput("17", 40, 74, 33, 21)
$txtOffsetSickleGreyY = GUICtrlCreateInput("27", 96, 74, 33, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$grpColors = GUICtrlCreateGroup("Colors", 171, 26, 289, 105)
$Label16 = GUICtrlCreateLabel("Menu:", 180, 42, 34, 17)
$txtColorMenu = GUICtrlCreateInput("0xFFFFFF", 180, 59, 65, 21)
GUICtrlSetOnEvent(-1, "txtColorMenuChange")
$Label15 = GUICtrlCreateLabel("Sickle Light:", 180, 84, 62, 17)
$txtColorSickleLight = GUICtrlCreateInput("0x13A89E", 180, 101, 65, 21)
GUICtrlSetOnEvent(-1, "txtColorSickleLightChange")
$Label17 = GUICtrlCreateLabel("Sickle Dark:", 271, 84, 62, 17)
$txtColorSickleDark = GUICtrlCreateInput("0x0C7D76", 271, 101, 65, 21)
GUICtrlSetOnEvent(-1, "txtColorSickleDarkChange")
$Label18 = GUICtrlCreateLabel("Sickle Grey:", 367, 84, 61, 17)
$txtColorSickleGrey = GUICtrlCreateInput("0xD1D2D4", 366, 101, 65, 21)
GUICtrlSetOnEvent(-1, "txtColorSickleGreyChange")
$btnColorMenu = GUICtrlCreateButton("", 248, 61, 17, 17)
$btnColorSickleGrey = GUICtrlCreateButton("", 435, 103, 17, 17)
$btnColorSickleLight = GUICtrlCreateButton("", 248, 103, 17, 17)
$btnColorSickleDark = GUICtrlCreateButton("", 339, 103, 17, 17)
$Label5 = GUICtrlCreateLabel("Menu Selected:", 271, 42, 79, 17)
$txtColorMenuSelected = GUICtrlCreateInput("0xB2E1FF", 271, 59, 65, 21)
GUICtrlSetOnEvent(-1, "txtColorMenuSelectedChange")
$btnColorMenuSelected = GUICtrlCreateButton("", 339, 61, 17, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$tsSettings = GUICtrlCreateTabItem("Settings")
$txtMatchTitle = GUICtrlCreateInput("Adobe Flash Player", 16, 48, 201, 21)
GUICtrlSetTip(-1, "Leave blank to disable")
$Label13 = GUICtrlCreateLabel("Match Active Window:", 16, 31, 112, 17)
$Label14 = GUICtrlCreateLabel("Perhaps make hotkeys configurable here?", 248, 40, 203, 17)
$chkAvoidMenus = GUICtrlCreateCheckbox("Try to avoid menus", 16, 80, 113, 17)
GUICtrlSetTip(-1, "Will not click if it is over a menu accidentally -- doesn't work well")
$chkCheckForSickle = GUICtrlCreateCheckbox("Check for sickle before harvesting", 16, 104, 185, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Will only click if sickle is shown for tree harvesting")
$chkTrapMouse = GUICtrlCreateCheckbox("Trap mouse while active", 216, 104, 137, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Keep mouse from moving while running")
$chkAvoidCenter = GUICtrlCreateCheckbox("Don't Click Center", 216, 80, 105, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Don't click the middle of the screen where your character should be.")
$tsProfiles = GUICtrlCreateTabItem("Profiles")
$cmbProfiles = GUICtrlCreateCombo("", 24, 40, 185, 25)
GUICtrlSetOnEvent(-1, "cmbProfilesChange")
$btnSave = GUICtrlCreateButton("Save", 40, 64, 73, 25)
GUICtrlSetOnEvent(-1, "btnSaveClick")
$btnSaveAs = GUICtrlCreateButton("Save As", 120, 64, 73, 25)
GUICtrlSetOnEvent(-1, "btnSaveAsClick")
$btnDelete = GUICtrlCreateButton("Delete", 216, 40, 73, 25)
GUICtrlSetOnEvent(-1, "btnDeleteClick")
$tsAbout = GUICtrlCreateTabItem("About")
$lblProgBy = GUICtrlCreateLabel("Programmed by:", 16, 40, 80, 17)
$lblWebsite = GUICtrlCreateLabel("http://mantis.sytes.net/~tekproxy/teksFVBot/", 32, 64, 221, 17)
GUICtrlSetFont(-1, 8, 400, 4, "MS Sans Serif")
GUICtrlSetColor(-1, 0x0000FF)
GUICtrlSetTip(-1, "Open website")
GUICtrlSetCursor (-1, 0)
GUICtrlSetOnEvent(-1, "lblWebsiteClick")
$lblProgrammer = GUICtrlCreateLabel("Caleb 'tekproxy' Fenton", 96, 40, 114, 17)
GUICtrlSetFont(-1, 8, 400, 4, "MS Sans Serif")
GUICtrlSetColor(-1, 0x0000FF)
GUICtrlSetTip(-1, "mailto:tekproxy@gmail.com")
GUICtrlSetCursor (-1, 0)
GUICtrlSetOnEvent(-1, "lblProgrammerClick")
$btnUpdate = GUICtrlCreateButton("Check for Update", 320, 40, 105, 33)
GUICtrlSetOnEvent(-1, "btnUpdateClick")
$btnChangeLog = GUICtrlCreateButton("Change Log", 320, 88, 105, 33)
GUICtrlSetOnEvent(-1, "btnChangeLogClick")
$tsDebug = GUICtrlCreateTabItem("Debug")
$chkEnableDebug = GUICtrlCreateCheckbox("Enable", 16, 32, 57, 17)
$edtDebug = GUICtrlCreateEdit("", 80, 32, 377, 97)
GUICtrlSetData(-1, "")
$btnClearDebug = GUICtrlCreateButton("Clear", 8, 96, 65, 25)
GUICtrlSetOnEvent(-1, "btnClearDebugClick")
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


; TODO
; Add profiles for default farms for all sizes
; Consider making it impossible to start until red error alerts are dealt with
; Consider adding global to global vars
; Check for sickle only applies to tree farming
; Check for farm tool while farming plow or sickle
; Fix tab order on form
; Add option to auto-check for update

; Should probably put this above GUISetSTate(@SW_SHOW), but whatever
_Singleton("tek's FarmVille Bot")

Opt("TrayMenuMode", 1)

$TRAY_QUIT  = TrayCreateItem("Quit")
TraySetState()
TraySetClick(8) ; Only secondary mouse button shows menu

#Include <GuiComboBox.au3>
#include <GuiToolbar.au3>
#include <Constants.au3>
#include <Misc.au3>
#include "UnixTime.au3"

; Set them hotkeys!
HotKeySet("{HOME}", "SetHome")
HotKeySet("{INSERT}", "ToggleFarm")
HotKeySet("{DELETE}", "ToggleTrees")
HotKeySet("{PGUP}", "PrevHome")
HotKeySet("{PGDN}", "NextHome")
;HotKeySet("{PGDN}", "ToggleExamine")
;HotKeySet("{PGDN}", "TestSomething")

; Initialize some global vars
$VERSION = "1.1"
$FORM_TITLE = "tek's FarmVille Bot v" & $VERSION
$SETTINGS_INI = "settings.ini"
$CTRL_CUR_HOME_X = 0
$CTRL_CUR_HOME_y = 0

$FARM_RUNNING = False
$TREE_RUNNING = False
$NEXT_FARM_TIME = 0
$FARM_LOOP = 0
$NEXT_TREE = 0
$TREE_LOOP = 0
$NEXT_CHECK_TIME = 0

; Settings to control reference mappings
; Makes saving/loading with INI very easy
; SettingName, ControlID, 1 if checkbox/radial, 0 otherwise
Dim $aSettingsMap[46][3] = [ _
	[ "HomeX", $txtHomeX, 0 ] _
	, [ "HomeY", $txtHomeY, 0 ] _
	, [ "TopLeftX", $txtTopLeftX, 0 ] _
	, [ "TopLeftY", $txtTopLeftY, 0 ] _
	, [ "TopRightX", $txtTopRightX, 0 ] _
	, [ "TopRightY", $txtTopRightY, 0 ] _
	, [ "BottomLeftX", $txtBottomLeftX, 0 ] _
	, [ "BottomLeftY", $txtBottomLeftY, 0 ] _
	, [ "BottomRightX", $txtBottomRightX, 0 ] _
	, [ "BottomRightY", $txtBottomRightY, 0 ] _
	, [ "HomeSelected", $cmbHome, 0 ] _
	, [ "FarmSizeRows", $txtSizeRows, 0 ] _
	, [ "FarmSizeCols", $txtSizeCols, 0 ] _
	, [ "Speed", $txtSpeed, 0 ] _
	, [ "FarmLoops", $txtLoops, 0 ] _
	, [ "FarmDelay", $txtDelay, 0 ] _
	, [ "FarmTreeTopLeft", $chkTreeTopLeft, 1 ] _
	, [ "FarmTreeTopRight", $chkTreeTopRight, 1 ] _
	, [ "FarmTreeBottomLeft", $chkTreeBottomLeft, 1 ] _
	, [ "FarmTreeBottomRight", $chkTreeBottomRight, 1 ] _
	, [ "TileOffsetX", $txtOffsetTileX, 0 ] _
	, [ "TileOffsetY", $txtOffsetTileY, 0 ] _
	, [ "TreeOffsetX", $txtOffsetTreeX, 0 ] _
	, [ "TreeOffsetY", $txtOffsetTreeY, 0 ] _
	, [ "MenuOffsetX", $txtOffsetMenuX, 0 ] _
	, [ "MenuOffsetY", $txtOffsetMenuY, 0 ] _
	, [ "SickleLightOffsetX", $txtOffsetSickleLightX, 0 ] _
	, [ "SickleLightOffsetY", $txtOffsetSickleLightY, 0 ] _
	, [ "SickleDarkOffsetX", $txtOffsetSickleDarkX, 0 ] _
	, [ "SickleDarkOffsetY", $txtOffsetSickleDarkY, 0 ] _
	, [ "SickleGreyOffsetX", $txtOffsetSickleGreyX, 0 ] _
	, [ "SickleGreyOffsetY", $txtOffsetSickleGreyY, 0 ] _
	, [ "OffsetSelected", $cmbOffset, 0 ] _
	, [ "ColorMenu", $txtColorMenu, 0 ] _
	, [ "ColorMenuSelected", $txtColorMenuSelected, 0 ] _	
	, [ "ColorSickleLight", $txtColorSickleLight, 0 ] _
	, [ "ColorSickleDark", $txtColorSickleDark, 0 ] _
	, [ "ColorSickleGrey", $txtColorSickleGrey, 0 ] _
	, [ "TestMode", $chkTestMode, 1 ] _	
	, [ "StayOnTop", $chkStayOnTop, 1 ] _	
	, [ "AvoidCenter", $chkAvoidCenter, 1 ] _	
	, [ "CheckForSickle", $chkCheckForSickle, 1 ] _	
	, [ "AvoidMenus", $chkAvoidMenus, 1 ] _	
	, [ "EnableDebug", $chkEnableDebug, 1 ] _	
	, [ "TrapMouse", $chkTrapMouse, 1 ] _	
	, [ "MatchWindowTitle", $txtMatchTitle, 0 ] _	
]

; Load them thar settings!
LoadSettings()

While 1
    $tmsg = TrayGetMsg()
    Switch $tmsg
        Case $TRAY_EVENT_PRIMARYDOUBLE
            If BitAND(WinGetState($frmMain), 16) Then ; 16 = minimized
                GUISetState(@SW_RESTORE)
                _ToolbarButtonState($frmMain, 1)
			Else
				GUISetState(@SW_MINIMIZE)
				_ToolbarButtonState($frmMain, 0)
            EndIf
		Case $TRAY_QUIT
			Exit 0
    EndSwitch

	; Little hack to keep the above loop more responsive
	If _TimeGetStamp() < $NEXT_CHECK_TIME Then ContinueLoop
	$NEXT_CHECK_TIME = _TimeGetStamp() + 1
	
	If Not $FARM_RUNNING And Not $TREE_RUNNING Then
		If (GUICtrlRead($txtHomeX) == 0 Or GUICtrlRead($txtHomeY) == 0) Then
			GUICtrlSetColor($lblStatus, "0xFF0000")
			GUICtrlSetData($lblStatus, "Set Home X,Y")
		ElseIf GUICtrlRead($chkTreeTopLeft) == $GUI_CHECKED And GUICtrlRead($txtTopLeftX) == 0 And GUICtrlRead($txtTopLeftY) == 0 Then
			GUICtrlSetColor($lblStatus, "0xFF0000")
			GUICtrlSetData($lblStatus, "Set Top-Left X,Y")
		ElseIf GUICtrlRead($chkTreeTopRight) == $GUI_CHECKED And GUICtrlRead($txtTopRightX) == 0 And GUICtrlRead($txtTopRightY) == 0 Then
			GUICtrlSetColor($lblStatus, "0xFF0000")
			GUICtrlSetData($lblStatus, "Set Top-Right X,Y")
		ElseIf GUICtrlRead($chkTreeBottomLeft) == $GUI_CHECKED And GUICtrlRead($txtBottomLeftX) == 0 And GUICtrlRead($txtBottomLeftY) == 0 Then
			GUICtrlSetColor($lblStatus, "0xFF0000")
			GUICtrlSetData($lblStatus, "Set Bottom-Left X,Y")
		ElseIf GUICtrlRead($chkTreeBottomRight) == $GUI_CHECKED And GUICtrlRead($txtBottomRightX) == 0 And GUICtrlRead($txtBottomRightY) == 0 Then
			GUICtrlSetColor($lblStatus, "0xFF0000")
			GUICtrlSetData($lblStatus, "Set Bottom-Right X,Y")
		Else
			GUICtrlSetColor($lblStatus, "0x11AA11")
			GUICtrlSetData($lblStatus, "Ready")
		EndIf
	Else
		If $FARM_RUNNING Then
			GUICtrlSetColor($lblStatus, "0x0055BB")
			GUICtrlSetData($lblStatus, "Farming, loop " & ($FARM_LOOP+1) & "/" & GUICtrlRead($txtLoops))
		ElseIf $TREE_RUNNING Then
			GUICtrlSetColor($lblStatus, "0x0055BB")
			GUICtrlSetData($lblStatus, "Tree farming, loop " & ($TREE_LOOP+1) & "/1")
		EndIf
	EndIf
	
	If $FARM_RUNNING And $NEXT_FARM_TIME <= _TimeGetStamp() And Not $TREE_RUNNING Then
		If $FARM_LOOP < GUICtrlRead($txtLoops) Then
			$NEXT_FARM_TIME = _TimeGetStamp() + GUICtrlRead($txtDelay)
			$FARM_LOOP += 1
			
			DoFarm();

			; untrap mouse if it may be trapped
			If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap()
		Else
			$FARM_RUNNING = False
			$FARM_LOOP = 0
		EndIf
	EndIf
	
	If $TREE_RUNNING And Not $FARM_RUNNING Then
		; In theory one could make tree farming loop, but that would require a lot of work
		; detecting and overcoming problems of desyncing from server and friend help requests
		If $TREE_LOOP < 1 Then
			$TREE_LOOP += 1
		
			DoTrees();

			; untrap mouse if it may be trapped
			If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap()
		Else
			$TREE_RUNNING = False
			$TREE_LOOP = 0
		EndIf
	EndIf
	
	; Full-screen FarmVille over-rides stay on top, so do it again if we need to
	If GUICtrlRead($chkStayOnTop) == $GUI_CHECKED And IsFarmVilleActive(True) Then
		WinSetOnTop($frmMain, "", 1)
	EndIf
WEnd

Func LoadSettings()
	$iniSections = IniReadSectionNames($SETTINGS_INI)
	$defaultFound = 0

	If @Error Then
		; File probably doesn't exist. Create one with default.
		SaveSettings("Default")
		$iniSections = IniReadSectionNames($SETTINGS_INI)
	EndIf
	
	; Destroy previous list with seperator char first
	$profileNames = ""
	For $i = 1 To $iniSections[0]
		$profileNames = $profileNames & "|" & $iniSections[$i]
		If $iniSections[$i] == "Default" Then $defaultFound = 1
	Next

	; Always include default, even if user deleted it from the INI
	If Not $defaultFound Then $profileNames = "|Default" & $profileNames
	
	; Set drop down list and make loaded one default
	GUICtrlSetData($cmbProfiles, $profileNames)
	GUICtrlSetData($cmbProfiles, GetLastLoaded())
	
	; Load settings of selected profile
	LoadProfile(GUICtrlRead($cmbProfiles))
	
	; Setup extra stuff
	If GUICtrlRead($chkStayOnTop) == $GUI_CHECKED Then WinSetOnTop($frmMain, "", 1)
EndFunc

Func LoadProfile($profileName)
	$settings = IniReadSection($SETTINGS_INI, $profileName)
	
	If @Error And $profileName <> "Default" Then
		MsgBox(0, "Error Loading Profile", "There was a strange error loading profile " & $profileName & ".")
		Return
	EndIf
	
	For $i = 0 To $settings[0][0]
		For $n = 0 To UBound($aSettingsMap) - 1
			If $aSettingsMap[$n][0] == $settings[$i][0] Then
				; 0 = normal control, 1 = checkbox / something needs SetState
				If $aSettingsMap[$n][2] == 0 Then
					GUICtrlSetData($aSettingsMap[$n][1], $settings[$i][1])
				Else
					GUICtrlSetState($aSettingsMap[$n][1], $settings[$i][1])
				EndIf
				
				ExitLoop
			EndIf
		Next
	Next
	
	cmbHomeChange()
	cmbOffsetChange()
	UpdateColorBoxes()
	
	WinSetTitle($frmMain, "", $FORM_TITLE & " - " & $profileName) 
	SetLastLoaded($profileName)
EndFunc

Func SaveSettings($profileName)
	; Build settings array using our nice settings map
	Dim $aSettings[UBound($aSettingsMap)][2]
	
	For $i = 0 To UBound($aSettingsMap) - 1
		$aSettings[$i][0] = $aSettingsMap[$i][0]
		$aSettings[$i][1] = GUICtrlRead($aSettingsMap[$i][1])
	Next
	
	IniWriteSection($SETTINGS_INI, $profileName, $aSettings, 0)
EndFunc

Func SetLastLoaded($profileName)
	; Save name in Default -> LastProfile
	$result = IniWrite($SETTINGS_INI, "Default", "LastProfile", $profileName)
	
	If $result <> 1 Then
		MsgBox(0x30, "Error Saving Profile", "Unable to save profile. Perhaps it is read only or was eaten by a monster?")
	EndIf
EndFunc

Func GetLastLoaded()
	$profileName = IniRead($SETTINGS_INI, "Default", "LastProfile", "Default")

	Return $profileName
EndFunc

Func DeleteProfile($profileName)
	IniDelete($SETTINGS_INI, $profileName)
	SetLastLoaded("Default")
	LoadSettings()
EndFunc

Func cmbProfilesChange()
	; difficult to catch event before change
	; so we just assume the user didn't want to save
	SetLastLoaded(GUICtrlRead($cmbProfiles))
	LoadSettings()
EndFunc

Func btnSaveAsClick()
	$newName = InputBox("Save As", "Save profile as:")
	
	If @Error Or $newName = "" Then Return
	
	SaveSettings($newName)
	SetLastLoaded($newName)
	LoadSettings()
EndFunc

Func btnSaveClick()
	If GetLastLoaded() == "Default" Then
		btnSaveAsClick()
		Return
	EndIf

	SaveSettings(GetLastLoaded())
EndFunc

Func btnDeleteClick()
	If GUICtrlRead($cmbProfiles) == "Default" Then Return
	
	$confirm = MsgBox(0x24, "Confirm", "Are you sure you want to delete " & GUICtrlRead($cmbProfiles) & "?")
	
	If $confirm = 6 Then DeleteProfile(GUICtrlRead($cmbProfiles))
EndFunc


Func btnChangeLogClick()
	; In case you forgot, $lblWebsite has our website URL
	ShellExecute(GUICtrlRead($lblWebsite) & "changelog.txt")
EndFunc

Func btnUpdateClick()
	; Check for updates! Yay!
	ShellExecute(GUICtrlRead($lblWebsite) & "index.php?o=update&v=" & $VERSION)
EndFunc

Func cmbHomeChange()
	GUICtrlSetState($txtHomeX, $GUI_HIDE)
	GUICtrlSetState($txtHomeY, $GUI_HIDE)
	GUICtrlSetState($txtTopLeftX, $GUI_HIDE)
	GUICtrlSetState($txtTopLeftY, $GUI_HIDE)
	GUICtrlSetState($txtTopRightX, $GUI_HIDE)
	GUICtrlSetState($txtTopRightY, $GUI_HIDE)
	GUICtrlSetState($txtBottomLeftX, $GUI_HIDE)
	GUICtrlSetState($txtBottomLeftY, $GUI_HIDE)
	GUICtrlSetState($txtBottomRightX, $GUI_HIDE)
	GUICtrlSetState($txtBottomRightY, $GUI_HIDE)

	; Yes, the global
	$CTRL_CUR_HOME_X = 0
	$CTRL_CUR_HOME_Y = 0
	Switch GUICtrlRead($cmbHome)
		Case "Start Tile"
			$CTRL_CUR_HOME_X = $txtHomeX
			$CTRL_CUR_HOME_Y = $txtHomeY
		Case "Top-Left"
			$CTRL_CUR_HOME_X = $txtTopLeftX
			$CTRL_CUR_HOME_Y = $txtTopLeftY
		Case "Top-Right"
			$CTRL_CUR_HOME_X = $txtTopRightX
			$CTRL_CUR_HOME_Y = $txtTopRightY
		Case "Bottom-Left"
			$CTRL_CUR_HOME_X = $txtBottomLeftX
			$CTRL_CUR_HOME_Y = $txtBottomLeftY
		Case "Bottom-Right"
			$CTRL_CUR_HOME_X = $txtBottomRightX
			$CTRL_CUR_HOME_Y = $txtBottomRightY
	EndSwitch

	GUICtrlSetState($CTRL_CUR_HOME_X, $GUI_SHOW)
	GUICtrlSetState($CTRL_CUR_HOME_Y, $GUI_SHOW)
EndFunc

Func cmbOffsetChange()
	GUICtrlSetState($txtOffsetTileX, $GUI_HIDE)
	GUICtrlSetState($txtOffsetTileY, $GUI_HIDE)
	GUICtrlSetState($txtOffsetTreeX, $GUI_HIDE)
	GUICtrlSetState($txtOffsetTreeY, $GUI_HIDE)
	GUICtrlSetState($txtOffsetMenuX, $GUI_HIDE)
	GUICtrlSetState($txtOffsetMenuY, $GUI_HIDE)
	GUICtrlSetState($txtOffsetSickleLightX, $GUI_HIDE)
	GUICtrlSetState($txtOffsetSickleLightY, $GUI_HIDE)
	GUICtrlSetState($txtOffsetSickleDarkX, $GUI_HIDE)
	GUICtrlSetState($txtOffsetSickleDarkY, $GUI_HIDE)
	GUICtrlSetState($txtOffsetSickleGreyX, $GUI_HIDE)
	GUICtrlSetState($txtOffsetSickleGreyY, $GUI_HIDE)

	$ctrlX = 0
	$ctrlY = 0
	Switch GUICtrlRead($cmbOffset)
		Case "Tiles"
			$ctrlX = $txtOffsetTileX
			$ctrlY = $txtOffsetTileY
		Case "Trees"
			$ctrlX = $txtOffsetTreeX
			$ctrlY = $txtOffsetTreeY
		Case "Menu"
			$ctrlX = $txtOffsetMenuX
			$ctrlY = $txtOffsetMenuY
		Case "Sickle Light"
			$ctrlX = $txtOffsetSickleLightX
			$ctrlY = $txtOffsetSickleLightY
		Case "Sickle Dark"
			$ctrlX = $txtOffsetSickleDarkX
			$ctrlY = $txtOffsetSickleDarkY
		Case "Sickle Grey"
			$ctrlX = $txtOffsetSickleGreyX
			$ctrlY = $txtOffsetSickleGreyY
	EndSwitch

	GUICtrlSetState($ctrlX, $GUI_SHOW)
	GUICtrlSetState($ctrlY, $GUI_SHOW)
EndFunc

Func frmMainMinimize()
	_ToolbarButtonState($frmMain, 0)
EndFunc

Func frmMainClose()
	btnSaveClick()
	Exit 0
EndFunc

Func chkStayOnTopClick()
	If GUICtrlRead($chkStayOnTop) == $GUI_CHECKED Then
		WinSetOnTop($frmMain, "", 1)
	Else
		WinSetOnTop($frmMain, "", 0)
	EndIf
EndFunc

Func lblProgrammerClick()
	; E-mail me!
	ShellExecute("mailto:tekproxy@gmail.com")
EndFunc

Func lblWebsiteClick()
	; Open website URL
	ShellExecute(GUICtrlRead($lblWebsite))
EndFunc

Func UpdateColorBoxes()
	GUICTrlSetBkColor($btnColorMenu, "0x" & Hex(GUICtrlRead($txtColorMenu), 6))
	GUICTrlSetBkColor($btnColorMenuSelected, "0x" & Hex(GUICtrlRead($txtColorMenuSelected), 6))
	GUICTrlSetBkColor($btnColorSickleLight, "0x" & Hex(GUICtrlRead($txtColorSickleLight), 6))
	GUICTrlSetBkColor($btnColorSickleDark, "0x" & Hex(GUICtrlRead($txtColorSickleDark), 6))
	GUICTrlSetBkColor($btnColorSickleGrey, "0x" & Hex(GUICtrlRead($txtColorSickleGrey), 6))
EndFunc

Func txtColorMenuChange()
	UpdateColorBoxes()
EndFunc

Func txtColorMenuSelectedChange()
	UpdateColorBoxes()
EndFunc

Func txtColorSickleDarkChange()
	UpdateColorBoxes()
EndFunc

Func txtColorSickleGreyChange()
	UpdateColorBoxes()
EndFunc

Func txtColorSickleLightChange()
	UpdateColorBoxes()
EndFunc

Func btnClearDebugClick()
	GUICtrlSetData($edtDebug, "")
EndFunc

Func AddDebug($text, $timeStamp = False, $newLine = True)
	; TODO - Add TimeStamp (for fun)
	If GUICtrlRead($chkEnableDebug) == $GUI_CHECKED Then
		If $newLine Then $text = $text & @CRLF 
		
		GUICtrlSetData($edtDebug, $text, True)
	EndIf
EndFunc


Func SetHome()
	If Not IsFarmVilleActive() Then
		HotKeySet("{HOME}")
		Send("{HOME}")
		HotKeySet("{HOME}", "SetHome")
		Return
	EndIf
	
	If Not $FARM_RUNNING And Not $TREE_RUNNING Then
		GUICtrlSetData($CTRL_CUR_HOME_X, MouseGetPos(0))
		GUICtrlSetData($CTRL_CUR_HOME_Y, MouseGetPos(1))
  EndIf
EndFunc

Func PrevHome()
	If Not IsFarmVilleActive() Then
		HotKeySet("{PGUP}")
		Send("{PGUP}")
		HotKeySet("{PGUP}", "PrevHome")
		Return
	EndIf

	$pos = _GUICtrlComboBox_GetCurSel($cmbHome)
	$count = _GUICtrlComboBox_GetCount($cmbHome)
	_GUICtrlComboBox_SetCurSel($cmbHome, Mod($pos + $count - 1, $count))
	cmbHomeChange()
EndFunc

Func NextHome()
	If Not IsFarmVilleActive() Then
		HotKeySet("{PGDN}")
		Send("{PGDN}")
		HotKeySet("{PGDN}", "NextHome")
		Return
	EndIf

	$pos = _GUICtrlComboBox_GetCurSel($cmbHome)
	$count = _GUICtrlComboBox_GetCount($cmbHome)
	_GUICtrlComboBox_SetCurSel($cmbHome, Mod($pos + $count + 1, $count))
	cmbHomeChange()
EndFunc

Func ToggleFarm()
	If Not $FARM_RUNNING And Not IsFarmVilleActive() Then
		HotKeySet("{INSERT}")
		Send("{INSERT}")
		HotKeySet("{INSERT}", "ToggleFarm")
		Return
	EndIf

	; reset variables
	$NEXT_FARM_TIME = 0
	$NEXT_CHECK_TIME = 0 ; force processing loop

    If $FARM_RUNNING Then
			$FARM_RUNNING = False
			$FARM_LOOP = 0
		Else
			$FARM_RUNNING = True
		EndIf
EndFunc

Func ToggleTrees()
	If Not $TREE_RUNNING And Not IsFarmVilleActive() Then
		HotKeySet("{DELETE}")
		Send("{DELETE}")
		HotKeySet("{DELETE}", "ToggleTrees")
		Return
	EndIf

	;$NEXT_TREE_TIME = 0
	$NEXT_CHECK_TIME = 0 ; force processing loop
	
	If $TREE_RUNNING Then
		$TREE_RUNNING = False
		$TREE_LOOP = 0
	Else
		$TREE_RUNNING = True
		
	EndIf
EndFunc

Func DoFarm()
    $pos_x = GUICtrlRead($txtHomeX)
    $pos_y = GUICtrlRead($txtHomeY)
    
	$avoid_x = Int($pox_x / 2)
	$avoid_y = Int($pos_y / 2)
	
    If GUICtrlRead($chkAvoidCenter) == $GUI_CHECKED Then AddDebug("Avoiding center: " & $avoid_x + ", " & $avoid_y)
	
	For $current_col = 1 to GUICtrlRead($txtSizeCols) Step 1
		For $current_row = 1 to GUICtrlRead($txtSizeRows) Step 1
			If Not $FARM_RUNNING Then ExitLoop
			
			; Avoid center if we're here and we're suposed to.
			If $current_col == $avoid_x And $current_row == $avoid_y And CUICtrlRead($chkAvoidCenter) == $GUI_CHECKED Then ContinueLoop
			
			If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap()

			If GUICtrlRead($chkTestMode) == 1 Then
				MouseMove($pos_x, $pos_y, 0)
			Else
				; Can't really check for Sickle here, since we're not always harvesting
				If Not MenuInTheWay($pos_x, $pos_y) Then
					MouseClick("primary", $pos_x, $pos_y, 1, 0)
				EndIf
			EndIf

			If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap($pos_x, $pos_y)

			; I don't like going up one column and down the next because
			; it will accidentally click on menus sometimes and it's only
			; useful if you're not auto-harvesting, which you should be anyway
			If 1 Or Mod($current_col, 2) == 1 Then
				; Move Right by $txtOffsetTileX and Up by $txtOffsetTileY
				$pos_x += GUICtrlRead($txtOffsetTileX)
				$pos_y -= GUICtrlRead($txtOffsetTileY)
			Else
				; This will go up one column and down the next
				; Move Left by $txtOffsetTileX and Down by $txtOffsetTileY
				$pos_x -= GUICtrlRead($txtOffsetTileX)
				$pos_y += GUICtrlRead($txtOffsetTileY)
			EndIf
			
			DelayScript()
		Next
		
		; Start new row
		If 1 Or Mod($current_col, 2) == 0 Then
			; Going back to origin, Right 1 and down 1
			$pos_x = GUICtrlRead($txtHomeX) + ($current_col * GUICtrlRead($txtOffsetTileX))
			$pos_y = GUICtrlRead($txtHomeY) + ($current_col * GUICtrlRead($txtOffsetTileY))
		Else
			; This is for going up one column and down the next
			; Stay and move Right by $txtOffsetTileX and Down by $txtOffsetTileY
			$pos_x += GUICtrlRead($txtOffsetTileX)
			$pos_y += GUICtrlRead($txtOffsetTileY)
		EndIf

		If Not $FARM_RUNNING Then ExitLoop
	Next
EndFunc

Func DoTrees()
    $max_rows = 0
    $count = 0
	$done = False
	If GUICtrlRead($chkTreeTopLeft) <> $GUI_CHECKED _
		And GUICtrlRead($chkTreeTopRight) <> $GUI_CHECKED _
		And GUICtrlRead($chkTreeBottomLeft) <> $GUI_CHECKED _
		And GUICtrlRead($chkTreeBottomRight) <> $GUI_CHECKED Then
		Return
	EndIf
		
	For $current_side = 1 to 4 Step 1
		If Not $TREE_RUNNING Or $done Then ExitLoop

		; Determine starting pos depending on which tree-line we're harvesting
		$ctrlPosX = 0
		$ctrlPosY = 0
		If $current_side == 1 And GUICtrlRead($chkTreeTopLeft) == $GUI_CHECKED Then
			$ctrlPosX = $txtTopLeftX
			$ctrlPosY = $txtTopLeftY
		ElseIf $current_side == 2 And GUICtrlRead($chkTreeTopRight) == $GUI_CHECKED Then
			$ctrlPosX = $txtTopRightX
			$ctrlPosY = $txtTopRightY
		ElseIf $current_side == 3 And GUICtrlRead($chkTreeBottomLeft) == $GUI_CHECKED Then
			$ctrlPosX = $txtBottomLeftX
			$ctrlPosY = $txtBottomLeftY
		ElseIf $current_side == 4 And GUICtrlRead($chkTreeBottomRight) == $GUI_CHECKED Then
			$ctrlPosX = $txtBottomRightX
			$ctrlPosY = $txtBottomRightY
		EndIf
		
		If $ctrlPosX <> 0 And $ctrlPosY <> 0 Then
			$pos_x = GUICtrlRead($ctrlPosX)
			$pos_y = GUICtrlRead($ctrlPosY)
		Else
			ContinueLoop
		EndIF

		$count += HarvestTree($pos_x, $pos_y)
			
		; Starting positions
		; Top-Left and Bottom-Right are exactly the same
		If $current_side == 1 Or $current_side == 3 Then
			$max_rows = GUICtrlRead($txtSizeRows) * 4
		Else
			$max_rows = GUICtrlRead($txtSizeCols) * 4
		EndIf
		
		For $current_row = 1 to $max_rows Step 1
			If Not $TREE_RUNNING Then
				$done = True
				ExitLoop
			EndIf

			$count += HarvestTree($pos_x, $pos_y)

			; Each tile has 4 trees. Tile offset is 25 so 25/4 = 6 r1
			; Every 4th iteration we add back in that remainder
			Switch $current_side
				Case 1, 3
					; Top-Left, Bottom-Right - move Right and Up
					If Mod($current_row, 4) == 0 Then $pos_x = $pos_x + 1
					$pos_x += GUICtrlRead($txtOffsetTreeX)
					$pos_y -= GUICtrlRead($txtOffsetTreeY)
				Case 2, 4
					; Top-Right, Bottom-Left - move Right and Down
					If Mod($current_row, 4) == 0 Then $pos_x = $pos_x + 1
					$pos_x += GUICtrlRead($txtOffsetTreeX)
					$pos_y += GUICtrlRead($txtOffsetTreeY)
			EndSwitch
			
			DelayScript()
		Next
	Next
	
	AddDebug("TreeHarvest(): Harvested " & $count & " trees")
EndFunc

; Returns 1 on success, 0 on failure, seems to work well
Func HarvestTree($pos_x, $pos_y)
	If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap()
		
	If GUICtrlRead($chkTestMode) == 1 Then
		MouseMove($pos_x, $pos_y, 0)
		If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap($pos_x, $pos_y)

		Sleep(40 + (10 * (10 - GUICtrlRead($txtSpeed)))) ; sleep necessary or Sickle wont be found
		If Not CheckForSickle($pos_x, $pos_y) Or MenuInTheWay($pos_x, $pos_y) Then Return 0
		Return 1
	Else
		MouseMove($pos_x, $pos_y, 0)
		If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap($pos_x, $pos_y)
		
		Sleep(40 + (10 * (10 - GUICtrlRead($txtSpeed)))) ; sleep necessary or Sickle wont be found
		If Not CheckForSickle($pos_x, $pos_y) Or MenuInTheWay($pos_x, $pos_y) Then Return 0

		MouseClick("primary", $pos_x, $pos_y, 1, 0)
		Sleep(50) ; necessary to wait for click
		
		; Check if harvest menu option available
		$pColor = PixelGetColor($pos_x + GUICtrlRead($txtOffsetMenuX), $pos_y + GUICtrlRead($txtOffsetMenuY))
		If Hex($pColor) == Hex(GUICtrlRead($txtColorMenu)) Then
			If GUICtrlRead($chkTrapMouse) == $GUI_CHECKED Then _MouseTrap($pos_x + GUICtrlRead($txtOffsetMenuX), $pos_y + GUICtrlRead($txtOffsetMenuY))
			MouseClick("primary", $pos_x + GUICtrlRead($txtOffsetMenuX), $pos_y + GUICtrlRead($txtOffsetMenuY), 1, 0)
			Return 1
		Else
			MouseClick("primary", $pos_x, $pos_y, 1, 0)
			Return 0
		EndIf
	EndIf
EndFunc

Func ToggleExamine()
	ExamineColors(30, 30)
EndFunc
Func TestSomething()
	$pos_x = MouseGetPos(0)
	$pos_y = MouseGetPos(1)
	
	CheckForSickle($pos_x, $pos_y)
	MenuInTheWay($pos_x, $pos_y)
EndFunc

Func ExamineColors($x1, $y1, $x2 = 0, $y2 = 0)
	; Check an area for colors and get results in debug
	$pos_x = MouseGetPos(0)
	$pos_y = MouseGetPos(1)
	
	AddDebug("Examining colors at " & $pos_x & "," & $pos_y & " rect[" & $x2 & "," & $y2 & " " & $x1 & "," & $x1 & "]")

	$cur_x = 0
	$cur_y = 0
	
	For $cur_y = $y2 To $y1 Step 1
		For $cur_x = $x2 To $x1 Step 1
			AddDebug($cur_x & "," & $cur_y & "=" & Hex(PixelGetColor($pos_x + $cur_x, $pos_y + $cur_y), 6) & "  ", false, false)
		Next
		AddDebug("")
	Next
EndFunc

; Returns true if we shouldn't check, or if we should check and it's there, false otherwise
Func CheckForSickle($pos_x, $pos_y)
	If GUICtrlRead($chkCheckForSickle) == $GUI_CHECKED Then
		If Hex(PixelGetColor($pos_x + 34, $pos_y + 3)) == Hex(GUICtrlRead($txtColorSickleLight)) _
			And Hex(PixelGetColor($pos_x + 32, $pos_y + 2)) == Hex(GUICtrlRead($txtColorSickleDark)) _ 
			And Hex(PixelGetColor($pos_x + 17, $pos_y + 27)) == Hex(GUICtrlRead($txtColorSickleGrey)) Then
			AddDebug("Sickle found from " & $pos_x & "," & $pos_y)
			Return True
		Else
			Return False
		EndIf
	Else
		Return True
	EndIf
EndFunc

; Returns true if we should avoid menus and there is one present, false otherwise
Func MenuInTheWay($pos_x, $pos_y)
	; Check for menu or menu selected color - Not Very Good
	If GUICtrlRead($chkAvoidMenus) == $GUI_CHECKED And _
		(Hex(PixelGetColor($pos_x + 60, $pos_y)) == Hex(GUICtrlRead($txtColorMenu)) _
		Or Hex(PixelGetColor($pos_x + 60, $pos_y)) == Hex(GUICtrlRead($txtColorMenuSelected))) Then
		AddDebug("Menu detected from " & $pos_x & "," & $pos_y)
		Return True
	Else
		Return False
	EndIf
EndFunc

Func DelayScript()
	If GUICtrlRead($txtSpeed) < 10 And GUICtrlRead($txtSpeed) >= 0 Then
		Sleep((10 - GUICtrlRead($txtSpeed)) * 20)
	EndIf
EndFunc

; Returns true if match text is blank or active window matches text, false otherwise
Func IsFarmVilleActive($silent = False)
	If GUICtrlRead($txtMatchTitle) == "" Then Return True
		
	; On FireFox, the title is "Adobe Flash Player", on IE (which is always different!) it's " - Adobe Flash Player"
	Opt("WinTitleMatchMode", 2)
	If WinActive(GUICtrlRead($txtMatchTitle)) Then
		Return True
	Else
		If Not $silent Then AddDebug("IsFarmVilleActive(): " & GUICtrlRead($txtMatchTitle) & " != " & WinGetTitle(""))
		Return False
	EndIf
EndFunc

Func _ToolbarButtonState($hwnd, $state)
	Local $objCommand = ObjCreate("ADODB.Command")
	Local $wndname = WinGetTitle($hwnd)
    Local $toolbar
	
	; ToolbarWindow322 on WinXP (assuming 2000, 98, 95, etc..) and ToolbarWindow324 on Vista (assuming 2008)
	If @OSVersion == "WIN_2008" Or @OSVersion == "WIN_VISTA" Then
		$toolbar = ControlGetHandle("[CLASS:Shell_TrayWnd]", "", "ToolbarWindow324")
	Else
		$toolbar = ControlGetHandle("[CLASS:Shell_TrayWnd]", "", "ToolbarWindow322")
	EndIf
	
    Local $count = _GUICtrlToolbar_ButtonCount($toolbar)
    For $i = 0 To $count - 1
        Local $cID = _GUICtrlToolbar_IndexToCommand($toolbar, $i)
        If $wndname = _GUICtrlToolbar_GetButtonText($toolbar, $cID) Then
            Switch $state
                Case 0
                    _GUICtrlToolbar_HideButton($toolbar, $cID)
                Case 1
                    _GUICtrlToolbar_HideButton($toolbar, $cID, False)
            EndSwitch
        EndIf
    Next
EndFunc