local L0_7145, L1_7146, L2_7147, L3_7148
L0_7145 = {}
L0_7145.type = "RigidBody"
L0_7145.MapVisMask = 0
L1_7146 = {}
L1_7146.soclasses_SmartObjectClass = ""
L1_7146.bAutoGenAIHidePts = 0
L1_7146.objModel = "Objects/box.cgf"
L1_7146.Density = 5000
L1_7146.Mass = 1
L1_7146.bResting = 1
L1_7146.bVisible = 1
L1_7146.bRigidBodyActive = 1
L1_7146.bActivateOnRocketDamage = 0
L2_7147 = {}
L2_7147.X = 0
L2_7147.Y = 0
L2_7147.Z = 0
L1_7146.Impulse = L2_7147
L1_7146.max_time_step = 0.01
L1_7146.sleep_speed = 0.04
L1_7146.damping = 0
L1_7146.water_damping = 1.5
L1_7146.water_resistance = 0
L0_7145.Properties = L1_7146
L1_7146 = {}
L1_7146.x = 0
L1_7146.y = 0
L1_7146.z = 0
L0_7145.temp_vec = L1_7146
L1_7146 = {}
L1_7146.mass = 0
L1_7146.density = 0
L0_7145.PhysParams = L1_7146
L0_7145.updateTime = 500
L0_7145.gravityUpdate = 0
L1_7146 = {}
L1_7146.Icon = "physicsobject.bmp"
L1_7146.IconOnTop = 1
L0_7145.Editor = L1_7146
RigidBody = L0_7145
L0_7145 = RigidBody
function L1_7146(A0_7149)
  A0_7149.ModelName = ""
  A0_7149.Mass = 0
  A0_7149:OnReset()
end
L0_7145.OnInit = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7150)
  local L1_7151, L2_7152
  L1_7151 = A0_7150.ModelName
  L2_7152 = A0_7150.Properties
  L2_7152 = L2_7152.objModel
  if L1_7151 == L2_7152 then
    L1_7151 = A0_7150.Mass
    L2_7152 = A0_7150.Properties
    L2_7152 = L2_7152.Mass
  elseif L1_7151 ~= L2_7152 then
    L1_7151 = A0_7150.Properties
    L1_7151 = L1_7151.Mass
    A0_7150.Mass = L1_7151
    L1_7151 = A0_7150.Properties
    L1_7151 = L1_7151.objModel
    A0_7150.ModelName = L1_7151
    L2_7152 = A0_7150
    L1_7151 = A0_7150.LoadObject
    L1_7151(L2_7152, 0, A0_7150.ModelName)
  end
  L1_7151 = A0_7150.Properties
  L2_7152 = L1_7151.bVisible
  if L2_7152 == 0 then
    L2_7152 = A0_7150.DrawSlot
    L2_7152(A0_7150, 0, 0)
  else
    L2_7152 = A0_7150.DrawSlot
    L2_7152(A0_7150, 0, 1)
  end
  L2_7152 = nil
  if A0_7150.Properties.bRigidBodyActive == 1 then
    L2_7152 = PE_RIGID
    A0_7150.PhysParams.density = L1_7151.Density
    A0_7150.PhysParams.mass = L1_7151.Mass
  else
    L2_7152 = PE_STATIC
  end
  A0_7150:Physicalize(0, L2_7152, A0_7150.PhysParams)
  A0_7150:SetPhysicParams(PHYSICPARAM_SIMULATION, A0_7150.Properties)
  A0_7150:SetPhysicParams(PHYSICPARAM_BUOYANCY, A0_7150.Properties)
  if A0_7150.Properties.bResting == 0 then
    A0_7150:AwakePhysics(1)
  else
    A0_7150:AwakePhysics(0)
  end
  if A0_7150.Properties.bAutoGenAIHidePts == 1 then
    A0_7150:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_7150:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
end
L0_7145.OnReset = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7153)
  A0_7153:OnReset()
end
L0_7145.OnPropertyChange = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7154, A1_7155)
  A0_7154:Event_OnTouch(A1_7155)
end
L0_7145.OnContact = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7156, A1_7157)
  if A1_7157.ipart then
    A0_7156:AddImpulse(A1_7157.ipart, A1_7157.pos, A1_7157.dir, A1_7157.impact_force_mul)
  end
  if A0_7156.Properties.bActivateOnRocketDamage and A1_7157.explosion then
    A0_7156:AwakePhysics(1)
  end
end
L0_7145.OnDamage = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7158)
  local L1_7159
end
L0_7145.OnShutDown = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7160)
  local L1_7161
end
L0_7145.OnTimer = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7162)
  A0_7162.gravityUpdate = A0_7162.gravityUpdate + _frametime
  if A0_7162.gravityUpdate < 0.5 then
    return
  end
  A0_7162.gravityUpdate = 0
  EntityUpdateGravity(A0_7162)
end
L0_7145.OnUpdate = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7163, A1_7164)
  A0_7163.temp_vec.x = A0_7163.Properties.Impulse.X
  A0_7163.temp_vec.y = A0_7163.Properties.Impulse.Y
  A0_7163.temp_vec.z = A0_7163.Properties.Impulse.Z
  A0_7163:AddImpulse(0, nil, A0_7163.temp_vec, 1)
end
L0_7145.Event_AddImpulse = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7165, A1_7166)
  A0_7165:CreateRigidBody(A0_7165.Properties.Density, A0_7165.Properties.Mass, 0)
  A0_7165:Activate(1)
  A0_7165:AwakePhysics(1)
end
L0_7145.Event_Activate = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7167, A1_7168)
  A0_7167:DrawSlot(0, 1)
end
L0_7145.Event_Show = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7169, A1_7170)
  A0_7169:DrawSlot(0, 0)
end
L0_7145.Event_Hide = L1_7146
L0_7145 = RigidBody
function L1_7146(A0_7171, A1_7172)
  BroadcastEvent(A0_7171, "OnTouch")
end
L0_7145.Event_OnTouch = L1_7146
L0_7145 = RigidBody
L1_7146 = {}
L2_7147 = {}
L3_7148 = {
  RigidBody.Event_Activate,
  "bool"
}
L2_7147.Activate = L3_7148
L3_7148 = {
  RigidBody.Event_AddImpulse,
  "bool"
}
L2_7147.AddImpulse = L3_7148
L3_7148 = {
  RigidBody.Event_Hide,
  "bool"
}
L2_7147.Hide = L3_7148
L3_7148 = {
  RigidBody.Event_Show,
  "bool"
}
L2_7147.Show = L3_7148
L3_7148 = {
  RigidBody.Event_OnTouch,
  "bool"
}
L2_7147.OnTouch = L3_7148
L1_7146.Inputs = L2_7147
L2_7147 = {}
L2_7147.Activate = "bool"
L2_7147.AddImpulse = "bool"
L2_7147.Hide = "bool"
L2_7147.Show = "bool"
L2_7147.OnTouch = "bool"
L1_7146.Outputs = L2_7147
L0_7145.FlowEvents = L1_7146
