local L0_1148, L1_1149
L0_1148 = {}
L0_1148.name = "SwivilChair"
L1_1149 = {}
L1_1149.objModel = "Objects/Indoor/furniture/chairs/swivel.cgf"
L0_1148.Properties = L1_1149
SwivilChair = L0_1148
L0_1148 = SwivilChair
function L1_1149(A0_1150)
  A0_1150:Activate(0)
  if A0_1150.ModelName ~= A0_1150.Properties.objModel then
    A0_1150.ModelName = A0_1150.Properties.objModel
    A0_1150:LoadObject(A0_1150.ModelName, 0, 1)
  end
  A0_1150:CreateStaticEntity(200, 0)
  A0_1150:EnablePhysics(1)
  A0_1150:DrawObject(0, 1)
  AI:RegisterWithAI(A0_1150.id, AIAnchor.AIOBJECT_SWIVIL_CHAIR)
end
L0_1148.OnInit = L1_1149
L0_1148 = SwivilChair
function L1_1149(A0_1151, A1_1152, A2_1153)
end
L0_1148.OnEvent = L1_1149
L0_1148 = SwivilChair
function L1_1149(A0_1154)
  local L1_1155
end
L0_1148.OnShutDown = L1_1149
