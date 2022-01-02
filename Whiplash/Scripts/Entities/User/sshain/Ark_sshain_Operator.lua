local L0_8980, L1_8981, L2_8982, L3_8983
L0_8980 = {}
L1_8981 = {}
L1_8981.fileModel = "Objects/User/jboyer/operator_test.cgf"
L1_8981.fMass = 100
L2_8982 = {}
L2_8982.health = 500
L1_8981.Damage = L2_8982
L2_8982 = {}
L3_8983 = {}
L3_8983.x = 1
L3_8983.y = 0
L3_8983.z = 0
L2_8982.clrTagDamage = L3_8983
L1_8981.Color = L2_8982
L0_8980.Properties = L1_8981
L1_8981 = {}
L1_8981.vfxDestroy = "explosions.grenade_air.explosion"
L1_8981.fDestroyEffectScale = 1
L1_8981.vfxDamage = "ArkAliens.Prototypes.DamageBlood"
L1_8981.fDamageEffectScale = 4
L0_8980.Effects = L1_8981
L1_8981 = {}
L1_8981.Icon = "animobject.bmp"
L1_8981.IconOnTop = 1
L0_8980.Editor = L1_8981
L1_8981 = {}
L0_8980.Server = L1_8981
L1_8981 = {}
L0_8980.eTarget = L1_8981
L1_8981 = {}
L1_8981.x = 0
L1_8981.y = 0
L1_8981.z = 0
L0_8980.vecDirToTarget = L1_8981
L1_8981 = {}
L1_8981.x = 0
L1_8981.y = 0
L1_8981.z = 0
L0_8980.vecStartingDir = L1_8981
L0_8980.fTagSize = 1.5
L0_8980.fTagVisibleTime = 0.88
L0_8980.fTagFadeTime = 0.33
L0_8980.fDuration = 1000
L0_8980.iUpdateRate = 33
L0_8980.iCurrentIncrement = 0
L0_8980.bVerbose = true
L0_8980.bHaveTarget = false
Ark_sshain_Operator = L0_8980
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_8984, A1_8985)
  if A0_8984.bVerbose then
    System.Log(A1_8985)
  end
end
L0_8980.Log = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_8986)
  A0_8986:SetScriptUpdateRate(A0_8986.iUpdateRate)
  A0_8986:ResetPhysics()
  A0_8986:Activate(0)
  A0_8986.bHaveTarget = false
  A0_8986.Properties.Damage.health = 500
  A0_8986:SetMaterial("Objects/User/jboyer/Operator02_Test_Mat")
  if A0_8986.Properties.fileModel ~= "" then
    A0_8986:LoadObject(0, A0_8986.Properties.fileModel)
  end
end
L0_8980.Reset = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_8987, A1_8988)
end
L0_8980.TakeDamage = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_8989)
  local L1_8990
end
L0_8980.Death = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_8991)
  local L1_8992, L2_8993
  L1_8992 = A0_8991.iCurrentIncrement
  L2_8993 = A0_8991.fDuration
  if L1_8992 <= L2_8993 then
    L1_8992 = A0_8991.iCurrentIncrement
    L2_8993 = A0_8991.fDuration
    L1_8992 = L1_8992 / L2_8993
    L2_8993 = A0_8991.NLerpVectors
    L2_8993 = L2_8993(A0_8991, A0_8991.vecStartingDir, A0_8991.vecDirToTarget, L1_8992)
    A0_8991:SetDirectionVector(L2_8993)
    A0_8991.iCurrentIncrement = A0_8991.iCurrentIncrement + A0_8991.iUpdateRate
  else
    L2_8993 = A0_8991
    L1_8992 = A0_8991.Activate
    L1_8992(L2_8993, 0)
    A0_8991.iCurrentIncrement = 0
    L1_8992 = BroadcastEvent
    L2_8993 = A0_8991
    L1_8992(L2_8993, "Finished")
  end
end
L0_8980.UpdateFacingDir = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_8994)
  local L1_8995, L2_8996, L3_8997, L4_8998, L5_8999
  L1_8995 = {}
  L2_8996 = {}
  L3_8997 = A0_8994.eTarget
  L4_8998 = L3_8997
  L3_8997 = L3_8997.GetCenterOfMassPos
  L3_8997 = L3_8997(L4_8998)
  L5_8999 = A0_8994
  L4_8998 = A0_8994.GetCenterOfMassPos
  L4_8998 = L4_8998(L5_8999)
  L5_8999 = DifferenceVectors
  L5_8999 = L5_8999(L3_8997, L4_8998)
  A0_8994.vecDirToTarget = NormalizeVector(L5_8999)
end
L0_8980.CalculateFacing = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9000, A1_9001, A2_9002, A3_9003)
  local L4_9004
  L4_9004 = {}
  L4_9004.x = Lerp(A1_9001.x, A2_9002.x, A3_9003)
  L4_9004.y = Lerp(A1_9001.y, A2_9002.y, A3_9003)
  L4_9004.z = Lerp(A1_9001.z, A2_9002.z, A3_9003)
  return NormalizeVector(L4_9004)
end
L0_8980.NLerpVectors = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9005, A1_9006)
  if not A1_9006 or A1_9006 ~= "" then
  end
end
L0_8980.PlaySound = L1_8981
L0_8980 = Ark_sshain_Operator
L0_8980 = L0_8980.Server
function L1_8981(A0_9007, A1_9008)
  if A0_9007.bHaveTarget then
    A0_9007:CalculateFacing()
    A0_9007:UpdateFacingDir()
  else
    A0_9007:Activate(0)
  end
end
L0_8980.OnUpdate = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9009, A1_9010)
  A0_9009:Log("Entity: OnSpawn - I'm alive!")
end
L0_8980.OnSpawn = L1_8981
L0_8980 = Ark_sshain_Operator
L0_8980 = L0_8980.Server
function L1_8981(A0_9011, A1_9012)
  A0_9011:Log("Entity: OnInit - Ready to go!")
  A0_9011:Reset()
end
L0_8980.OnInit = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9013)
  A0_9013:Reset()
end
L0_8980.OnPropertyChange = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9014, A1_9015, A2_9016)
  A0_9014:Log("Entity: OnReset - Resetting...")
  A0_9014:Reset()
end
L0_8980.OnReset = L1_8981
L0_8980 = Ark_sshain_Operator
L0_8980 = L0_8980.Server
function L1_8981(A0_9017, A1_9018)
  if A1_9018.type ~= "collision" then
    A0_9017:Log("Entity: OnHit - Ouch, " .. tostring(A1_9018.shooterId) .. " hit me with " .. A1_9018.damage .. " damage.")
    A0_9017:TakeDamage(A1_9018)
  end
end
L0_8980.OnHit = L1_8981
L0_8980 = Ark_sshain_Operator
L0_8980 = L0_8980.Server
function L1_8981(A0_9019, A1_9020)
end
L0_8980.OnCollision = L1_8981
L0_8980 = Ark_sshain_Operator
L0_8980 = L0_8980.Server
function L1_8981(A0_9021)
  local L1_9022
end
L0_8980.OnDamage = L1_8981
L0_8980 = Ark_sshain_Operator
L0_8980 = L0_8980.Server
function L1_8981(A0_9023)
  local L1_9024
end
L0_8980.OnMove = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9025, A1_9026)
  if A0_9025.bHaveTarget then
    A0_9025.vecStartingDir = A0_9025:GetDirectionVector()
    A0_9025.vecStartingTargetPos = A0_9025.eTarget:GetCenterOfMassPos()
    A0_9025:Activate(1)
  else
    A0_9025:Log("Warning: No facing target set!")
  end
  BroadcastEvent(A0_9025, "Started")
end
L0_8980.Event_Start = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9027, A1_9028)
  A0_9027:Activate(0)
  BroadcastEvent(A0_9027, "Stopped")
end
L0_8980.Event_Stop = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9029, A1_9030, A2_9031)
  local L3_9032
  L3_9032 = A2_9031 * 1000
  A0_9029.fDuration = L3_9032
end
L0_8980.Event_SetDuration = L1_8981
L0_8980 = Ark_sshain_Operator
function L1_8981(A0_9033, A1_9034, A2_9035)
  A0_9033.eTarget = A2_9035
  A0_9033.bHaveTarget = true
end
L0_8980.Event_EntityToFace = L1_8981
L0_8980 = Ark_sshain_Operator
L1_8981 = {}
L2_8982 = {}
L3_8983 = {
  Ark_sshain_Operator.Event_Start,
  "bool"
}
L2_8982.Start = L3_8983
L3_8983 = {
  Ark_sshain_Operator.Event_Stop,
  "bool"
}
L2_8982.Stop = L3_8983
L3_8983 = {
  Ark_sshain_Operator.Event_EntityToFace,
  "entity"
}
L2_8982.EntityToFace = L3_8983
L3_8983 = {
  Ark_sshain_Operator.Event_SetDuration,
  "float"
}
L2_8982.Duration = L3_8983
L1_8981.Inputs = L2_8982
L2_8982 = {}
L2_8982.Destroyed = "bool"
L2_8982.Damaged = "float"
L2_8982.Started = "bool"
L2_8982.Stopped = "bool"
L2_8982.Finished = "bool"
L1_8981.Outputs = L2_8982
L0_8980.FlowEvents = L1_8981
