local L0_7234, L1_7235, L2_7236, L3_7237
L0_7234 = {}
L1_7235 = {}
L1_7235.bEnabled = 1
L1_7235.bOnlyOnce = 0
L1_7235.fEMPChance = 1
L1_7235.fScanChance = 1
L0_7234.Properties = L1_7235
L1_7235 = {}
L1_7235.Icon = "switch.bmp"
L1_7235.IconOnTop = 1
L0_7234.Editor = L1_7235
SpotterScannable = L0_7234
L0_7234 = SpotterScannable
function L1_7235(A0_7238)
  local L1_7239
  A0_7238.entityId = nil
  L1_7239 = A0_7238.GetParent
  L1_7239 = L1_7239(A0_7238)
  L1_7239 = L1_7239 or A0_7238:GetChild(0)
  if L1_7239 then
    A0_7238.entityId = L1_7239.id
  end
end
L0_7234.OnStartGame = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7240)
  A0_7240:OnReset()
end
L0_7234.OnPropertyChange = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7241)
  A0_7241.onlyOnce = A0_7241.Properties.bOnlyOnce ~= 0
  A0_7241.empChance = math.min(math.max(0, A0_7241.Properties.fEMPChance), 1)
  A0_7241.scanChance = math.min(math.max(0, A0_7241.Properties.fScanChance), 1)
  A0_7241.scannable = A0_7241.Properties.bEnabled ~= 0
  A0_7241.scanned = nil
end
L0_7234.OnReset = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7242)
  local L1_7243
  L1_7243 = A0_7242.scannable
  L1_7243 = L1_7243 and (not L1_7243 or not L1_7243)
  return L1_7243
end
L0_7234.IsScannable = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7244, A1_7245)
  A0_7244:Event_ScanStarted(A1_7245)
  A0_7244.scanned = true
end
L0_7234.ScanStarted = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7246, A1_7247)
  A0_7246:Event_ScanEnded(A1_7247)
end
L0_7234.ScanEnded = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7248, A1_7249)
  A0_7248:Event_EMP(A1_7249)
end
L0_7234.EMP = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7250, A1_7251)
  A0_7250:Event_SpotterInterested(A1_7251)
end
L0_7234.SpotterInterested = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7252)
  local L1_7253
  L1_7253 = A0_7252.empChance
  return L1_7253
end
L0_7234.GetEMPChance = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7254)
  local L1_7255
  L1_7255 = A0_7254.scanChance
  return L1_7255
end
L0_7234.GetScanChance = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7256, A1_7257)
  A0_7256:ActivateOutput("Entity", A0_7256.entityId or NULL_ENTITY)
  A0_7256:ActivateOutput("Spotter", A1_7257 or NULL_ENTITY)
  BroadcastEvent(A0_7256, "ScanStarted")
end
L0_7234.Event_ScanStarted = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7258, A1_7259)
  A0_7258:ActivateOutput("Entity", A0_7258.entityId or NULL_ENTITY)
  A0_7258:ActivateOutput("Spotter", A1_7259 or NULL_ENTITY)
  BroadcastEvent(A0_7258, "ScanEnded")
end
L0_7234.Event_ScanEnded = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7260, A1_7261)
  A0_7260:ActivateOutput("Entity", A0_7260.entityId or NULL_ENTITY)
  A0_7260:ActivateOutput("Spotter", A1_7261 or NULL_ENTITY)
  BroadcastEvent(A0_7260, "SpotterInterested")
end
L0_7234.Event_SpotterInterested = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7262, A1_7263)
  A0_7262:ActivateOutput("Entity", A0_7262.entityId or NULL_ENTITY)
  A0_7262:ActivateOutput("Spotter", A1_7263 or NULL_ENTITY)
  BroadcastEvent(A0_7262, "EMP")
end
L0_7234.Event_EMP = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7264, A1_7265)
  A0_7264.scannable = true
  BroadcastEvent(A0_7264, "Enable")
end
L0_7234.Event_Enable = L1_7235
L0_7234 = SpotterScannable
function L1_7235(A0_7266, A1_7267)
  A0_7266.scannable = false
  BroadcastEvent(A0_7266, "Disable")
end
L0_7234.Event_Disable = L1_7235
L0_7234 = SpotterScannable
L1_7235 = {}
L2_7236 = {}
L3_7237 = {
  SpotterScannable.Event_Disable
}
L2_7236.Disable = L3_7237
L3_7237 = {
  SpotterScannable.Event_Enable
}
L2_7236.Enable = L3_7237
L1_7235.Inputs = L2_7236
L2_7236 = {}
L2_7236.ScanEnded = "bool"
L2_7236.ScanStarted = "bool"
L2_7236.EMP = "bool"
L2_7236.SpotterInterested = "bool"
L2_7236.Disable = "bool"
L2_7236.Enable = "bool"
L2_7236.Entity = "entity"
L2_7236.Spotter = "entity"
L1_7235.Outputs = L2_7236
L0_7234.FlowEvents = L1_7235
