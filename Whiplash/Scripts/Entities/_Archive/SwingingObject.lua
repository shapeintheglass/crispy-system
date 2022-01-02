local L0_1124, L1_1125, L2_1126, L3_1127
L0_1124 = {}
L1_1125 = {}
L1_1125.mass = 120
L1_1125.fileModel = "Objects/glm/shipwreck/stuff/chain_hook.cgf"
L1_1125.bShootable = 1
L1_1125.coll_dist = 0.025
L1_1125.material = "mat_default"
L2_1126 = {}
L2_1126.x = 0
L2_1126.y = 0
L2_1126.z = -9.81
L1_1125.gravity = L2_1126
L1_1125.damping = 0.5
L1_1125.sleep_speed = 0.01
L1_1125.max_time_step = 0.02
L1_1125.damage_players = 1
L1_1125.damage_scale = 10
L1_1125.bResting = 1
L2_1126 = {}
L2_1126.x = 1
L2_1126.y = 2
L2_1126.z = 3
L1_1125.vector_activation_impulse = L2_1126
L0_1124.Properties = L1_1125
L1_1125 = {}
L1_1125.Model = "Objects/Editor/LightSphear.cgf"
L0_1124.Editor = L1_1125
SwingingObject = L0_1124
L0_1124 = SwingingObject
function L1_1125(A0_1128)
  local L1_1129
  A0_1128.lightId = nil
  L1_1129 = A0_1128.NetPresent
  L1_1129(A0_1128, nil)
  L1_1129 = A0_1128.Activate
  L1_1129(A0_1128, 1)
  L1_1129 = {}
  L1_1129.entity_id_1 = -1
  L1_1129.entity_part_id_1 = 0
  L1_1129.surface_idx = Game:GetMaterialIDByName(A0_1128.Properties.material)
  L1_1129.shootable = A0_1128.Properties.bShootable
  A0_1128:CreateRigidBody(0, 1, 0)
  A0_1128:LoadCharacter(A0_1128.Properties.fileModel, 0)
  A0_1128:PhysicalizeCharacter(A0_1128.Properties.mass, 0, 0, 0)
  A0_1128:SetCharacterPhysicParams(0, "rope", PHYSICPARAM_ROPE, A0_1128.Properties)
  A0_1128:SetCharacterPhysicParams(0, "rope", PHYSICPARAM_ROPE, L1_1129)
  A0_1128:SetCharacterPhysicParams(0, "rope", PHYSICPARAM_SIMULATION, A0_1128.Properties)
  A0_1128:AwakePhysics(1 - A0_1128.Properties.bResting)
  A0_1128:DrawObject(0, 1)
end
L0_1124.OnReset = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1130)
  A0_1130:OnReset()
end
L0_1124.OnPropertyChange = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1131, A1_1132)
  if A1_1132.ipart then
    A0_1131:AddImpulse(A1_1132.ipart, A1_1132.pos, A1_1132.dir, A1_1132.impact_force_mul)
  else
    A0_1131:AddImpulse(-1, A1_1132.pos, A1_1132.dir, A1_1132.impact_force_mul)
  end
end
L0_1124.OnDamage = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1133, A1_1134)
  A0_1133.temp_vec.x = A0_1133.Properties.vector_activation_impulse.x
  A0_1133.temp_vec.y = A0_1133.Properties.vector_activation_impulse.y
  A0_1133.temp_vec.z = A0_1133.Properties.vector_activation_impulse.z
  A0_1133:AddImpulse(0, nil, A0_1133.temp_vec, 1)
end
L0_1124.Event_AddImpulse = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1135, A1_1136)
  A0_1135:AwakePhysics(1)
end
L0_1124.Event_Activate = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1137)
  A0_1137:OnReset()
end
L0_1124.OnInit = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1138, A1_1139)
end
L0_1124.OnWrite = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1140, A1_1141)
end
L0_1124.OnRead = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1142, A1_1143)
end
L0_1124.OnSave = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1144, A1_1145)
end
L0_1124.OnLoad = L1_1125
L0_1124 = SwingingObject
function L1_1125(A0_1146)
  local L1_1147
end
L0_1124.OnShutDown = L1_1125
L0_1124 = SwingingObject
L1_1125 = {}
L2_1126 = {}
L3_1127 = {
  SwingingObject.Event_Activate,
  "bool"
}
L2_1126.Activate = L3_1127
L3_1127 = {
  SwingingObject.Event_AddImpulse,
  "bool"
}
L2_1126.AddImpulse = L3_1127
L1_1125.Inputs = L2_1126
L2_1126 = {}
L2_1126.Activate = "bool"
L2_1126.AddImpulse = "bool"
L1_1125.Outputs = L2_1126
L0_1124.FlowEvents = L1_1125
