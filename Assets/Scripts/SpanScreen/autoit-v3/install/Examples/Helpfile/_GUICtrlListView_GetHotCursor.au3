#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	Local $hListView

	GUICreate("ListView Get Hot Cursor", 400, 300)
	$hListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUISetState(@SW_SHOW)

	; Add columns
	_GUICtrlListView_AddColumn($hListView, "Column 1", 100)
	_GUICtrlListView_AddColumn($hListView, "Column 2", 100)
	_GUICtrlListView_AddColumn($hListView, "Column 3", 100)

	; Show hot cursor handle
	MsgBox($MB_SYSTEMMODAL, "Information", "Hot Cursor Handle: 0x" & Hex(_GUICtrlListView_GetHotCursor($hListView)) & @CRLF & _
			"IsPtr = " & IsPtr(_GUICtrlListView_GetHotCursor($hListView)) & " IsHWnd = " & IsHWnd(_GUICtrlListView_GetHotCursor($hListView)))

	; Loop until the user exits.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
