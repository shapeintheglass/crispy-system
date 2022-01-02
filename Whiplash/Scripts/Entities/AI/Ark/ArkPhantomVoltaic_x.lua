Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
ArkPhantomVoltaic_x = {
  Properties = {useSpecialMovementTransitions = 1, specialMovementTransitionsLibOverride = "ArkBeta"},
  AIMovementAbility = {
    walkSpeed = 2,
    runSpeed = 2.5,
    sprintSpeed = 2.5,
    maneuverSpeed = 2,
    maxAccel = 2.6,
    maxDecel = 1.13,
    directionalScaleRefSpeedMin = 1.13,
    directionalScaleRefSpeedMax = 2.6,
    directionalScaleTurn = 0.5,
    directionalScaleStrafe = 0.5,
    directionalScaleSlope = 0.083333,
    AIMovementSpeeds = {
      Relaxed = {
        Slow = {
          2,
          0,
          2
        },
        Walk = {
          2,
          0,
          2
        },
        Run = {
          2,
          0,
          2
        },
        Sprint = {
          2,
          0,
          2
        }
      },
      Alerted = {
        Slow = {
          2.5,
          0,
          2.5
        },
        Walk = {
          2.5,
          0,
          2.5
        },
        Run = {
          2.5,
          0,
          2.5
        },
        Sprint = {
          2.5,
          0,
          2.5
        }
      },
      Combat = {
        Slow = {
          2.5,
          0,
          2.5
        },
        Walk = {
          2.5,
          0,
          2.5
        },
        Run = {
          2.5,
          0,
          2.5
        },
        Sprint = {
          2.5,
          0,
          2.5
        }
      }
    }
  },
  PropertiesInstance = {bSpawnHumanLoot = true}
}
mergef(ArkPhantomVoltaic_x, AIBase, 1)
function ArkPhantomVoltaic_x.IsInvulnerable(A0_1757)
  local L1_1758
  L1_1758 = A0_1757.PropertiesInstance
  L1_1758 = L1_1758.bIsInvulnerable
  L1_1758 = L1_1758 == true
  return L1_1758
end
function ArkPhantomVoltaic_x.OnDeathCustom(A0_1759, A1_1760)
  if A0_1759.UpdateDisplayName then
    A0_1759:UpdateDisplayName()
  end
  ArkNpc.OnDeathCustom(A0_1759, A1_1760)
end
function ArkPhantomVoltaic_x.OnLureSignal(A0_1761, A1_1762, A2_1763, A3_1764)
  A0_1761.arknpc:OnLured(A1_1762)
end
function ArkPhantomVoltaic_x.OnSpawn(A0_1765, A1_1766)
  BasicActor.OnSpawn(A0_1765, A1_1766)
  A0_1765:Activate(1)
end
function ArkPhantomVoltaic_x.OnUpdate(A0_1767, A1_1768)
end
function ArkPhantomVoltaic_x.Server.OnStartGame(A0_1769)
  if not A0_1769.arknpc:IsDead() then
    A0_1769.arknpc:AttachGameEffect(4)
    A0_1769.arknpc:AttachGameEffect(6)
  end
end
function ArkPhantomVoltaic_x.OnNpcKilled(A0_1770)
  A0_1770.arknpc:DetachGameEffect(4)
  A0_1770.arknpc:DetachGameEffect(6)
  A0_1770:SetupInventoryOnDeath()
  if A0_1770.PropertiesInstance.bSpawnHumanLoot then
    A0_1770.Properties.loottables_HumanLootTable:gsub("([^,]+)", function(A0_1771)
      local L2_1772
      L2_1772 = _UPVALUE0_
      L2_1772[#_UPVALUE0_ + 1] = A0_1771
    end)
    if #{} > 0 then
      Ark.SpawnLootFromTable(({})[math.random(#{})], A0_1770.id)
    end
  end
end
