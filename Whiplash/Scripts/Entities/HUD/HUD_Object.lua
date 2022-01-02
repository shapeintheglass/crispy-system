local L0_5505, L1_5506, L2_5507
L0_5505 = {}
L0_5505.type = "HUD_Object"
L1_5506 = {}
L1_5506.fileModel = "objects/hud/hud_bg_center.cgf"
L0_5505.Properties = L1_5506
L1_5506 = {}
L1_5506.Icon = "Comment.bmp"
L1_5506.IconOnTop = 1
L0_5505.Editor = L1_5506
HUD_Object = L0_5505
L0_5505 = HUD_Object
function L1_5506(A0_5508)
  A0_5508:OnReset()
end
L0_5505.OnInit = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5509)
  A0_5509:OnReset()
end
L0_5505.OnPropertyChange = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5510)
  A0_5510:LoadObjectWithFlags(0, A0_5510.Properties.fileModel, 2)
end
L0_5505.OnReset = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5511, A1_5512)
  A0_5511.Properties.fileModel = A1_5512
  A0_5511:LoadObjectWithFlags(0, A1_5512, 2)
end
L0_5505.SetObjectModel = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5513, A1_5514)
  local L2_5515
  L2_5515 = A0_5513.Properties
  L2_5515 = L2_5515.fileModel
  A1_5514.fileModel = L2_5515
end
L0_5505.OnSave = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5516, A1_5517)
  A0_5516:SetObjectModel(A1_5517.fileModel)
end
L0_5505.OnLoad = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5518)
  A0_5518:Hide(0)
end
L0_5505.OnPostLoad = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5519)
  local L1_5520
end
L0_5505.OnShutDown = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5521, A1_5522)
end
L0_5505.Event_TargetReached = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5523, A1_5524)
end
L0_5505.Event_Enable = L1_5506
L0_5505 = HUD_Object
function L1_5506(A0_5525, A1_5526)
end
L0_5505.Event_Disable = L1_5506
L0_5505 = HUD_Object
L1_5506 = {}
L2_5507 = {}
L1_5506.Inputs = L2_5507
L2_5507 = {}
L1_5506.Outputs = L2_5507
L0_5505.FlowEvents = L1_5506
