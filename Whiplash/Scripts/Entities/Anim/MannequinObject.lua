local L0_2869, L1_2870
L0_2869 = {}
L1_2870 = {}
L1_2870.objModel = ""
L1_2870.fileActionController = ""
L1_2870.fileAnimDatabase3P = ""
L0_2869.Properties = L1_2870
L1_2870 = {}
L1_2870.Icon = "user.bmp"
L1_2870.IconOnTop = 1
L0_2869.Editor = L1_2870
MannequinObject = L0_2869
L0_2869 = MannequinObject
function L1_2870(A0_2871)
  A0_2871:ProcessBroadcastEvent("OnPropertyChange")
end
L0_2869.OnPropertyChange = L1_2870
