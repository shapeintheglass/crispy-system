Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
ArkOperatorMining_x = {
  ActionController = "Animations/Mannequin/ADB/Ai_RecyclerRobot_ControllerDefs.xml",
  AnimDatabase3P = "Animations/Mannequin/ADB/Ai_RecyclerRobot_Database.adb",
  physicsParams = {
    mass = 300,
    Living = {mass = 300}
  },
  gameParams = {
    stance = {
      {
        stanceId = STANCE_STAND,
        normalSpeed = 1,
        maxSpeed = 50,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0
        },
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        name = "stand",
        useCapsule = 1
      },
      {
        stanceId = STANCE_HOVER,
        normalSpeed = 1,
        maxSpeed = 50,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0
        },
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        name = "hover",
        useCapsule = 1
      },
      {
        stanceId = STANCE_CORRUPTED,
        normalSpeed = 1,
        maxSpeed = 50,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0
        },
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        name = "corrupted",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ALERTED,
        normalSpeed = 1,
        maxSpeed = 50,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0
        },
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        name = "alerted",
        useCapsule = 1
      },
      {
        stanceId = STANCE_RELAXED,
        normalSpeed = 1,
        maxSpeed = 50,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0
        },
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        heightPivot = 0,
        name = "relaxed",
        useCapsule = 1
      }
    }
  },
  Properties = {
    npcAbilityContext_RecycleAttackAbilityId = "2000001",
    gameeffect_armoredGameEffectId = "9000",
    gameeffect_hostileToDamageGameEffectId = "10000",
    gameeffect_fastTurnGameEffectId = "30000",
    attachmenteffects_operatorSuction = "4231073014663609177",
    ArkWeapon = {
      attachmenteffects_operatorArmIdleEffect = "2428940965279544626",
      attachmenteffects_operatorArmEffect = "2428940965279544716",
      attachmenteffects_operatorArmAttackEffect = "2428940965279544739"
    }
  },
  AIMovementAbility = {optimalFlightHeight = 0.25}
}
function ArkOperatorMining_x.GetUsable(A0_1739)
  local L1_1740
  L1_1740 = {}
  if A0_1739.arknpc:IsDead() then
    if A0_1739.arknpc:IsDestroyed() then
      ({}).ActionType = "ScriptDefined"
      L1_1740.Loot, ({}).DisplayText = {}, A0_1739.Properties.ArkInteractMessages.textDeadInteractText
      return L1_1740
    end
  else
    if A0_1739.alternateDisplayText then
      ({}).ActionType = "ScriptDefined"
      L1_1740.Use, ({}).DisplayText = {}, A0_1739.alternateDisplayText
    elseif A0_1739.arknpc:HasUseDialog() and not A0_1739.arknpc:IsBroken() then
      ({}).ActionType = "ScriptDefined"
      L1_1740.Use, ({}).DisplayText = {}, A0_1739.Properties.ArkInteractMessages.textAliveInteractText
    end
    if A0_1739.Properties.ArkPet.bAlwaysLootable then
      ({}).ActionType = "ScriptDefined"
      L1_1740.Loot, ({}).DisplayText = {}, A0_1739.Properties.ArkInteractMessages.textDeadInteractText
    end
    if not A0_1739.arknpc:IsHacked() and not ArkFaction:IsEntityFriendlyToEntity(A0_1739:GetRawId(), g_localActor:GetRawId()) and (not ArkFaction:IsEntityHostileToEntity(A0_1739:GetRawId(), g_localActor:GetRawId()) or not (A0_1739.arknpc:GetAttentionLevelOnPlayer() == ATTENTIONLEVEL_KNOWN) or A0_1739.arknpc:IsGlooed() or bIsDisabled or not not A0_1739.arknpc:IsStunned()) then
      L1_1740["Hold Use"], ({}).ActionType = {}, "Hack"
    end
    return L1_1740
  end
  return L1_1740
end
mergef(ArkOperatorMining_x, AIBase, 1)
