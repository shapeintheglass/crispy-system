Script.ReloadScript("scripts/entities/items/itemsystemmath.lua")
ArkNote = {
  Properties = {
    SummaryText = "",
    clrSummaryColor = {
      x = 1,
      y = 0.5,
      z = 0
    },
    nSummaryDist = 20,
    MainText = "",
    clrMainColor = {
      x = 1,
      y = 0.5,
      z = 0
    },
    nMainDist = 100,
    nMaxNoteWidth = 30,
    nMaxNoteHeight = 0,
    bHideInEditor = 0,
    bHideInGame = 0,
    fSize = 1.2,
    bDrawThroughWalls = 0
  },
  Editor = {
    Model = "Editor/Objects/comment.cgf",
    Icon = "Comment.bmp"
  },
  hidden = 0,
  bForceHideInEditorGame = 0,
  summaryLines = {},
  summaryLineCount = 0,
  mainLines = {},
  mainLineCount = 0
}
bIsNoteCCRegistered = bIsNoteCCRegistered
if not bIsNoteCCRegistered then
  g_cl_note = 1
  g_cl_notesInGame = 1
  System.AddCCommand("cl_note", "g_cl_note=tonumber(%1)", "Hide/Unhide notes")
  System.AddCCommand("cl_notesInGame", "g_cl_notesInGame=tonumber(%1)", "Hide/Unhide notes in game")
  bIsNoteCCRegistered = true
end
function ArkNote.OnLoad(A0_4355, A1_4356)
  A0_4355.hidden = A1_4356.hidden
end
function ArkNote.OnSave(A0_4357, A1_4358)
  A1_4358.hidden = A0_4357.hidden
end
function ArkNote.OnInit(A0_4359)
  if System.IsDevModeEnable() then
    A0_4359:SetUpdatePolicy(ENTITY_UPDATE_VISIBLE)
    A0_4359:Activate(1)
  end
  A0_4359:OnReset()
end
function ArkNote.OnPropertyChange(A0_4360)
  A0_4360:OnReset()
end
function ArkNote.SplitLines(A0_4361, A1_4362, A2_4363, A3_4364)
  local L4_4365, L5_4366, L6_4367, L7_4368, L8_4369, L9_4370, L10_4371, L11_4372
  L4_4365 = 0
  L5_4366 = ""
  L6_4367 = 1
  L7_4368 = {}
  for L11_4372 in L8_4369(L9_4370, L10_4371) do
    if L11_4372 == " " and A2_4363 < L4_4365 then
      L7_4368[L6_4367] = L5_4366
      L6_4367 = L6_4367 + 1
      L5_4366 = ""
      L4_4365 = 0
      L11_4372 = ""
    end
    if L11_4372 ~= "" then
      L5_4366 = L5_4366 .. L11_4372
      L4_4365 = L4_4365 + 1
    end
    if A3_4364 > 0 and A3_4364 < L6_4367 then
      break
    end
  end
  L7_4368[L6_4367] = L5_4366
  return L9_4370, L10_4371
end
function ArkNote.OnReset(A0_4373)
  A0_4373.lines = {}
  A0_4373.summaryLines, A0_4373.summaryLineCount = A0_4373:SplitLines(A0_4373.Properties.SummaryText, A0_4373.Properties.nMaxNoteWidth, A0_4373.Properties.nMaxNoteHeight)
  A0_4373.mainLines, A0_4373.mainLineCount = A0_4373:SplitLines(A0_4373.Properties.MainText, A0_4373.Properties.nMaxNoteWidth, A0_4373.Properties.nMaxNoteHeight)
end
function ArkNote.OnUpdate(A0_4374, A1_4375)
  local L2_4376, L3_4377, L4_4378, L5_4379, L6_4380, L7_4381, L8_4382, L9_4383, L10_4384, L11_4385, L12_4386, L13_4387, L14_4388, L15_4389, L16_4390
  L2_4376 = A0_4374.hidden
  if L2_4376 == 0 then
    L3_4377 = A0_4374
    L2_4376 = A0_4374.IsHidden
    L2_4376 = L2_4376(L3_4377)
  elseif L2_4376 then
    return
  end
  L2_4376 = A0_4374.bForceHideInEditorGame
  if L2_4376 == 1 then
    L2_4376 = System
    L2_4376 = L2_4376.IsEditing
    L2_4376 = L2_4376()
    if not L2_4376 then
      return
    end
  end
  L2_4376 = A0_4374.Properties
  L2_4376 = L2_4376.bHideInEditor
  L2_4376 = L2_4376 == 1 or L2_4376 ~= 1
  L3_4377 = A0_4374.Properties
  L3_4377 = L3_4377.bHideInGame
  L3_4377 = L3_4377 == 1 or L3_4377 ~= 1 or L3_4377 ~= 1
  if L2_4376 then
    L4_4378 = System
    L4_4378 = L4_4378.IsEditing
    L4_4378 = L4_4378()
  else
    if not L4_4378 then
      if L3_4377 then
        L4_4378 = System
        L4_4378 = L4_4378.IsEditing
        L4_4378 = L4_4378()
      end
  end
  elseif not L4_4378 then
    return
  end
  L4_4378 = A0_4374.Properties
  L4_4378 = L4_4378.SummaryText
  L5_4379 = A0_4374.Properties
  L5_4379 = L5_4379.MainText
  if L4_4378 == "" and L5_4379 == "" then
    return
  end
  L6_4380 = A0_4374.Properties
  L6_4380 = L6_4380.nSummaryDist
  L7_4381 = A0_4374.Properties
  L7_4381 = L7_4381.nMainDist
  L8_4382 = __max
  L9_4383 = L6_4380
  L10_4384 = L7_4381
  L8_4382 = L8_4382(L9_4383, L10_4384)
  L9_4383 = L8_4382 * L8_4382
  L10_4384 = 1
  L11_4385 = 0
  L12_4386 = g_localActor
  if L12_4386 and L8_4382 > 0 then
    L12_4386 = g_Vectors
    L12_4386 = L12_4386.temp_v1
    L13_4387 = g_Vectors
    L13_4387 = L13_4387.temp_v2
    L15_4389 = A0_4374
    L14_4388 = A0_4374.GetWorldPos
    L16_4390 = L12_4386
    L14_4388(L15_4389, L16_4390)
    L14_4388 = g_localActor
    L15_4389 = L14_4388
    L14_4388 = L14_4388.GetWorldPos
    L16_4390 = L13_4387
    L14_4388(L15_4389, L16_4390)
    L14_4388 = SubVectors
    L15_4389 = L12_4386
    L16_4390 = L12_4386
    L14_4388(L15_4389, L16_4390, L13_4387)
    L14_4388 = LengthSqVector
    L15_4389 = L12_4386
    L14_4388 = L14_4388(L15_4389)
    L15_4389 = L6_4380 * L6_4380
    L11_4385 = L14_4388 < L15_4389
    if L9_4383 > L14_4388 then
      L10_4384 = L14_4388 / L9_4383
      L15_4389 = L10_4384 * L10_4384
      L10_4384 = 1 - L15_4389
    else
      L10_4384 = 0
    end
  end
  L12_4386 = {}
  L13_4387 = 0
  L14_4388 = {}
  if L11_4385 and L4_4378 ~= "" or L5_4379 == "" then
    L12_4386 = A0_4374.summaryLines
    L13_4387 = A0_4374.summaryLineCount
    L15_4389 = A0_4374.Properties
    L14_4388 = L15_4389.clrSummaryColor
  else
    L12_4386 = A0_4374.mainLines
    L13_4387 = A0_4374.mainLineCount
    L15_4389 = A0_4374.Properties
    L14_4388 = L15_4389.clrMainColor
  end
  if L10_4384 > 0.001 then
    L16_4390 = A0_4374
    L15_4389 = A0_4374.GetWorldPos
    L15_4389 = L15_4389(L16_4390, g_Vectors.temp_v1)
    L16_4390 = table
    L16_4390 = L16_4390.concat
    L16_4390 = L16_4390(L12_4386, "\n")
    Ark.DrawNote(L15_4389, A0_4374.Properties.fSize, L16_4390, L13_4387, L14_4388.x, L14_4388.y, L14_4388.z, L10_4384, A0_4374.Properties.bDrawThroughWalls)
  end
end
function ArkNote.Event_UnHide(A0_4391)
  A0_4391:Hide(0)
  A0_4391.hidden = 0
  BroadcastEvent(A0_4391, "UnHide")
end
function ArkNote.Event_Hide(A0_4392)
  A0_4392:Hide(1)
  A0_4392.hidden = 1
  BroadcastEvent(A0_4392, "Hide")
end
ArkNote.FlowEvents = {
  Inputs = {
    Hide = {
      ArkNote.Event_Hide,
      "void"
    },
    UnHide = {
      ArkNote.Event_UnHide,
      "void"
    }
  },
  Outputs = {Hide = "bool", UnHide = "bool"}
}
