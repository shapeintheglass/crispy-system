Script.ReloadScript("scripts/entities/items/itemsystemmath.lua")
Comment = {
  Properties = {
    Text = "This is a comment",
    fSize = 1.2,
    bHidden = 0,
    fMaxDist = 100,
    nCharsPerLine = 30,
    bFixed = 0,
    clrDiffuse = {
      x = 1,
      y = 0.5,
      z = 0
    }
  },
  Editor = {
    Model = "Editor/Objects/comment.cgf",
    Icon = "Comment.bmp"
  },
  hidden = 0,
  lines = {},
  lineCount = 0,
  fMaxDistSquared = 0,
  bNoUpdateInGame = 1
}
function Comment.OnLoad(A0_6666, A1_6667)
  A0_6666.hidden = A1_6667.hidden
end
function Comment.OnSave(A0_6668, A1_6669)
  A1_6669.hidden = A0_6668.hidden
end
function Comment.OnInit(A0_6670)
  if not System.IsDevModeEnable() then
    A0_6670:DeleteThis()
    return
  end
  A0_6670:OnReset()
end
function Comment.OnSpawn(A0_6671)
  local L1_6672
end
function Comment.OnPropertyChange(A0_6673)
  A0_6673:OnReset()
end
function Comment.OnReset(A0_6674)
  local L1_6675, L2_6676, L3_6677, L4_6678, L5_6679, L6_6680, L7_6681, L8_6682, L9_6683
  L1_6675 = System
  L1_6675 = L1_6675.GetCVar
  L2_6676 = "cl_comment"
  L1_6675 = L1_6675(L2_6676)
  L2_6676 = System
  L2_6676 = L2_6676.IsEditor
  L2_6676 = L2_6676()
  if L2_6676 or L1_6675 > 0 then
    L3_6677 = A0_6674
    L2_6676 = A0_6674.SetUpdatePolicy
    L4_6678 = ENTITY_UPDATE_VISIBLE
    L2_6676(L3_6677, L4_6678)
    L3_6677 = A0_6674
    L2_6676 = A0_6674.Activate
    L4_6678 = 1
    L2_6676(L3_6677, L4_6678)
  else
    L3_6677 = A0_6674
    L2_6676 = A0_6674.Activate
    L4_6678 = 0
    L2_6676(L3_6677, L4_6678)
  end
  if L1_6675 == 0 then
    A0_6674.bNoUpdateInGame = 1
  else
    A0_6674.bNoUpdateInGame = 0
  end
  L2_6676 = A0_6674.Properties
  L2_6676 = L2_6676.fMaxDist
  L3_6677 = A0_6674.Properties
  L3_6677 = L3_6677.fMaxDist
  L2_6676 = L2_6676 * L3_6677
  A0_6674.fMaxDistSquared = L2_6676
  L2_6676 = A0_6674.Properties
  L2_6676 = L2_6676.bHidden
  A0_6674.hidden = L2_6676
  L2_6676 = {}
  A0_6674.lines = L2_6676
  L2_6676 = A0_6674.Properties
  L2_6676 = L2_6676.nCharsPerLine
  L3_6677 = 0
  L4_6678 = ""
  L5_6679 = 1
  for L9_6683 in L6_6680(L7_6681, L8_6682) do
    if L9_6683 == " " and L2_6676 < L3_6677 then
      A0_6674.lines[L5_6679] = L4_6678
      L5_6679 = L5_6679 + 1
      L4_6678 = ""
      L3_6677 = 0
      L9_6683 = ""
    end
    if L9_6683 ~= "" then
      L4_6678 = L4_6678 .. L9_6683
      L3_6677 = L3_6677 + 1
    end
  end
  L6_6680[L5_6679] = L4_6678
  A0_6674.lineCount = L5_6679
  L6_6680(L7_6681, L8_6682)
end
function Comment.OnUpdate(A0_6684, A1_6685)
  local L2_6686, L3_6687, L4_6688, L5_6689, L6_6690, L7_6691, L8_6692, L9_6693, L10_6694, L11_6695, L12_6696
  L2_6686 = A0_6684.hidden
  if L2_6686 == 0 then
    L3_6687 = A0_6684
    L2_6686 = A0_6684.IsHidden
    L2_6686 = L2_6686(L3_6687)
    if not L2_6686 then
      L2_6686 = A0_6684.Properties
      L2_6686 = L2_6686.Text
      if L2_6686 ~= "" then
        L2_6686 = A0_6684.bNoUpdateInGame
        if L2_6686 == 1 then
          L2_6686 = System
          L2_6686 = L2_6686.IsEditing
          L2_6686 = L2_6686()
        end
      end
    end
  elseif not L2_6686 then
    return
  end
  L2_6686 = 0
  L3_6687 = 0
  L4_6688 = A0_6684.fMaxDistSquared
  if L4_6688 > 0 then
    L4_6688 = g_Vectors
    L4_6688 = L4_6688.temp_v1
    L6_6690 = A0_6684
    L5_6689 = A0_6684.GetWorldPos
    L7_6691 = L4_6688
    L5_6689(L6_6690, L7_6691)
    L5_6689 = SubVectors
    L6_6690 = L4_6688
    L7_6691 = L4_6688
    L12_6696 = L8_6692()
    L5_6689(L6_6690, L7_6691, L8_6692, L9_6693, L10_6694, L11_6695, L12_6696, L8_6692())
    L5_6689 = LengthSqVector
    L6_6690 = L4_6688
    L5_6689 = L5_6689(L6_6690)
    L3_6687 = L5_6689
    L6_6690 = A0_6684.Properties
    L6_6690 = L6_6690.fMaxDist
    if L6_6690 >= 255 then
      L2_6686 = 1
    else
      L6_6690 = A0_6684.fMaxDistSquared
      if L5_6689 < L6_6690 then
        L6_6690 = A0_6684.fMaxDistSquared
        L2_6686 = L5_6689 / L6_6690
        L6_6690 = L2_6686 * L2_6686
        L2_6686 = 1 - L6_6690
      end
    end
  end
  L4_6688 = System
  L4_6688 = L4_6688.GetViewCameraUpDir
  L4_6688 = L4_6688()
  if L2_6686 > 0.001 then
    L6_6690 = A0_6684
    L5_6689 = A0_6684.GetWorldPos
    L7_6691 = g_Vectors
    L7_6691 = L7_6691.temp_v1
    L5_6689 = L5_6689(L6_6690, L7_6691)
    L6_6690 = math
    L6_6690 = L6_6690.sqrt
    L7_6691 = L3_6687
    L6_6690 = L6_6690(L7_6691)
    L3_6687 = L6_6690
    L6_6690 = A0_6684.Properties
    L6_6690 = L6_6690.fSize
    L6_6690 = L6_6690 / 60
    L6_6690 = L6_6690 * L3_6687
    L7_6691 = System
    L7_6691 = L7_6691.GetViewCameraFov
    L7_6691 = L7_6691()
    L3_6687 = L6_6690 * L7_6691
    L6_6690 = g_Vectors
    L6_6690 = L6_6690.temp_v4
    L7_6691 = FastScaleVector
    L7_6691(L8_6692, L9_6693, L10_6694)
    L7_6691 = FastScaleVector
    L7_6691(L8_6692, L9_6693, L10_6694)
    L7_6691 = FastSumVectors
    L7_6691(L8_6692, L9_6693, L10_6694)
    L7_6691 = {}
    L7_6691.x = 0
    L7_6691.y = 1
    L7_6691.z = 0
    if L8_6692 ~= 1 then
      L8_6692.x = L9_6693
      L8_6692.y = L9_6693
      L8_6692.z = L9_6693
      L7_6691 = L8_6692
    end
    for L11_6695, L12_6696 in L8_6692(L9_6693) do
      System.DrawLabel(L5_6689, A0_6684.Properties.fSize, L12_6696, L7_6691.x, L7_6691.y, L7_6691.z, L2_6686)
      FastDifferenceVectors(L5_6689, L5_6689, L4_6688)
    end
  end
end
function Comment.Event_UnHide(A0_6697, A1_6698)
  BroadcastEvent(A0_6697, "UnHide")
  A0_6697.hidden = 0
end
function Comment.Event_Hide(A0_6699, A1_6700)
  BroadcastEvent(A0_6699, "Hide")
  A0_6699.hidden = 1
end
Comment.FlowEvents = {
  Inputs = {
    Hide = {
      Comment.Event_Hide,
      "bool"
    },
    UnHide = {
      Comment.Event_UnHide,
      "bool"
    }
  },
  Outputs = {Hide = "bool", UnHide = "bool"}
}
