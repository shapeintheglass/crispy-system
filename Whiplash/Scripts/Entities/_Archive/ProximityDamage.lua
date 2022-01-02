local L0_894, L1_895, L2_896, L3_897
L0_894 = {}
L0_894.type = "ProximityDamage"
L1_895 = {}
L1_895.fDamageRate = 70
L1_895.bEnabled = 1
L1_895.fRadius = 3
L1_895.fHeight = 2
L1_895.bShakeOnly = 0
L1_895.bTriggerOnce = 0
L1_895.nShakeType = 0
L1_895.bSkipPlayer = 0
L1_895.bSkipAI = 0
L1_895.nDamageType = 0
L0_894.Properties = L1_895
L1_895 = {}
L1_895.Model = "Objects/Editor/T.cgf"
L0_894.Editor = L1_895
L0_894.damageTime = 0
L0_894.lastDamageTime = 0
L0_894.bTriggeredServer = 0
L0_894.bTriggeredClient = 0
ProximityDamage = L0_894
L0_894 = ProximityDamage
function L1_895(A0_898)
  A0_898:RegisterState("Inactive")
  A0_898:RegisterState("Active")
  A0_898:OnReset()
end
L0_894.CliSrv_OnInit = L1_895
L0_894 = ProximityDamage
function L1_895(A0_899)
  A0_899:OnReset()
end
L0_894.OnPropertyChange = L1_895
L0_894 = ProximityDamage
function L1_895(A0_900)
  A0_900:Activate(0)
  A0_900:SetUpdateType(eUT_Physics)
  A0_900:TrackColliders(1)
  A0_900.bTriggeredServer = 0
  A0_900.bTriggeredClient = 0
  A0_900.nNumColliders = 0
  if A0_900.Properties.bEnabled == 1 then
    A0_900:GotoState("Active")
  else
    A0_900:GotoState("Inactive")
  end
  A0_900:SetBBox({
    x = -A0_900.Properties.fRadius,
    y = -A0_900.Properties.fRadius,
    z = 0
  }, {
    x = A0_900.Properties.fRadius,
    y = A0_900.Properties.fRadius,
    z = A0_900.Properties.fHeight
  })
  A0_900.damageTime = 1 / A0_900.Properties.fDamageRate
  A0_900.lastDamageTime = _time + A0_900.damageTime
  A0_900.lastLocalTime = _time + 1
end
L0_894.OnReset = L1_895
L0_894 = ProximityDamage
function L1_895(A0_901, A1_902)
  local L2_903
  L2_903 = A0_901.bTriggeredClient
  if L2_903 == 1 then
    return
  else
    L2_903 = A0_901.Properties
    L2_903 = L2_903.bTriggerOnce
    if L2_903 == 1 then
      A0_901.bTriggeredClient = 1
    end
  end
  L2_903 = A0_901.CanBeDamaged
  L2_903 = L2_903(A0_901, A1_902)
  if L2_903 == 0 then
    return
  end
  L2_903 = _time
  L2_903 = L2_903 - A0_901.lastLocalTime
  if L2_903 <= 1 then
    return
  end
  L2_903 = _time
  L2_903 = L2_903 + 0.6
  L2_903 = L2_903 + random(1, 100) / 200
  A0_901.lastLocalTime = L2_903
  L2_903 = A0_901.Properties
  L2_903 = L2_903.nShakeType
  if L2_903 == 0 then
    L2_903 = A0_901.Properties
    L2_903 = L2_903.fDamageRate
    L2_903 = L2_903 * 2.2
    if L2_903 > 45 then
      L2_903 = 45
    end
    if random(1, 100) < 50 then
      L2_903 = -L2_903
    end
    A1_902.cnt:ShakeCamera({
      x = 0,
      y = 0,
      z = 1
    }, L2_903, 4, 0.25)
  else
    L2_903 = A1_902.cnt
    L2_903 = L2_903.ShakeCameraL
    L2_903(L2_903, 0.1, 11.73, 1.73)
  end
  L2_903 = A0_901.Properties
  L2_903 = L2_903.bShakeOnly
  if L2_903 == 0 then
    L2_903 = "MeleeDamageNormal"
    if A0_901.Properties.nDamageType == 1 then
      L2_903 = "MeleeDamageGas"
    end
    Hud:OnMeleeDamage(L2_903)
  end
end
L0_894.OnContactClient = L1_895
L0_894 = ProximityDamage
function L1_895(A0_904, A1_905)
  local L2_906
  L2_906 = A0_904.bTriggeredServer
  if L2_906 == 1 then
    return
  else
    L2_906 = A0_904.Properties
    L2_906 = L2_906.bTriggerOnce
    if L2_906 == 1 then
      A0_904.bTriggeredServer = 1
    end
  end
  L2_906 = A0_904.CanBeDamaged
  L2_906 = L2_906(A0_904, A1_905)
  if L2_906 ~= 0 then
    L2_906 = A0_904.Properties
    L2_906 = L2_906.bShakeOnly
  elseif L2_906 == 1 then
    return
  end
  L2_906 = A1_905.dmgTime
  if L2_906 == nil then
    L2_906 = _time
    L2_906 = L2_906 + A0_904.damageTime
    A1_905.dmgTime = L2_906
    return
  end
  L2_906 = _time
  L2_906 = L2_906 - A1_905.dmgTime
  if L2_906 <= 1 then
    return
  end
  L2_906 = A1_905.ai
  if L2_906 then
    L2_906 = A1_905.TriggerEvent
    L2_906(A1_905, AIEVENT_DISABLE)
  end
  L2_906 = {}
  L2_906.dir = {
    x = 0,
    y = 0,
    z = 1
  }
  L2_906.damage = A0_904.Properties.fDamageRate
  L2_906.target = A1_905
  L2_906.shooter = A1_905
  L2_906.landed = 1
  L2_906.impact_force_mul_final = 5
  L2_906.impact_force_mul = 5
  L2_906.damage_type = "normal"
  A1_905:Damage(L2_906)
  A1_905.dmgTime = _time + A0_904.damageTime
end
L0_894.OnContactServer = L1_895
L0_894 = ProximityDamage
function L1_895(A0_907)
  local L1_908
end
L0_894.OnShutDown = L1_895
L0_894 = ProximityDamage
L1_895 = {}
function L2_896(A0_909)
  A0_909:CliSrv_OnInit()
end
L1_895.OnInit = L2_896
function L2_896(A0_910)
  local L1_911
end
L1_895.OnShutDown = L2_896
L2_896 = {}
L1_895.Inactive = L2_896
L2_896 = {}
function L3_897(A0_912)
  local L1_913
end
L2_896.OnBeginState = L3_897
function L3_897(A0_914)
  A0_914:Activate(0)
end
L2_896.OnEndState = L3_897
L3_897 = ProximityDamage
L3_897 = L3_897.OnContactServer
L2_896.OnContact = L3_897
function L3_897(A0_915, A1_916)
  if A0_915:CanBeDamaged(A1_916) == 1 then
    A0_915.nNumColliders = A0_915.nNumColliders + 1
    A0_915:Activate(1)
  end
end
L2_896.OnEnterArea = L3_897
function L3_897(A0_917, A1_918)
  if A0_917:CanBeDamaged(A1_918) == 1 then
    A0_917.nNumColliders = A0_917.nNumColliders - 1
    if A0_917.nNumColliders <= 0 then
      A0_917:Activate(0)
    end
  end
end
L2_896.OnLeaveArea = L3_897
L1_895.Active = L2_896
L0_894.Server = L1_895
L0_894 = ProximityDamage
L1_895 = {}
function L2_896(A0_919)
  A0_919:CliSrv_OnInit()
end
L1_895.OnInit = L2_896
function L2_896(A0_920)
  local L1_921
end
L1_895.OnShutDown = L2_896
L2_896 = {}
L1_895.Inactive = L2_896
L2_896 = {}
function L3_897(A0_922)
  A0_922:Activate(0)
end
L2_896.OnEndState = L3_897
L3_897 = ProximityDamage
L3_897 = L3_897.OnContactClient
L2_896.OnContact = L3_897
function L3_897(A0_923, A1_924)
  if A0_923:CanBeDamaged(A1_924) == 1 then
    A0_923.nNumColliders = A0_923.nNumColliders + 1
    A0_923:Activate(1)
  end
end
L2_896.OnEnterArea = L3_897
function L3_897(A0_925, A1_926)
  if A0_925:CanBeDamaged(A1_926) == 1 then
    A0_925.nNumColliders = A0_925.nNumColliders - 1
    if A0_925.nNumColliders <= 0 then
      A0_925:Activate(0)
    end
  end
end
L2_896.OnLeaveArea = L3_897
L1_895.Active = L2_896
L0_894.Client = L1_895
L0_894 = ProximityDamage
function L1_895(A0_927, A1_928)
  A0_927:GotoState("Active")
end
L0_894.Event_Enable = L1_895
L0_894 = ProximityDamage
function L1_895(A0_929, A1_930)
  A0_929:GotoState("Inactive")
end
L0_894.Event_Disable = L1_895
L0_894 = ProximityDamage
function L1_895(A0_931, A1_932)
  if A1_932.type ~= "Player" then
    return 0
  end
  if A1_932.Properties.bTakeProximityDamage and A1_932.Properties.bTakeProximityDamage == 0 then
    return 0
  end
  if A1_932:IsDead() then
    return 0
  end
  if A1_932.Properties.bInvulnerable and A1_932.Properties.bInvulnerable == 1 then
    return 0
  end
  if A0_931.Properties.bSkipPlayer == 1 and A1_932 == _localplayer then
    return 0
  end
  if A0_931.Properties.bSkipAI == 1 and A1_932.ai ~= nil then
    return 0
  end
  return 1
end
L0_894.CanBeDamaged = L1_895
L0_894 = ProximityDamage
L1_895 = {}
L2_896 = {}
L3_897 = {
  ProximityDamage.Event_Disable,
  "bool"
}
L2_896.Disable = L3_897
L3_897 = {
  ProximityDamage.Event_Enable,
  "bool"
}
L2_896.Enable = L3_897
L1_895.Inputs = L2_896
L2_896 = {}
L2_896.Disable = "bool"
L2_896.Enable = "bool"
L1_895.Outputs = L2_896
L0_894.FlowEvents = L1_895
