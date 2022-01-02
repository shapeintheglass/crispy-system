Script.ReloadScript("Scripts/Entities/Physics/RigidBodyEx.lua")
ArkGlintingRigidBodyEx = {
  Properties = {
    glintconfig_GlintConfig = "16934642289625103724"
  }
}
MakeDerivedEntity(ArkGlintingRigidBodyEx, RigidBodyEx)
function ArkGlintingRigidBodyEx.Init(A0_3907, A1_3908)
  Ark.SetGlintConfig(A0_3907.id, A0_3907.Properties.glintconfig_GlintConfig)
  if A1_3908 then
    Ark.SetShouldGlint(A0_3907.id, true)
  end
end
function ArkGlintingRigidBodyEx.GetUsable(A0_3909)
  if A0_3909:GetPhysicalStats().mass > 0 and A0_3909.Properties.bIsCarryable == 1 then
    ({}).Use, ({}).ActionType = {}, "Carry"
  end
  return {}
end
function ArkGlintingRigidBodyEx.OnStartGame(A0_3910)
  if System.IsEditor() then
    A0_3910:Init(true)
  end
end
function ArkGlintingRigidBodyEx.OnStartLevel(A0_3911)
  if not System.IsEditor() then
    A0_3911:Init(true)
  end
end
function ArkGlintingRigidBodyEx.OnDestroy(A0_3912)
  Ark.SetShouldGlint(A0_3912.id, false)
end
function ArkGlintingRigidBodyEx.OnReset(A0_3913)
  RigidBodyEx.OnReset(A0_3913)
  Ark.SetShouldGlint(A0_3913.id, false)
end
function ArkGlintingRigidBodyEx.OnPostLoad(A0_3914)
  Ark.SetShouldGlint(A0_3914.id, true)
end
ArkGlintingRigidBodyEx.Server.Default.OnStartLevel = ArkGlintingRigidBodyEx.OnStartLevel
ArkGlintingRigidBodyEx.Server.Default.OnStartGame = ArkGlintingRigidBodyEx.OnStartGame
ArkGlintingRigidBodyEx.Server.Activated.OnStartLevel = ArkGlintingRigidBodyEx.OnStartLevel
ArkGlintingRigidBodyEx.Server.Activated.OnStartGame = ArkGlintingRigidBodyEx.OnStartGame
