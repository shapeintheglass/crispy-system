local L0_1034, L1_1035, L2_1036, L3_1037
L0_1034 = {}
L1_1035 = {}
L1_1035.objectModel = "Objects/Natural/Bushes/cliff_bush_a1.cgf"
L1_1035.bPhysicalize = 1
L1_1035.sName = "shootTarget"
L1_1035.fDensity = -1
L1_1035.fMass = -1
L0_1034.Properties = L1_1035
L0_1034.nShootCount = 0
L0_1034.nContactCount = 0
L0_1034.nLog = 0
L0_1034.fDamage = 0
L0_1034.fCollisionDamage = 0
L0_1034.nDamageQueueSize = 100
ShootTarget = L0_1034
L0_1034 = ShootTarget
function L1_1035(A0_1038, A1_1039)
  A0_1038:StartAnimation(0, A0_1038.Properties.Animation)
end
L0_1034.Event_StartAnimation = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1040, A1_1041)
  A0_1040:ResetAnimation(0, -1)
end
L0_1034.Event_StopAnimtion = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1042)
  if A0_1042.Properties.objectModel ~= "" then
    A0_1042:LoadObject(A0_1042.Properties.objectModel, 0, 1)
    A0_1042:DrawObject(0, 1)
  end
  if A0_1042.Properties.bPhysicalize then
    A0_1042:CreateStaticEntity(A0_1042.Properties.fMass, -1)
  end
  A0_1042.nShootCount = 0
  A0_1042.nContactCount = 0
  A0_1042.fDamage = 0
  A0_1042.fCollisionDamage = 0
end
L0_1034.OnReset = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1043, A1_1044)
  local L2_1045, L3_1046, L4_1047, L5_1048, L6_1049, L7_1050
  L2_1045 = A0_1043.nContactCount
  L2_1045 = L2_1045 + 1
  A0_1043.nContactCount = L2_1045
  L2_1045 = A1_1044.CollisionDmg
  if L2_1045 then
    L3_1046 = A0_1043.fCollisionDamage
    L3_1046 = L3_1046 + L2_1045
    A0_1043.fCollisionDamage = L3_1046
  end
  L3_1046 = format
  L3_1046 = L3_1046(L4_1047, L5_1048)
  if L4_1047 then
    L7_1050 = A0_1043.Properties
    L7_1050 = L7_1050.sName
    L4_1047(L5_1048, L6_1049)
  end
  if L4_1047 == 1 then
    L4_1047(L5_1048)
    for L7_1050, _FORV_8_ in L4_1047(L5_1048) do
      System.Log(" " .. L7_1050)
    end
    A0_1043.nLog = 0
  end
end
L0_1034.OnContact = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1051, A1_1052)
  local L2_1053, L3_1054, L4_1055, L5_1056, L6_1057, L7_1058
  L2_1053 = A0_1051.nShootCount
  L2_1053 = L2_1053 + 1
  A0_1051.nShootCount = L2_1053
  L2_1053 = A0_1051.fDamage
  L3_1054 = A1_1052.damage
  L2_1053 = L2_1053 + L3_1054
  A0_1051.fDamage = L2_1053
  L2_1053 = format
  L3_1054 = "%.2f"
  L2_1053 = L2_1053(L3_1054, L4_1055)
  L3_1054 = format
  L3_1054 = L3_1054(L4_1055, L5_1056)
  if L4_1055 then
    L7_1058 = A0_1051.nShootCount
    L4_1055(L5_1056, L6_1057)
  end
  if L4_1055 == 1 then
    L4_1055(L5_1056)
    for L7_1058, _FORV_8_ in L4_1055(L5_1056) do
      System.Log(" " .. L7_1058 .. " = ")
    end
    A0_1051.nLog = 0
  end
end
L0_1034.OnDamage = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1059)
  A0_1059:OnReset()
end
L0_1034.OnPropertyChange = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1060)
  A0_1060:OnReset()
end
L0_1034.OnInit = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1061)
  local L1_1062
end
L0_1034.OnShutDown = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1063, A1_1064)
end
L0_1034.OnSave = L1_1035
L0_1034 = ShootTarget
function L1_1035(A0_1065, A1_1066)
end
L0_1034.OnLoad = L1_1035
L0_1034 = ShootTarget
L1_1035 = {}
L2_1036 = {}
L3_1037 = {
  ShootTarget.Event_StartAnimation,
  "bool"
}
L2_1036.StartAnimation = L3_1037
L3_1037 = {
  ShootTarget.Event_StopAnimation,
  "bool"
}
L2_1036.StopAnimation = L3_1037
L1_1035.Inputs = L2_1036
L2_1036 = {}
L2_1036.StartAnimation = "bool"
L2_1036.StopAnimation = "bool"
L1_1035.Outputs = L2_1036
L0_1034.FlowEvents = L1_1035
