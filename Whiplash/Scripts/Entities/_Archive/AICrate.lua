local L0_207, L1_208
L0_207 = {}
L0_207.Name = "AICrate"
L1_208 = {}
L1_208.objModel = "Objects/Indoor/boxes/crates/crateCarry.cgf"
L1_208.Density = 20
L1_208.Mass = 1
L0_207.Properties = L1_208
L1_208 = {}
L1_208.max_time_step = 0.01
L1_208.sleep_speed = 0.04
L1_208.damping = 0
L1_208.water_damping = 0
L1_208.water_resistance = 1000
L1_208.water_density = 1000
L1_208.mass = 1
L1_208.density = 20
L0_207.PhysParams = L1_208
AICrate = L0_207
L0_207 = AICrate
function L1_208(A0_209)
  if A0_209.ModelName ~= A0_209.Properties.objModel then
    A0_209.ModelName = A0_209.Properties.objModel
    A0_209:LoadObject(A0_209.ModelName, 0, 1)
  end
  A0_209:CreateRigidBody(A0_209.Properties.Density, A0_209.Properties.Mass, 0)
  A0_209:EnablePhysics(1)
  A0_209.PhysParams.mass = A0_209.Properties.Mass
  A0_209.PhysParams.density = A0_209.Properties.Density
  A0_209:SetPhysicParams(PHYSICPARAM_SIMULATION, A0_209.PhysParams)
  A0_209:SetPhysicParams(PHYSICPARAM_BUOYANCY, A0_209.PhysParams)
  A0_209:AwakePhysics(0)
  A0_209:DrawObject(0, 1)
end
L0_207.OnPropertyChange = L1_208
L0_207 = AICrate
function L1_208(A0_210)
  A0_210:Activate(0)
  A0_210:SetUpdateType(eUT_Physics)
  A0_210:OnPropertyChange()
  AI:RegisterWithAI(A0_210.id, AIAnchor.AIOBJECT_CARRY_CRATE)
end
L0_207.OnInit = L1_208
L0_207 = AICrate
function L1_208(A0_211, A1_212, A2_213)
end
L0_207.OnEvent = L1_208
L0_207 = AICrate
function L1_208(A0_214)
  local L1_215
end
L0_207.OnShutDown = L1_208
