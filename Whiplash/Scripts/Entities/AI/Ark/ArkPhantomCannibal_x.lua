Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
ArkPhantomCannibal_x = {
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
  }
}
mergef(ArkPhantomCannibal_x, AIBase, 1)
function ArkPhantomCannibal_x.IsInvulnerable(A0_1741)
  local L1_1742
  L1_1742 = A0_1741.PropertiesInstance
  L1_1742 = L1_1742.bIsInvulnerable
  L1_1742 = L1_1742 == true
  return L1_1742
end
function ArkPhantomCannibal_x.OnDeathCustom(A0_1743, A1_1744)
  if A0_1743.UpdateDisplayName then
    A0_1743:UpdateDisplayName()
  end
  ArkNpc.OnDeathCustom(A0_1743, A1_1744)
end
function ArkPhantomCannibal_x.OnLureSignal(A0_1745, A1_1746, A2_1747, A3_1748)
  A0_1745.arknpc:OnLured(A1_1746)
end
function ArkPhantomCannibal_x.OnSpawn(A0_1749, A1_1750)
  BasicActor.OnSpawn(A0_1749, A1_1750)
  A0_1749:Activate(1)
end
function ArkPhantomCannibal_x.OnUpdate(A0_1751, A1_1752)
end
function ArkPhantomCannibal_x.Server.OnStartGame(A0_1753)
  if not A0_1753.arknpc:IsDead() then
    A0_1753.arknpc:AttachGameEffect(6010)
  end
end
function ArkPhantomCannibal_x.OnNpcKilled(A0_1754)
  A0_1754.arknpc:DetachGameEffect(6010)
  A0_1754:SetupInventoryOnDeath()
  A0_1754.Properties.loottables_HumanLootTable:gsub("([^,]+)", function(A0_1755)
    local L2_1756
    L2_1756 = _UPVALUE0_
    L2_1756[#_UPVALUE0_ + 1] = A0_1755
  end)
  if #{} > 0 then
    Ark.SpawnLootFromTable(({})[math.random(#{})], A0_1754.id)
  end
end
