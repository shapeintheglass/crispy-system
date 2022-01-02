local L0_4887, L1_4888, L2_4889, L3_4890
L0_4887 = {}
L1_4888 = {}
L0_4887.Server = L1_4888
L1_4888 = {}
L0_4887.Client = L1_4888
L1_4888 = {}
L1_4888.soclasses_SmartObjectClass = "Door"
L1_4888.object_Model = ""
L2_4889 = {}
L2_4889.snd_Open = ""
L2_4889.snd_Close = ""
L1_4888.Sounds = L2_4889
L2_4889 = {}
L2_4889.anim_Open = "Default"
L2_4889.anim_Close = ""
L1_4888.Animation = L2_4889
L2_4889 = {}
L2_4889.bPhysicalize = 1
L2_4889.bRigidBody = 1
L2_4889.bPushableByPlayers = 1
L2_4889.bPushableByAI = 1
L2_4889.Density = -1
L2_4889.Mass = -1
L1_4888.Physics = L2_4889
L1_4888.fUseDistance = 2.5
L1_4888.bLocked = 0
L1_4888.bActivatePortal = 0
L1_4888.bNoFriendlyFire = 0
L0_4887.Properties = L1_4888
L1_4888 = {}
L1_4888.Icon = "Door.bmp"
L1_4888.ShowBounds = 1
L0_4887.Editor = L1_4888
L0_4887.nDirection = -1
L0_4887.bUseSameAnim = 0
L0_4887.bNoAnims = 0
L0_4887.nSoundId = 0
L0_4887.bLocked = false
L0_4887.bNeedUpdate = 0
AnimDoor = L0_4887
L0_4887 = AnimDoor
function L1_4888(A0_4891, A1_4892)
  local L2_4893, L3_4894
  L2_4893 = A1_4892.bLocked
  A0_4891.bLocked = L2_4893
  A0_4891.bNeedUpdate = 0
  L3_4894 = A0_4891
  L2_4893 = A0_4891.ResetAnimation
  L2_4893(L3_4894, 0, -1)
  L3_4894 = A0_4891
  L2_4893 = A0_4891.DoStopSound
  L2_4893(L3_4894)
  A0_4891.curAnim = ""
  A0_4891.nDirection = 0
  L2_4893 = AI
  if L2_4893 then
    L2_4893 = AI
    L2_4893 = L2_4893.SetSmartObjectState
    L3_4894 = A0_4891.id
    L2_4893(L3_4894, "Closed")
  end
  L2_4893 = A0_4891.bLocked
  if L2_4893 then
    L2_4893 = AI
    if L2_4893 then
      L3_4894 = A0_4891
      L2_4893 = A0_4891.Lock
      L2_4893(L3_4894)
    end
  end
  L2_4893 = A0_4891.portal
  if L2_4893 then
    L2_4893 = System
    L2_4893 = L2_4893.ActivatePortal
    L3_4894 = A0_4891.GetWorldPos
    L3_4894 = L3_4894(A0_4891)
    L2_4893(L3_4894, 0, A0_4891.id)
  end
  L2_4893 = A1_4892.nDirection
  L3_4894 = A1_4892.doPlay
  if L3_4894 == 1 then
    L3_4894 = A0_4891.DoPlayAnimation
    L3_4894(A0_4891, L2_4893, A1_4892.animTime)
  elseif L2_4893 == 1 then
    L3_4894 = A0_4891.GetAnimationLength
    L3_4894 = L3_4894(A0_4891, 0, A0_4891.Properties.Animation.anim_Open)
    A0_4891:DoPlayAnimation(L2_4893, L3_4894, false)
    A0_4891.curAnim = ""
    if AI then
      AI.ModifySmartObjectStates(A0_4891.id, "Open-Closed")
    end
  end
end
L0_4887.OnLoad = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4895, A1_4896)
  A1_4896.bLocked = A0_4895.bLocked
  if A0_4895.curAnim ~= "" and A0_4895.nDirection ~= 0 and A0_4895:IsAnimationRunning(0, 0) then
    A1_4896.doPlay = 1
    A1_4896.nDirection = A0_4895.nDirection
    A1_4896.animTime = A0_4895:GetAnimationTime(0, 0)
  else
    A1_4896.doPlay = 0
    A1_4896.nDirection = A0_4895.nDirection
  end
end
L0_4887.OnSave = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4897)
  A0_4897:Reset()
end
L0_4887.OnPropertyChange = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4898)
  A0_4898:Reset()
end
L0_4887.OnReset = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4899)
  A0_4899:Reset()
end
L0_4887.OnSpawn = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4900)
  if A0_4900.portal then
    System.ActivatePortal(A0_4900:GetWorldPos(), 0, A0_4900.id)
  end
  A0_4900.bLocked = false
  A0_4900.portal = A0_4900.Properties.bActivatePortal ~= 0
  A0_4900.bUseSameAnim = A0_4900.Properties.Animation.anim_Close == ""
  if A0_4900.Properties.object_Model ~= "" then
    A0_4900:LoadObject(0, A0_4900.Properties.object_Model)
  end
  A0_4900.bNoAnims = A0_4900.Properties.Animation.anim_Open == "" and A0_4900.Properties.Animation.anim_Close == ""
  A0_4900:PhysicalizeThis()
  A0_4900:DoStopSound()
  A0_4900.nDirection = -1
  A0_4900.curAnim = ""
  if AI then
    AI.SetSmartObjectState(A0_4900.id, "Closed")
  end
  if A0_4900.Properties.bLocked ~= 0 then
    A0_4900:Lock()
  end
end
L0_4887.Reset = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4901)
  local L1_4902
  L1_4902 = A0_4901.Properties
  L1_4902 = L1_4902.Physics
  EntityCommon.PhysicalizeRigid(A0_4901, 0, L1_4902, 1)
end
L0_4887.PhysicalizeThis = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4903, A1_4904)
  local L2_4905, L3_4906, L4_4907, L5_4908, L6_4909, L7_4910
  if not A1_4904 then
    L2_4905 = 0
    return L2_4905
  end
  L2_4905 = A0_4903.bLocked
  if L2_4905 then
    L2_4905 = A0_4903.nDirection
    if L2_4905 == -1 then
      L2_4905 = 0
      return L2_4905
    end
  end
  L2_4905 = A0_4903.Properties
  L2_4905 = L2_4905.fUseDistance
  if L2_4905 <= 0 then
    L3_4906 = 0
    return L3_4906
  end
  L3_4906 = g_Vectors
  L3_4906 = L3_4906.temp_v1
  L5_4908 = A0_4903
  L4_4907 = A0_4903.GetWorldBBox
  L5_4908 = L4_4907(L5_4908)
  L6_4909 = FastSumVectors
  L7_4910 = L4_4907
  L6_4909(L7_4910, L4_4907, L5_4908)
  L6_4909 = ScaleVectorInPlace
  L7_4910 = L4_4907
  L6_4909(L7_4910, 0.5)
  L7_4910 = A1_4904
  L6_4909 = A1_4904.GetWorldPos
  L6_4909(L7_4910, L3_4906)
  L6_4909 = SubVectors
  L7_4910 = L3_4906
  L6_4909(L7_4910, L3_4906, L4_4907)
  L6_4909 = A0_4903.Properties
  L6_4909 = L6_4909.fUseDistance
  L7_4910 = LengthSqVector
  L7_4910 = L7_4910(L3_4906)
  if L7_4910 < L6_4909 * L6_4909 then
    L7_4910 = 1
    return L7_4910
  else
    L7_4910 = 0
    return L7_4910
  end
end
L0_4887.IsUsable = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4911, A1_4912)
  local L2_4913
  L2_4913 = "@use_door"
  return L2_4913
end
L0_4887.GetUsableMessage = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4914, A1_4915)
  local L2_4916
  L2_4916 = A0_4914.nDirection
  if L2_4916 == 0 then
    return
  end
  L2_4916 = A0_4914.nDirection
  L2_4916 = -L2_4916
  if L2_4916 == 1 then
    A0_4914:Event_Open()
  else
    A0_4914:Event_Close()
  end
end
L0_4887.OnUsed = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4917)
  if AI then
    AI.ModifySmartObjectStates(A0_4917.id, "Locked")
  end
  A0_4917.bLocked = true
end
L0_4887.Lock = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4918)
  if AI then
    AI.ModifySmartObjectStates(A0_4918.id, "-Locked")
  end
  A0_4918.bLocked = false
end
L0_4887.Unlock = L1_4888
L0_4887 = AnimDoor
L0_4887 = L0_4887.Server
function L1_4888(A0_4919, A1_4920)
  if A0_4919.bNeedUpdate == 0 then
    return
  end
  if (A0_4919.bNoAnims ~= 0 or A0_4919.curAnim ~= "" and A0_4919.nDirection ~= 0) and not A0_4919:IsAnimationRunning(0, 0) then
    A0_4919.curAnim = ""
    if A0_4919.nDirection == -1 then
      if AI then
        AI.ModifySmartObjectStates(A0_4919.id, "Closed-Open")
      end
      if A0_4919.portal then
        System.ActivatePortal(A0_4919:GetWorldPos(), 0, A0_4919.id)
      end
      A0_4919:Activate(0)
      A0_4919.bNeedUpdate = 0
      BroadcastEvent(A0_4919, "Close")
    else
      if AI then
        AI.ModifySmartObjectStates(A0_4919.id, "Open-Closed")
      end
      A0_4919:Activate(0)
      A0_4919.bNeedUpdate = 0
      BroadcastEvent(A0_4919, "Open")
    end
  end
end
L0_4887.OnUpdate = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4921, A1_4922)
end
L0_4887.DoPlaySound = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4923)
  local L1_4924
end
L0_4887.DoStopSound = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4925, A1_4926, A2_4927, A3_4928)
  local L4_4929, L5_4930, L6_4931, L7_4932, L8_4933
  L4_4929 = A0_4925.nDirection
  if L4_4929 == A1_4926 then
    return
  end
  L4_4929 = 0
  L5_4930 = 0
  L6_4931 = 1
  L7_4932 = A0_4925.curAnim
  if L7_4932 ~= "" then
    L8_4933 = A0_4925
    L7_4932 = A0_4925.IsAnimationRunning
    L7_4932 = L7_4932(L8_4933, 0, 0)
    if L7_4932 then
      L8_4933 = A0_4925
      L7_4932 = A0_4925.GetAnimationTime
      L7_4932 = L7_4932(L8_4933, 0, 0)
      L4_4929 = L7_4932
      L8_4933 = A0_4925
      L7_4932 = A0_4925.GetAnimationLength
      L7_4932 = L7_4932(L8_4933, 0, A0_4925.curAnim)
      L5_4930 = L7_4932
      L7_4932 = A0_4925.bUseSameAnim
      L6_4931 = not L7_4932
    end
  end
  if L6_4931 then
    L7_4932 = A1_4926
    L8_4933 = A0_4925.Properties
    L8_4933 = L8_4933.Animation
    L8_4933 = L8_4933.anim_Open
    if A1_4926 == -1 and not A0_4925.bUseSameAnim then
      L8_4933 = A0_4925.Properties.Animation.anim_Close
      L7_4932 = -L7_4932
    end
    if not A0_4925.bNoAnims then
      A0_4925:StopAnimation(0, 0)
      A0_4925:StartAnimation(0, L8_4933)
      A0_4925:SetAnimationSpeed(0, 0, L7_4932)
      if A2_4927 then
        A0_4925:SetAnimationTime(0, 0, A2_4927)
      else
        L4_4929 = A0_4925:GetAnimationLength(0, L8_4933) * (1 - 1)
        A0_4925:SetAnimationTime(0, 0, L4_4929)
      end
    end
    A0_4925.curAnim = L8_4933
  else
    L8_4933 = A0_4925
    L7_4932 = A0_4925.SetAnimationSpeed
    L7_4932(L8_4933, 0, 0, A1_4926)
  end
  A0_4925.nDirection = A1_4926
  L8_4933 = A0_4925
  L7_4932 = A0_4925.ForceCharacterUpdate
  L7_4932(L8_4933, 0, true)
  L8_4933 = A0_4925
  L7_4932 = A0_4925.Activate
  L7_4932(L8_4933, 1)
  A0_4925.bNeedUpdate = 1
  L7_4932 = A0_4925.portal
  if L7_4932 then
    L7_4932 = System
    L7_4932 = L7_4932.ActivatePortal
    L8_4933 = A0_4925.GetWorldPos
    L8_4933 = L8_4933(A0_4925)
    L7_4932(L8_4933, 1, A0_4925.id)
  end
  L7_4932 = A0_4925.Properties
  L7_4932 = L7_4932.Sounds
  L7_4932 = L7_4932.snd_Open
  if A1_4926 == -1 then
    L8_4933 = A0_4925.Properties
    L8_4933 = L8_4933.Sounds
    L7_4932 = L8_4933.snd_Close
  end
  if A3_4928 == nil or A3_4928 then
    L8_4933 = A0_4925.DoPlaySound
    L8_4933(A0_4925, L7_4932)
  end
end
L0_4887.DoPlayAnimation = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4934)
  A0_4934:Unlock()
  BroadcastEvent(A0_4934, "Unlock")
end
L0_4887.Event_Unlock = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4935)
  A0_4935:Lock()
  BroadcastEvent(A0_4935, "Lock")
end
L0_4887.Event_Lock = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4936)
  A0_4936:DoPlayAnimation(1)
end
L0_4887.Event_Open = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4937)
  A0_4937:DoPlayAnimation(-1)
end
L0_4887.Event_Close = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4938)
  A0_4938:Hide(1)
  A0_4938:ActivateOutput("Hide", true)
end
L0_4887.Event_Hide = L1_4888
L0_4887 = AnimDoor
function L1_4888(A0_4939)
  A0_4939:Hide(0)
  A0_4939:ActivateOutput("UnHide", true)
end
L0_4887.Event_UnHide = L1_4888
L0_4887 = AnimDoor
L1_4888 = {}
L2_4889 = {}
L3_4890 = {
  AnimDoor.Event_Close,
  "bool"
}
L2_4889.Close = L3_4890
L3_4890 = {
  AnimDoor.Event_Open,
  "bool"
}
L2_4889.Open = L3_4890
L3_4890 = {
  AnimDoor.Event_Lock,
  "bool"
}
L2_4889.Lock = L3_4890
L3_4890 = {
  AnimDoor.Event_Unlock,
  "bool"
}
L2_4889.Unlock = L3_4890
L3_4890 = {
  AnimDoor.Event_Hide,
  "bool"
}
L2_4889.Hide = L3_4890
L3_4890 = {
  AnimDoor.Event_UnHide,
  "bool"
}
L2_4889.UnHide = L3_4890
L1_4888.Inputs = L2_4889
L2_4889 = {}
L2_4889.Close = "bool"
L2_4889.Open = "bool"
L2_4889.Lock = "bool"
L2_4889.Unlock = "bool"
L2_4889.Hide = "bool"
L2_4889.UnHide = "bool"
L1_4888.Outputs = L2_4889
L0_4887.FlowEvents = L1_4888
