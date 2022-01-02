local L0_8312, L1_8313, L2_8314, L3_8315
L0_8312 = {}
L0_8312.type = "VolumeObject"
L0_8312.ENTITY_DETAIL_ID = 1
L1_8313 = {}
L1_8313.file_VolumeObjectFile = "Libs/Clouds/Default.xml"
L2_8314 = {}
L2_8314.bAutoMove = 0
L3_8315 = {}
L3_8315.x = 0
L3_8315.y = 0
L3_8315.z = 0
L2_8314.vector_Speed = L3_8315
L3_8315 = {}
L3_8315.x = 2000
L3_8315.y = 2000
L3_8315.z = 2000
L2_8314.vector_SpaceLoopBox = L3_8315
L2_8314.fFadeDistance = 0
L1_8313.Movement = L2_8314
L0_8312.Properties = L1_8313
L1_8313 = {}
L1_8313.Model = "Editor/Objects/Particles.cgf"
L1_8313.Icon = "Clouds.bmp"
L0_8312.Editor = L1_8313
VolumeObject = L0_8312
L0_8312 = VolumeObject
function L1_8313(A0_8316)
  A0_8316:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_8312.OnSpawn = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8317)
  A0_8317:NetPresent(0)
  A0_8317:Create()
end
L0_8312.OnInit = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8318)
  local L1_8319
  L1_8319 = A0_8318.Properties
  L1_8319 = L1_8319.Movement
  A0_8318:SetVolumeObjectMovementProperties(0, L1_8319)
end
L0_8312.SetMovementProperties = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8320)
  local L1_8321
end
L0_8312.OnShutDown = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8322)
  A0_8322:LoadVolumeObject(0, A0_8322.Properties.file_VolumeObjectFile)
  A0_8322:SetMovementProperties()
end
L0_8312.Create = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8323)
  A0_8323:FreeSlot(0)
end
L0_8312.Delete = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8324)
  if not A0_8324:IsSlotValid(0) then
    A0_8324:Create()
  end
end
L0_8312.OnReset = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8325)
  local L1_8326
  L1_8326 = A0_8325.Properties
  if L1_8326.file_VolumeObjectFile ~= A0_8325._VolumeObjectFile then
    A0_8325._VolumeObjectFile = L1_8326.file_VolumeObjectFile
    A0_8325:Create()
  else
    A0_8325:SetMovementProperties()
  end
end
L0_8312.OnPropertyChange = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8327, A1_8328)
  A1_8328.bHasObject = A0_8327:IsSlotValid(0)
  if A1_8328.bHasObject then
  end
end
L0_8312.OnSave = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8329, A1_8330)
  if A1_8330.bHasObject and not A0_8329:IsSlotValid(0) then
    A0_8329:Create()
  elseif not A1_8330.bHasObject and A0_8329:IsSlotValid(0) then
    A0_8329:Delete()
  end
end
L0_8312.OnLoad = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8331)
  A0_8331:Delete()
end
L0_8312.Event_Hide = L1_8313
L0_8312 = VolumeObject
function L1_8313(A0_8332)
  A0_8332:Create()
end
L0_8312.Event_Show = L1_8313
L0_8312 = VolumeObject
L1_8313 = {}
L2_8314 = {}
L3_8315 = {
  VolumeObject.Event_Hide,
  "bool"
}
L2_8314.Hide = L3_8315
L3_8315 = {
  VolumeObject.Event_Show,
  "bool"
}
L2_8314.Show = L3_8315
L1_8313.Inputs = L2_8314
L2_8314 = {}
L2_8314.Hide = "bool"
L2_8314.Show = "bool"
L1_8313.Outputs = L2_8314
L0_8312.FlowEvents = L1_8313
