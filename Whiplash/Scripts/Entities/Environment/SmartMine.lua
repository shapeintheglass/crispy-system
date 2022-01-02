local L0_5286, L1_5287, L2_5288, L3_5289
L0_5286 = {}
L0_5286.type = "SmartMine"
L1_5287 = {}
L1_5287.object_Model = "engine/engineassets/objects/default.cgf"
L1_5287.MaterialArmed = "Materials/basecolors/base_red_firebrick"
L1_5287.MaterialDisarmed = "Materials/basecolors/base_green_bright"
L2_5288 = {}
L2_5288.x = 5
L2_5288.y = 5
L2_5288.z = 3
L1_5287.vTriggerBox = L2_5288
L1_5287.fTriggerToDetonateDelay = 0.75
L1_5287.fDetonationRadius = 2.5
L1_5287.ExplosionType = "SmartMineExplosive"
L1_5287.Damage = 980
L2_5288 = {}
L2_5288.bStatic = 0
L2_5288.fJumpImpulse = 5000
L1_5287.Physics = L2_5288
L2_5288 = {}
L3_5289 = {}
L3_5289.x = 1
L3_5289.y = 0
L3_5289.z = 0
L2_5288.clrDiffuse = L3_5289
L2_5288.fDiffuseMultiplier = 1
L2_5288.fSpecularMultiplier = 1
L2_5288.fHDRDynamic = 0
L1_5287.LightArmed = L2_5288
L2_5288 = {}
L3_5289 = {}
L3_5289.x = 0
L3_5289.y = 1
L3_5289.z = 0
L2_5288.clrDiffuse = L3_5289
L2_5288.fDiffuseMultiplier = 1
L2_5288.fSpecularMultiplier = 1
L2_5288.fHDRDynamic = 0
L1_5287.LightDisarmed = L2_5288
L2_5288 = {}
L2_5288.esSmartMineType = "Cell"
L1_5287.Audio = L2_5288
L0_5286.Properties = L1_5287
L1_5287 = {}
L1_5287.Icon = "mine.bmp"
L0_5286.Editor = L1_5287
L1_5287 = {}
L0_5286.Client = L1_5287
L1_5287 = {}
L0_5286.Server = L1_5287
SmartMine = L0_5286
L0_5286 = SmartMine
function L1_5287(A0_5290)
  local L1_5291
end
L0_5286.OnPropertyChange = L1_5287
L0_5286 = SmartMine
L0_5286 = L0_5286.Server
function L1_5287(A0_5292, A1_5293)
  if A1_5293.type ~= "collision" and A1_5293.damage > 0 then
    Game.SendEventToGameObject(A0_5292.id, "detonate")
    BroadcastEvent(A0_5292, "Exploded")
    if A1_5293.shooterId then
      A0_5292.detonatedByEntity = A1_5293.shooterId
    end
  end
end
L0_5286.OnHit = L1_5287
L0_5286 = SmartMine
function L1_5287(A0_5294)
  Game.SendEventToGameObject(A0_5294.id, "enable")
end
L0_5286.Event_Enable = L1_5287
L0_5286 = SmartMine
function L1_5287(A0_5295)
  Game.SendEventToGameObject(A0_5295.id, "disable")
end
L0_5286.Event_Disable = L1_5287
L0_5286 = SmartMine
function L1_5287(A0_5296)
  BroadcastEvent(A0_5296, "Exploded")
end
L0_5286.OnExploded = L1_5287
L0_5286 = SmartMine
L1_5287 = {}
L2_5288 = {}
L3_5289 = {
  SmartMine.Event_Enable,
  "any"
}
L2_5288.Enable = L3_5289
L3_5289 = {
  SmartMine.Event_Disable,
  "any"
}
L2_5288.Disable = L3_5289
L1_5287.Inputs = L2_5288
L2_5288 = {}
L2_5288.Exploded = "bool"
L1_5287.Outputs = L2_5288
L0_5286.FlowEvents = L1_5287
