local L0_5481, L1_5482, L2_5483, L3_5484
L0_5481 = {}
L0_5481.type = "HUD_MessagePlane"
L1_5482 = {}
L1_5482.bEnabled = 1
L0_5481.Properties = L1_5482
L1_5482 = {}
L1_5482.Icon = "Prompt.bmp"
L1_5482.IconOnTop = 1
L1_5482.Model = "Objects/hud/HintTest.cgf"
L0_5481.Editor = L1_5482
HUD_MessagePlane = L0_5481
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5485)
  A0_5485:OnReset()
  A0_5485:Enable(tonumber(A0_5485.Properties.bEnabled) ~= 0)
  if System.IsEditor() then
    A0_5485:LoadObject(0, A0_5485.Editor.Model)
  end
end
L0_5481.OnInit = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5486, A1_5487)
  if A1_5487 then
    A0_5486:DrawSlot(0, 0)
  else
    A0_5486:DrawSlot(0, 1)
  end
end
L0_5481.OnEditorSetGameMode = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5488)
  A0_5488:OnReset()
end
L0_5481.OnPropertyChange = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5489, A1_5490)
  A0_5489.enabled = A1_5490
end
L0_5481.Enable = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5491)
  local L1_5492
end
L0_5481.OnReset = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5493, A1_5494)
end
L0_5481.OnSave = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5495, A1_5496)
end
L0_5481.OnLoad = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5497)
  local L1_5498
end
L0_5481.OnPostLoad = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5499)
  local L1_5500
end
L0_5481.OnShutDown = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5501)
  local L1_5502
  L1_5502 = A0_5501.enabled
  return L1_5502
end
L0_5481.IsEnabled = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5503)
  A0_5503:Enable(true)
  BroadcastEvent(A0_5503, "Enabled")
end
L0_5481.Event_Enable = L1_5482
L0_5481 = HUD_MessagePlane
function L1_5482(A0_5504)
  A0_5504:Enable(false)
  BroadcastEvent(A0_5504, "Disabled")
end
L0_5481.Event_Disable = L1_5482
L0_5481 = HUD_MessagePlane
L1_5482 = {}
L2_5483 = {}
L3_5484 = {
  HUD_MessagePlane.Event_Enable,
  "bool"
}
L2_5483.Enable = L3_5484
L3_5484 = {
  HUD_MessagePlane.Event_Disable,
  "bool"
}
L2_5483.Disable = L3_5484
L1_5482.Inputs = L2_5483
L2_5483 = {}
L2_5483.Enabled = "bool"
L2_5483.Disabled = "bool"
L1_5482.Outputs = L2_5483
L0_5481.FlowEvents = L1_5482
