local L0_7494, L1_7495, L2_7496, L3_7497
L0_7494 = {}
L0_7494.type = "AreaBezierVolume"
L1_7495 = {}
L1_7495.bEnabled = 1
L2_7496 = {}
L2_7496.bNetworked = 0
L1_7495.MultiplayerOptions = L2_7496
L0_7494.Properties = L1_7495
AreaBezierVolume = L0_7494
L0_7494 = AreaBezierVolume
function L1_7495(A0_7498)
  if A0_7498.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_7498:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
end
L0_7494.OnSpawn = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7499, A1_7500)
  A0_7499.bEnabled = A1_7500.bEnabled
  if A0_7499.bEnabled == 1 then
    A0_7499:Event_Enable()
  else
    A0_7499:Event_Disable()
  end
end
L0_7494.OnLoad = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7501, A1_7502)
  A1_7502.bEnabled = A0_7501.bEnabled
end
L0_7494.OnSave = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7503)
  if A0_7503.Properties.bEnabled == 1 then
    A0_7503:Event_Enable()
  else
    A0_7503:Event_Disable()
  end
end
L0_7494.OnInit = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7504)
  if A0_7504.Properties.bEnabled == 1 then
    A0_7504:Event_Enable()
  else
    A0_7504:Event_Disable()
  end
end
L0_7494.OnPropertyChange = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7505, A1_7506)
  A0_7505:SetPhysicParams(PHYSICPARAM_FOREIGNDATA, {foreignData = ZEROG_AREA_ID})
end
L0_7494.OnEnable = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7507)
  A0_7507.bEnabled = 1
  BroadcastEvent(A0_7507, "Enable")
end
L0_7494.Event_Enable = L1_7495
L0_7494 = AreaBezierVolume
function L1_7495(A0_7508)
  A0_7508.bEnabled = 0
  BroadcastEvent(A0_7508, "Disable")
end
L0_7494.Event_Disable = L1_7495
L0_7494 = AreaBezierVolume
L1_7495 = {}
L2_7496 = {}
L3_7497 = {
  AreaBezierVolume.Event_Disable,
  "bool"
}
L2_7496.Disable = L3_7497
L3_7497 = {
  AreaBezierVolume.Event_Enable,
  "bool"
}
L2_7496.Enable = L3_7497
L1_7495.Inputs = L2_7496
L2_7496 = {}
L2_7496.Disable = "bool"
L2_7496.Enable = "bool"
L1_7495.Outputs = L2_7496
L0_7494.FlowEvents = L1_7495
