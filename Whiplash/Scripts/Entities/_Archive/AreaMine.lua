local L0_248, L1_249, L2_250
L0_248 = {}
L0_248.type = "Mine"
L0_248.MapVisMask = 0
L1_249 = {}
L1_249.bEnabled = 1
L0_248.Properties = L1_249
L1_249 = {}
L1_249.Model = "Objects/Editor/T.cgf"
L0_248.Editor = L1_249
L1_249 = {}
L1_249.pos = nil
L1_249.damage = 1000
L1_249.rmin = 2
L1_249.rmax = 20.5
L1_249.radius = 3
L1_249.impulsive_pressure = 200
L1_249.shooter = nil
L1_249.weapon = nil
L0_248.ExplosionParams = L1_249
L0_248.mine_triggered = nil
L0_248.Enabled = 1
AreaMine = L0_248
L0_248 = AreaMine
function L1_249(A0_251)
  A0_251:OnReset()
end
L0_248.OnPropertyChange = L1_249
L0_248 = AreaMine
function L1_249(A0_252)
  A0_252:Activate(0)
  A0_252:OnReset()
end
L0_248.OnInit = L1_249
L0_248 = AreaMine
function L1_249(A0_253)
  local L1_254
end
L0_248.OnShutDown = L1_249
L0_248 = AreaMine
function L1_249(A0_255)
  A0_255.Enabled = A0_255.Properties.bEnabled
  A0_255:RegisterState("Waiting")
  A0_255:RegisterState("Dead")
  A0_255:GotoState("Waiting")
end
L0_248.OnReset = L1_249
L0_248 = AreaMine
function L1_249(A0_256, A1_257)
  if A0_256.Enabled then
    A0_256:Explode()
    A0_256:GotoState("Dead")
  end
  BroadcastEvent(A0_256, "Trigger")
end
L0_248.Event_Explode = L1_249
L0_248 = AreaMine
L1_249 = {}
function L2_250(A0_258)
  local L1_259
end
L1_249.OnBeginState = L2_250
L0_248.Dead = L1_249
L0_248 = AreaMine
L1_249 = {}
function L2_250(A0_260)
  local L1_261
end
L1_249.OnBeginState = L2_250
function L2_250(A0_262, A1_263, A2_264)
  A0_262:SetPos(A1_263:GetPos())
  A0_262:Explode(A0_262)
end
L1_249.OnEnterArea = L2_250
L0_248.Waiting = L1_249
L0_248 = AreaMine
function L1_249(A0_265)
  local L1_266, L2_267
  L1_266 = {}
  L1_266.x = 0
  L1_266.y = 0
  L1_266.z = -0.1
  L2_267 = A0_265.GetPos
  L2_267 = L2_267(A0_265)
  ExecuteMaterial(L2_267, L1_266, Materials.mat_default.projectile_hit, 1)
  A0_265.ExplosionParams.pos = L2_267
  A0_265.ExplosionParams.shooter = A0_265
  A0_265:GotoState("Dead")
  Server:RemoveEntity(A0_265.id)
  Game:CreateExplosion(A0_265.ExplosionParams)
end
L0_248.Explode = L1_249
L0_248 = AreaMine
L1_249 = {}
L2_250 = {}
L2_250.Explode = {
  AreaMine.Event_Explode,
  "bool"
}
L1_249.Inputs = L2_250
L2_250 = {}
L2_250.Explode = "bool"
L1_249.Outputs = L2_250
L0_248.FlowEvents = L1_249
