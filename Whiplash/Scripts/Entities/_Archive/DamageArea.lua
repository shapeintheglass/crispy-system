local L0_483, L1_484, L2_485, L3_486
L0_483 = {}
L0_483.type = "DamageArea"
L1_484 = {}
L1_484.damageRate = 5
L1_484.bEnabled = 1
L0_483.Properties = L1_484
L1_484 = {}
L1_484.Model = "Objects/Editor/T.cgf"
L0_483.Editor = L1_484
L0_483.curDamageRate = 0
L0_483.curDamage = 0
L0_483.isEnabled = 1
L1_484 = {}
L2_485 = {}
L2_485.x = 0
L2_485.y = 0
L2_485.z = 1
L1_484.dir = L2_485
L1_484.damage = 0
L1_484.target = nil
L1_484.shooter = nil
L1_484.landed = 1
L1_484.impact_force_mul_final = 5
L1_484.impact_force_mul = 5
L1_484.damage_type = "normal"
L0_483.hit = L1_484
DamageArea = L0_483
L0_483 = DamageArea
function L1_484(A0_487)
  A0_487:RegisterState("Inactive")
  A0_487:RegisterState("Active")
  A0_487:GotoState("Inactive")
end
L0_483.CliSrv_OnInit = L1_484
L0_483 = DamageArea
function L1_484(A0_488, A1_489, A2_490, A3_491)
  A0_488:GotoState("Inactive")
  A0_488.isEnabled = A0_488.Properties.bEnabled
end
L0_483.OnReset = L1_484
L0_483 = DamageArea
function L1_484(A0_492, A1_493, A2_494, A3_495)
  local L4_496
  L4_496 = A0_492.Properties
  L4_496 = L4_496.damageRate
  L4_496 = L4_496 * A3_495
  A0_492.curDamageRate = L4_496
end
L0_483.OnProceedFadeAreaClient = L1_484
L0_483 = DamageArea
function L1_484(A0_497, A1_498, A2_499)
  System.LogToConsole("--> Entering DamageArea Area " .. A2_499)
  A0_497:GotoState("Active")
end
L0_483.OnEnterAreaClient = L1_484
L0_483 = DamageArea
function L1_484(A0_500, A1_501, A2_502)
  System.LogToConsole("--> Leaving DamageArea Area " .. A2_502)
  A0_500:GotoState("Inactive")
end
L0_483.OnLeaveAreaClient = L1_484
L0_483 = DamageArea
function L1_484(A0_503, A1_504)
  if A0_503.isEnabled == 0 then
    return
  end
  A0_503.curDamage = A0_503.curDamage + A0_503.curDamageRate * A1_504
  if A0_503.curDamage > 1 then
    A0_503.hit.damage = A0_503.curDamage
    A0_503.hit.target = _localplayer
    A0_503.hit.shooter = _localplayer
    A0_503.hit.dir = {
      x = 0,
      y = 0,
      z = 1
    }
    A0_503.hit.landed = 1
    A0_503.hit.impact_force_mul_final = 0
    A0_503.hit.impact_force_mul = 0
    A0_503.hit.damage_type = "normal"
    _localplayer:Damage(A0_503.hit)
    A0_503.curDamage = 0
  end
end
L0_483.OnUpdateActiveClient = L1_484
L0_483 = DamageArea
function L1_484(A0_505)
  local L1_506
end
L0_483.OnShutDown = L1_484
L0_483 = DamageArea
L1_484 = {}
function L2_485(A0_507)
  A0_507:CliSrv_OnInit()
end
L1_484.OnInit = L2_485
function L2_485(A0_508)
  local L1_509
end
L1_484.OnShutDown = L2_485
L2_485 = {}
L1_484.Inactive = L2_485
L2_485 = {}
function L3_486(A0_510)
  local L1_511
end
L2_485.OnBeginState = L3_486
L1_484.Active = L2_485
L0_483.Server = L1_484
L0_483 = DamageArea
L1_484 = {}
function L2_485(A0_512)
  A0_512:CliSrv_OnInit()
end
L1_484.OnInit = L2_485
function L2_485(A0_513)
  local L1_514
end
L1_484.OnShutDown = L2_485
L2_485 = {}
L3_486 = DamageArea
L3_486 = L3_486.OnEnterAreaClient
L2_485.OnEnterArea = L3_486
L1_484.Inactive = L2_485
L2_485 = {}
function L3_486(A0_515)
  A0_515:Activate(1)
  A0_515.curDamage = 0
end
L2_485.OnBeginState = L3_486
L3_486 = DamageArea
L3_486 = L3_486.OnLeaveAreaClient
L2_485.OnLeaveArea = L3_486
L3_486 = DamageArea
L3_486 = L3_486.OnProceedFadeAreaClient
L2_485.OnProceedFadeArea = L3_486
L3_486 = DamageArea
L3_486 = L3_486.OnUpdateActiveClient
L2_485.OnUpdate = L3_486
L1_484.Active = L2_485
L0_483.Client = L1_484
L0_483 = DamageArea
function L1_484(A0_516, A1_517)
  A0_516.isEnabled = 1
end
L0_483.Event_Enable = L1_484
L0_483 = DamageArea
function L1_484(A0_518, A1_519)
  A0_518.isEnabled = 0
end
L0_483.Event_Disable = L1_484
L0_483 = DamageArea
L1_484 = {}
L2_485 = {}
L3_486 = {
  DamageArea.Event_Disable,
  "bool"
}
L2_485.Disable = L3_486
L3_486 = {
  DamageArea.Event_Enable,
  "bool"
}
L2_485.Enable = L3_486
L1_484.Inputs = L2_485
L2_485 = {}
L2_485.Disable = "bool"
L2_485.Enable = "bool"
L1_484.Outputs = L2_485
L0_483.FlowEvents = L1_484
