local L0_8064, L1_8065, L2_8066, L3_8067
L0_8064 = {}
L0_8064.type = "Cloud"
L0_8064.ENTITY_DETAIL_ID = 1
L1_8065 = {}
L1_8065.file_CloudFile = "Libs/Clouds/Default.xml"
L1_8065.fScale = 1
L2_8066 = {}
L2_8066.bAutoMove = 0
L3_8067 = {}
L3_8067.x = 0
L3_8067.y = 0
L3_8067.z = 0
L2_8066.vector_Speed = L3_8067
L3_8067 = {}
L3_8067.x = 2000
L3_8067.y = 2000
L3_8067.z = 2000
L2_8066.vector_SpaceLoopBox = L3_8067
L2_8066.fFadeDistance = 0
L1_8065.Movement = L2_8066
L0_8064.Properties = L1_8065
L1_8065 = {}
L1_8065.Model = "Editor/Objects/Particles.cgf"
L1_8065.Icon = "Clouds.bmp"
L0_8064.Editor = L1_8065
Cloud = L0_8064
L0_8064 = Cloud
function L1_8065(A0_8068)
  A0_8068:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_8064.OnSpawn = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8069)
  A0_8069:NetPresent(0)
  A0_8069:CreateCloud()
end
L0_8064.OnInit = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8070)
  local L1_8071
  L1_8071 = A0_8070.Properties
  L1_8071 = L1_8071.Movement
  A0_8070:SetCloudMovementProperties(0, L1_8071)
end
L0_8064.SetMovementProperties = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8072)
  local L1_8073
end
L0_8064.OnShutDown = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8074)
  A0_8074:LoadCloud(0, A0_8074.Properties.file_CloudFile)
  A0_8074:SetMovementProperties()
end
L0_8064.CreateCloud = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8075)
  A0_8075:FreeSlot(0)
end
L0_8064.DeleteCloud = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8076)
  if not A0_8076:IsSlotValid(0) then
    A0_8076:CreateCloud()
  end
end
L0_8064.OnReset = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8077)
  local L1_8078
  L1_8078 = A0_8077.Properties
  if L1_8078.file_CloudFile ~= A0_8077._CloudFile then
    A0_8077._CloudFile = L1_8078.file_CloudFile
    A0_8077:CreateCloud()
  else
    A0_8077:SetMovementProperties()
  end
end
L0_8064.OnPropertyChange = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8079)
  A0_8079:FreeSlot(0)
end
L0_8064.DeleteCloud = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8080, A1_8081)
  A1_8081.bHasCloud = A0_8080:IsSlotValid(0)
  if A1_8081.bHasCloud then
  end
end
L0_8064.OnSave = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8082, A1_8083)
  if A1_8083.bHasCloud and not A0_8082:IsSlotValid(0) then
    A0_8082:CreateCloud()
  elseif not A1_8083.bHasCloud and A0_8082:IsSlotValid(0) then
    A0_8082:DeleteCloud()
  end
end
L0_8064.OnLoad = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8084)
  A0_8084:DeleteCloud()
end
L0_8064.Event_Hide = L1_8065
L0_8064 = Cloud
function L1_8065(A0_8085)
  A0_8085:CreateCloud()
end
L0_8064.Event_Show = L1_8065
L0_8064 = Cloud
L1_8065 = {}
L2_8066 = {}
L3_8067 = {
  Cloud.Event_Hide,
  "bool"
}
L2_8066.Hide = L3_8067
L3_8067 = {
  Cloud.Event_Show,
  "bool"
}
L2_8066.Show = L3_8067
L1_8065.Inputs = L2_8066
L2_8066 = {}
L2_8066.Hide = "bool"
L2_8066.Show = "bool"
L1_8065.Outputs = L2_8066
L0_8064.FlowEvents = L1_8065
