Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkBook = {
  Properties = {
    object_Model = "",
    textDisplayText = "@i_defaultBook",
    glintconfig_GlintConfig = "16934642289625103724",
    note_OnRead = "",
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bResting = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      Density = 100,
      Mass = -1
    },
    Silhouette = {
      color_RGB = {
        x = 1,
        y = 1,
        z = 1
      },
      fAlpha = 0.25
    }
  },
  Editor = {
    Icon = "Seed.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    note_OnRead = "",
    bVerbose = 0,
    bUsable = 1
  }
}
GetArkEntityUtils(ArkBook)
SetupCollisionFiltering(ArkBook)
function ArkBook.Init(A0_3397, A1_3398)
  A0_3397:Log("Init()")
  A0_3397:Log("ArkBook:Init")
  Ark.SetGlintConfig(A0_3397.id, A0_3397.Properties.glintconfig_GlintConfig)
  A0_3397:SetFromProperties()
  A0_3397:SetupBook()
  if A1_3398 then
    Ark.SetShouldGlint(A0_3397.id, true)
  end
end
function ArkBook.SetupBook(A0_3399)
  local L1_3400
  L1_3400 = A0_3399.PropertiesInstance
  L1_3400 = L1_3400.note_OnRead
  if L1_3400 ~= "" then
    L1_3400 = A0_3399.PropertiesInstance
    L1_3400 = L1_3400.note_OnRead
    A0_3399.m_note = L1_3400
  else
    L1_3400 = A0_3399.Properties
    L1_3400 = L1_3400.note_OnRead
    if L1_3400 ~= "" then
      L1_3400 = A0_3399.Properties
      L1_3400 = L1_3400.note_OnRead
      A0_3399.m_note = L1_3400
    else
      L1_3400 = LogError
      L1_3400(A0_3399:GetName() .. " no note data assigned.")
    end
  end
  L1_3400 = Ark
  L1_3400 = L1_3400.GetNoteSubject
  L1_3400 = L1_3400(A0_3399.m_note)
  if L1_3400 ~= nil and L1_3400 ~= "" then
    A0_3399:SetDisplayName(L1_3400)
  else
    LogError(A0_3399:GetName() .. " note data is invalid or empty.")
  end
end
function ArkBook.SetFromProperties(A0_3401)
  A0_3401:Log("SetFromProperties")
  A0_3401:SetupModelAndPhysics()
  A0_3401.m_bVerbose = A0_3401.PropertiesInstance.bVerbose == 1
end
function ArkBook.GetUsable(A0_3402)
  local L2_3403, L3_3404
  L2_3403 = {}
  L3_3404 = A0_3402.PropertiesInstance
  L3_3404 = L3_3404.bUsable
  if L3_3404 == 1 then
    L3_3404 = {}
    L3_3404.ActionType = "ScriptDefined"
    L3_3404.DisplayText = A0_3402.Properties.textDisplayText
    L2_3403.Use = L3_3404
  end
  return L2_3403
end
function ArkBook.GetRemoteManipulationInteraction(A0_3405)
  local L1_3406, L2_3407
  L1_3406 = {}
  L2_3407 = A0_3405.PropertiesInstance
  L2_3407 = L2_3407.bUsable
  if L2_3407 == 1 then
    L1_3406.ActionType = "ScriptDefined"
    L2_3407 = A0_3405.Properties
    L2_3407 = L2_3407.textDisplayText
    L1_3406.DisplayText = L2_3407
  end
  L1_3406.CouldChange = false
  return L1_3406
end
function ArkBook.OnUsed(A0_3408)
  if A0_3408.m_note ~= "" then
    g_localActor.arkPlayer:GiveNote(A0_3408.m_note)
  else
    LogWarning(A0_3408:GetName() .. " attempted to add a note to player, but no note was specified.")
  end
  BroadcastEvent(A0_3408, "OnUsed")
end
function ArkBook.OnRemoteManipulation(A0_3409)
  A0_3409:OnUsed()
end
function ArkBook.OnReset(A0_3410)
  A0_3410:SetFromProperties()
  Ark.SetShouldGlint(A0_3410.id, false)
end
function ArkBook.OnDestroy(A0_3411)
  Ark.SetShouldGlint(A0_3411.id, false)
end
ArkBook.FlowEvents = {
  Inputs = {},
  Outputs = {Used = "bool"}
}
