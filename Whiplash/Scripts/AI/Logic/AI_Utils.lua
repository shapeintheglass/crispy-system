Script.ReloadScript("Scripts/Entities/AI/AITerritory.lua")
AI_Utils = {}
function AI_Utils.VerifyGroupBlackBoard(A0_60, A1_61)
  local L2_62
  L2_62 = AIBlackBoard
  L2_62 = L2_62[A1_61]
  if not L2_62 then
    L2_62 = AIBlackBoard
    L2_62[A1_61] = {}
  end
end
function AI_Utils.SetupTerritory(A0_63, A1_64)
  local L2_65
  L2_65 = A1_64.PropertiesInstance
  L2_65 = L2_65.AITerritoryAndWave
  L2_65 = L2_65.aiterritory_Territory
  if L2_65 == "<None>" then
    AI.SetTerritoryShapeName(A1_64.id, "<None>")
    A1_64.AI.TerritoryShape = nil
    A1_64.AI.Wave = nil
    return
  end
  if not L2_65 or L2_65 == "" or L2_65 == "<Auto>" then
    L2_65 = AI.GetEnclosingGenericShapeOfType(A1_64:GetPos(), AIAnchorTable.COMBAT_TERRITORY, 1)
  end
  if L2_65 and L2_65 ~= "" then
    AI.SetTerritoryShapeName(A1_64.id, L2_65)
  else
    AI.SetTerritoryShapeName(A1_64.id, "<None>")
    A1_64.AI.TerritoryShape = nil
    A1_64.AI.Wave = nil
    return
  end
  A1_64.AI.TerritoryShape = L2_65
  A1_64.AI.Wave = nil
  AddToTerritoryAndWave(A1_64)
end
function AI_Utils.SetupStandby(A0_66, A1_67, A2_68)
  A1_67.AI.StandbyShape = AI.GetEnclosingGenericShapeOfType(A1_67:GetPos(), AIAnchorTable.ALERT_STANDBY_IN_RANGE, 0)
  if A2_68 and A2_68 == true and not A1_67.AI.StandbyShape then
    A1_67.AI.StandbyShape = AI.CreateTempGenericShapeBox(A1_67:GetPos(), 15, 0, AIAnchorTable.ALERT_STANDBY_IN_RANGE)
  end
  if A1_67.AI.StandbyShape then
    AI.SetRefShapeName(A1_67.id, A1_67.AI.StandbyShape)
  else
    AI.SetRefShapeName(A1_67.id, "")
  end
end
function AI_Utils.CanThrowGrenade(A0_69, A1_70, A2_71)
  local L3_72, L4_73
  L3_72 = AIBlackBoard
  L3_72 = L3_72.lastGrenadeTime
  if not L3_72 then
    L3_72 = AIBlackBoard
    L4_73 = _time
    L4_73 = L4_73 - 20
    L3_72.lastGrenadeTime = L4_73
  end
  L3_72 = _time
  L4_73 = AIBlackBoard
  L4_73 = L4_73.lastGrenadeTime
  L3_72 = L3_72 - L4_73
  if L3_72 < 9 then
    L4_73 = 0
    return L4_73
  end
  if A2_71 == nil then
    L4_73 = AI
    L4_73 = L4_73.GetTargetType
    L4_73 = L4_73(A1_70.id)
    if L4_73 ~= AITARGET_MEMORY and L4_73 ~= AITARGET_ENEMY then
      return 0
    end
    if AI.GetAttentionTargetDistance(A1_70.id) < 10 or AI.GetAttentionTargetDistance(A1_70.id) > 45 then
      return 0
    end
  end
  L4_73 = A1_70.inventory
  L4_73 = L4_73.GetGrenadeWeaponByClass
  L4_73 = L4_73(L4_73, "AIGrenades")
  if A2_71 then
    L4_73 = A1_70.inventory:GetGrenadeWeaponByClass("AISmokeGrenades")
    if L4_73 == nil then
      return 0
    end
  elseif L4_73 == nil then
    L4_73 = A1_70.inventory:GetGrenadeWeaponByClass("AIFlashbangs")
    if L4_73 == nil then
      return 0
    end
  end
  if System.GetEntity(L4_73) == nil then
    return 0
  end
  if 0 >= System.GetEntity(L4_73).weapon:GetAmmoCount() then
    return 0
  end
  AIBlackBoard.lastGrenadeTime = _time
  return 1
end
function AI_Utils.CanThrowSmokeGrenade(A0_74, A1_75)
  local L2_76, L3_77, L4_78, L5_79
  L2_76 = AIBlackBoard
  L2_76 = L2_76.lastSmokeGrenadeTime
  if not L2_76 then
    L2_76 = AIBlackBoard
    L3_77 = _time
    L3_77 = L3_77 - 40
    L2_76.lastSmokeGrenadeTime = L3_77
  end
  L2_76 = _time
  L3_77 = AIBlackBoard
  L3_77 = L3_77.lastSmokeGrenadeTime
  L2_76 = L2_76 - L3_77
  if L2_76 < 30 then
    L3_77 = 0
    return L3_77
  end
  L3_77 = AI
  L3_77 = L3_77.GetTargetType
  L4_78 = A1_75.id
  L3_77 = L3_77(L4_78)
  L4_78 = AITARGET_MEMORY
  if L3_77 ~= L4_78 then
    L4_78 = AITARGET_ENEMY
    if L3_77 ~= L4_78 then
      L4_78 = 0
      return L4_78
    end
  end
  L4_78 = AI
  L4_78 = L4_78.GetAttentionTargetDistance
  L5_79 = A1_75.id
  L4_78 = L4_78(L5_79)
  if L4_78 < 20 or L4_78 > 60 then
    L5_79 = 0
    return L5_79
  end
  L5_79 = A1_75.inventory
  L5_79 = L5_79.GetGrenadeWeaponByClass
  L5_79 = L5_79(L5_79, "AISmokeGrenades")
  if L5_79 == nil then
    return 0
  end
  if System.GetEntity(L5_79) == nil then
    return 0
  end
  if 0 >= System.GetEntity(L5_79).weapon:GetAmmoCount() then
    return 0
  end
  AIBlackBoard.lastSmokeGrenadeTime = _time
  return 1
end
function AI_Utils.HasPlayerAsAttentionTarget(A0_80, A1_81)
  if AI.GetAttentionTargetAIType(A1_81) == AIOBJECT_PLAYER then
    return true
  end
  return false
end
function AI_Utils.AttentionTargetIsPlayerOrAssociatedWithPlayer(A0_82, A1_83)
  if AI.GetAttentionTargetAIType(A1_83) == AIOBJECT_PLAYER then
    return true
  elseif AI.GetAttentionTargetAIType(A1_83) == AIOBJECT_DUMMY and AI.GetAttentionTargetEntity(A1_83) ~= nil and AI.GetTypeOf(AI.GetAttentionTargetEntity(A1_83).id) == AIOBJECT_PLAYER then
    return true
  end
  return false
end
function AI_Utils.AttentionTargetIsTurretOrAssociatedWithTurret(A0_84, A1_85)
  if (AI.GetAttentionTargetAIType(A1_85) == AIOBJECT_TARGET or AI.GetAttentionTargetAIType(A1_85) == AIOBJECT_DUMMY) and AI.GetAttentionTargetEntity(A1_85) ~= nil and System.GetEntityClass(AI.GetAttentionTargetEntity(A1_85).id) == "Turret" then
    return true
  end
  return false
end
function GetTargetElevationAngleInDegrees(A0_86)
  local L1_87, L2_88, L3_89, L4_90
  if A0_86 == nil then
    L1_87 = 0
    return L1_87
  end
  L1_87 = g_Vectors
  L1_87 = L1_87.temp_v1
  L2_88 = AI
  L2_88 = L2_88.GetAttentionTargetPosition
  L3_89 = A0_86.id
  L4_90 = L1_87
  L2_88 = L2_88(L3_89, L4_90)
  if not L2_88 then
    L2_88 = 0
    return L2_88
  end
  L3_89 = A0_86
  L2_88 = A0_86.GetWorldPos
  L4_90 = g_Vectors
  L4_90 = L4_90.temp_v2
  L2_88 = L2_88(L3_89, L4_90)
  L3_89 = GetDirection
  L4_90 = L2_88
  L3_89 = L3_89(L4_90, L1_87)
  L4_90 = GetAngleBetweenVectors
  L4_90 = L4_90(g_Vectors.down, L3_89)
  return math.deg(L4_90) - 90
end
function SetTimerForBehaviorFunction(A0_91, A1_92, A2_93, A3_94, A4_95)
  local L5_96
  L5_96 = {}
  L5_96.behavior = A2_93
  L5_96.entity = A3_94
  L5_96.extraData = A4_95
  if A3_94.AI.behaviorFuntions == nil then
    A3_94.AI.behaviorFuntions = {}
  end
  A3_94.AI.behaviorFuntions[Script.SetTimerForFunction(A0_91, "OnBehaviorFunctionTimerDone", L5_96)] = A1_92
  return (Script.SetTimerForFunction(A0_91, "OnBehaviorFunctionTimerDone", L5_96))
end
function OnBehaviorFunctionTimerDone(A0_97, A1_98)
  A0_97.entity.AI.behaviorFuntions[A1_98](A0_97.behavior, A0_97.entity, A0_97.extraData)
  A0_97.entity.AI.behaviorFuntions[A1_98] = nil
end
function SafeKillBehaviorTimer(A0_99, A1_100)
  if A1_100 and A0_99.AI.behaviorFuntions and A0_99.AI.behaviorFuntions[A1_100] then
    A0_99.AI.behaviorFuntions[A1_100] = nil
    Script.KillTimer(A1_100)
  end
end
