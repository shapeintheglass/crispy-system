local L0_982, L1_983, L2_984, L3_985
L0_982 = {}
L0_982.type = "Mine"
L0_982.MapVisMask = 0
L1_983 = {}
L1_983.Radius = 4
L1_983.bEnabled = 1
L1_983.Delay = 2
L1_983.bOnlyPlayer = 1
L1_983.fileActivationSound = "SOUNDS/items/nvisionactivate.wav"
L1_983.fileModel = "Objects/Pickups/Health/Medikit.cgf"
L1_983.nExplosionDamage = 300
L0_982.Properties = L1_983
L1_983 = {}
L1_983.pos = nil
L1_983.damage = 100
L1_983.rmin = 2
L1_983.rmax = 20.5
L1_983.radius = 3
L1_983.impulsive_pressure = 200
L1_983.shooter = nil
L1_983.weapon = nil
L0_982.ExplosionParams = L1_983
L0_982.mine_triggered = nil
L0_982.activation_sound = nil
L0_982.Who = nil
L0_982.Enabled = 1
ProximityMine = L0_982
L0_982 = ProximityMine
function L1_983(A0_986)
  A0_986:OnReset()
end
L0_982.OnPropertyChange = L1_983
L0_982 = ProximityMine
function L1_983(A0_987)
  A0_987:Activate(0)
  A0_987:TrackColliders(1)
  A0_987:LoadObject(A0_987.Properties.fileModel, 0, 1)
  A0_987:CreateStaticEntity(10, 100)
  A0_987:OnReset()
end
L0_982.OnInit = L1_983
L0_982 = ProximityMine
function L1_983(A0_988)
  local L1_989
end
L0_982.OnShutDown = L1_983
L0_982 = ProximityMine
function L1_983(A0_990)
  local L1_991, L2_992
  L1_991 = {}
  L2_992 = A0_990.Properties
  L2_992 = L2_992.Radius
  L2_992 = -L2_992
  L2_992 = L2_992 / 2
  L1_991.x = L2_992
  L2_992 = A0_990.Properties
  L2_992 = L2_992.Radius
  L2_992 = -L2_992
  L2_992 = L2_992 / 2
  L1_991.y = L2_992
  L2_992 = A0_990.Properties
  L2_992 = L2_992.Radius
  L2_992 = -L2_992
  L2_992 = L2_992 / 2
  L1_991.z = L2_992
  L2_992 = {}
  L2_992.x = A0_990.Properties.Radius / 2
  L2_992.y = A0_990.Properties.Radius / 2
  L2_992.z = A0_990.Properties.Radius / 2
  A0_990:SetBBox(L1_991, L2_992)
  A0_990:DrawObject(0, 1)
  A0_990.Enabled = A0_990.Properties.bEnabled
  A0_990.activation_sound = Sound.Load3DSound(A0_990.Properties.fileActivationSound)
  A0_990.Who = nil
  A0_990.Died = 0
  A0_990:GotoState("Waiting")
end
L0_982.OnReset = L1_983
L0_982 = ProximityMine
function L1_983(A0_993, A1_994)
  A0_993.Enabled = 1
  BroadcastEvent(A0_993, "Enable")
end
L0_982.Event_Enable = L1_983
L0_982 = ProximityMine
function L1_983(A0_995, A1_996)
  A0_995.Enabled = 0
  BroadcastEvent(A0_995, "Disable")
end
L0_982.Event_Disable = L1_983
L0_982 = ProximityMine
function L1_983(A0_997, A1_998)
  if A0_997.Enabled then
    A0_997:Explode()
    A0_997:GotoState("Dead")
  end
  BroadcastEvent(A0_997, "Trigger")
end
L0_982.Event_Explode = L1_983
L0_982 = ProximityMine
function L1_983(A0_999, A1_1000)
  local L2_1001
  L2_1001 = A0_999.Properties
  L2_1001 = L2_1001.bOnlyPlayer
  if L2_1001 ~= 0 then
    L2_1001 = A1_1000.type
    if L2_1001 ~= "Player" then
      L2_1001 = 0
      return L2_1001
    end
  end
  L2_1001 = 1
  return L2_1001
end
L0_982.IsValid = L1_983
L0_982 = ProximityMine
L1_983 = {}
function L2_984(A0_1002)
  A0_1002.Died = 1
  A0_1002:DrawObject(0, 0)
end
L1_983.OnBeginState = L2_984
L0_982.Dead = L1_983
L0_982 = ProximityMine
L1_983 = {}
function L2_984(A0_1003)
  local L1_1004
  A0_1003.Who = nil
  A0_1003.sound_played = nil
end
L1_983.OnBeginState = L2_984
function L2_984(A0_1005, A1_1006, A2_1007)
  A0_1005:SetPos(A1_1006:GetPos())
  A0_1005:Explode(A0_1005)
end
L1_983.OnEnterArea = L2_984
function L2_984(A0_1008, A1_1009)
  if A0_1008.Enabled ~= 1 then
    return
  end
  if A0_1008:IsValid(A1_1009) == 0 then
    return
  end
  A0_1008.Who = A1_1009
  if A0_1008.mine_triggered == nil then
    if A0_1008.activation_sound == nil then
      System.LogToConsole("Activation sound is nil")
    end
    Sound.SetSoundPosition(A0_1008.activation_sound, A0_1008:GetPos())
    Sound.PlaySound(A0_1008.activation_sound)
    A0_1008.mine_triggered = 1
    A0_1008:SetTimer(A0_1008.Properties.Delay * 1000 + 1)
  end
end
L1_983.OnEnterArea = L2_984
function L2_984(A0_1010)
  A0_1010:Event_Explode(A0_1010)
end
L1_983.OnTimer = L2_984
function L2_984(A0_1011, A1_1012)
  A0_1011:Event_Explode(A1_1012.shooter)
end
L1_983.OnDamage = L2_984
L0_982.Waiting = L1_983
L0_982 = ProximityMine
function L1_983(A0_1013)
  local L1_1014, L2_1015
  L1_1014 = {}
  L1_1014.x = 0
  L1_1014.y = 0
  L1_1014.z = -0.1
  L2_1015 = A0_1013.GetPos
  L2_1015 = L2_1015(A0_1013)
  ExecuteMaterial(L2_1015, L1_1014, Materials.mat_default.projectile_hit, 1)
  A0_1013.ExplosionParams.pos = L2_1015
  A0_1013.ExplosionParams.shooter = A0_1013
  A0_1013:GotoState("Dead")
  A0_1013.ExplosionParams.damage = A0_1013.Properties.nExplosionDamage
  Game:CreateExplosion(A0_1013.ExplosionParams)
end
L0_982.Explode = L1_983
L0_982 = ProximityMine
L1_983 = {}
L2_984 = {}
L3_985 = {
  ProximityMine.Event_Disable,
  "bool"
}
L2_984.Disable = L3_985
L3_985 = {
  ProximityMine.Event_Enable,
  "bool"
}
L2_984.Enable = L3_985
L3_985 = {
  ProximityMine.Event_Explode,
  "bool"
}
L2_984.Explode = L3_985
L1_983.Inputs = L2_984
L2_984 = {}
L2_984.Disable = "bool"
L2_984.Enable = "bool"
L2_984.Explode = "bool"
L1_983.Outputs = L2_984
L0_982.FlowEvents = L1_983
