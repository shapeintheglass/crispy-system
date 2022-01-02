Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkPASpeaker = {
  Properties = {
    object_Model = "",
    nChannelId = 0,
    vector_audioOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {Icon = "Sound.bmp", IsScalable = false},
  PropertiesInstance = {
    nChannelIdOverride = -1,
    bVerbose = 0,
    bAudioEffect = 1,
    attenuationScale = 1
  },
  m_bVerbose = false,
  m_channelId = 0
}
GetArkEntityUtils(ArkPASpeaker)
SetupCollisionFiltering(ArkPASpeaker)
function ArkPASpeaker.SetFromProperties(A0_4439)
  local L1_4440
  L1_4440 = Ark
  L1_4440 = L1_4440.UnregisterPASpeaker
  L1_4440(A0_4439.id, A0_4439.m_channelId)
  L1_4440 = A0_4439.SetupModelAndPhysics
  L1_4440(A0_4439)
  L1_4440 = A0_4439.PropertiesInstance
  L1_4440 = L1_4440.bVerbose
  L1_4440 = L1_4440 == 1
  A0_4439.m_bVerbose = L1_4440
  L1_4440 = A0_4439.PropertiesInstance
  L1_4440 = L1_4440.nChannelIdOverride
  if L1_4440 == -1 then
    L1_4440 = A0_4439.Properties
    L1_4440 = L1_4440.nChannelId
    A0_4439.m_channelId = L1_4440
  else
    L1_4440 = A0_4439.PropertiesInstance
    L1_4440 = L1_4440.nChannelIdOverride
    A0_4439.m_channelId = L1_4440
  end
  L1_4440 = A0_4439.Log
  L1_4440(A0_4439, "channelId is " .. tostring(A0_4439.m_channelId))
  L1_4440 = Ark
  L1_4440 = L1_4440.RegisterPASpeaker
  L1_4440(A0_4439.id, A0_4439.m_channelId, A0_4439.PropertiesInstance.attenuationScale)
  L1_4440 = A0_4439.GetDefaultAuxAudioProxyID
  L1_4440 = L1_4440(A0_4439)
  A0_4439:SetAudioProxyOffset(A0_4439.Properties.vector_audioOffset, L1_4440)
  if System.IsEditing() and A0_4439.m_bVerbose then
    CryAction.PersistantSphere(A0_4439:ToGlobal(0, A0_4439.Properties.vector_audioOffset), 0.25, g_Vectors.v010, "offset", 1)
  end
end
function ArkPASpeaker.Init(A0_4441, A1_4442)
  local L2_4443
  L2_4443 = A0_4441.GetDefaultAuxAudioProxyID
  L2_4443 = L2_4443(A0_4441)
  A0_4441:SetAudioProxyAttenuationScale(A0_4441.PropertiesInstance.attenuationScale, L2_4443)
end
function ArkPASpeaker.OnPostLoad(A0_4444)
  local L1_4445
  L1_4445 = A0_4444.GetDefaultAuxAudioProxyID
  L1_4445 = L1_4445(A0_4444)
  A0_4444:SetAudioProxyAttenuationScale(A0_4444.PropertiesInstance.attenuationScale, L1_4445)
end
function ArkPASpeaker.OnDestroy(A0_4446)
  Ark.UnregisterPASpeaker(A0_4446.id, A0_4446.m_channelId)
end
