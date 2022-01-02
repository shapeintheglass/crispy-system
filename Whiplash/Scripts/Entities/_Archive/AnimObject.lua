local L0_227, L1_228, L2_229, L3_230
L0_227 = {}
L1_228 = {}
L1_228.bPhysicalize = 0
L1_228.Animation = "default"
L1_228.fileModel = "Objects/characters/story_characters/valerie/valeri.cgf"
L1_228.bPlaying = 0
L1_228.bAlwaysUpdate = 0
L2_229 = {}
L2_229.boneName = "weapon_bone"
L2_229.fileObject = "Objects/Weapons/M4/M4_bind.cgf"
L1_228.attachmet1 = L2_229
L2_229 = {}
L2_229.boneName = ""
L2_229.fileObject = ""
L1_228.attachmet2 = L2_229
L2_229 = {}
L2_229.boneName = ""
L2_229.fileObject = ""
L1_228.attachmet3 = L2_229
L2_229 = {}
L2_229.boneName = ""
L2_229.fileObject = ""
L1_228.attachmet4 = L2_229
L0_227.Properties = L1_228
AnimObject = L0_227
L0_227 = AnimObject
function L1_228(A0_231, A1_232)
  A0_231:StartAnimation(0, A0_231.Properties.Animation)
end
L0_227.Event_StartAnimation = L1_228
L0_227 = AnimObject
function L1_228(A0_233, A1_234)
  A0_233:ResetAnimation(0, -1)
end
L0_227.Event_StopAnimtion = L1_228
L0_227 = AnimObject
function L1_228(A0_235)
  if A0_235.Properties.fileModel ~= "" then
    A0_235:LoadCharacter(A0_235.Properties.fileModel, 0)
    if A0_235.Properties.bPhysicalize == 1 then
      A0_235:CreateStaticEntity(200, 0)
      A0_235:PhysicalizeCharacter(200, 0, 73, 0)
    end
  end
  if A0_235.Properties.attachmet1.fileObject ~= "" then
    A0_235:LoadObject(A0_235.Properties.attachmet1.fileObject, 0, 1)
    A0_235:AttachObjectToBone(0, A0_235.Properties.attachmet1.boneName)
  end
  if A0_235.Properties.attachmet2.fileObject ~= "" then
    A0_235:LoadObject(A0_235.Properties.attachmet2.fileObject, 1, 1)
    A0_235:AttachObjectToBone(1, A0_235.Properties.attachmet2.boneName)
  end
  if A0_235.Properties.attachmet3.fileObject ~= "" then
    A0_235:LoadObject(A0_235.Properties.attachmet3.fileObject, 2, 1)
    A0_235:AttachObjectToBone(2, A0_235.Properties.attachmet3.boneName)
  end
  if A0_235.Properties.attachmet4.fileObject ~= "" then
    A0_235:LoadObject(A0_235.Properties.attachmet4.fileObject, 3, 1)
    A0_235:AttachObjectToBone(3, A0_235.Properties.attachmet4.boneName)
  end
  if A0_235.Properties.bPlaying == 1 then
    A0_235:StartAnimation(0, A0_235.Properties.Animation)
  else
    A0_235:ResetAnimation(0, -1)
  end
  if A0_235.Properties.bAlwaysUpdate == 1 then
    A0_235:Activate(1)
    A0_235:SetUpdateType(eUT_Unconditional)
  else
    A0_235:Activate(0)
    A0_235:SetUpdateType(eUT_Visible)
  end
end
L0_227.OnReset = L1_228
L0_227 = AnimObject
function L1_228(A0_236, A1_237)
  A0_236:DetachObjectToBone(A0_236.Properties.attachmet1.boneName)
end
L0_227.Event_HideAttached = L1_228
L0_227 = AnimObject
function L1_228(A0_238, A1_239)
  A0_238:AttachObjectToBone(0, A0_238.Properties.attachmet1.boneName)
end
L0_227.Event_ShowAttached = L1_228
L0_227 = AnimObject
function L1_228(A0_240)
  A0_240:OnReset()
end
L0_227.OnPropertyChange = L1_228
L0_227 = AnimObject
function L1_228(A0_241)
  A0_241:OnReset()
end
L0_227.OnInit = L1_228
L0_227 = AnimObject
function L1_228(A0_242)
  local L1_243
end
L0_227.OnShutDown = L1_228
L0_227 = AnimObject
function L1_228(A0_244, A1_245)
end
L0_227.OnSave = L1_228
L0_227 = AnimObject
function L1_228(A0_246, A1_247)
end
L0_227.OnLoad = L1_228
L0_227 = AnimObject
L1_228 = {}
L2_229 = {}
L3_230 = {
  AnimObject.Event_HideAttached,
  "bool"
}
L2_229.HideAttached = L3_230
L3_230 = {
  AnimObject.Event_ShowAttached,
  "bool"
}
L2_229.ShowAttached = L3_230
L3_230 = {
  AnimObject.Event_StartAnimation,
  "bool"
}
L2_229.StartAnimation = L3_230
L3_230 = {
  AnimObject.Event_StopAnimation,
  "bool"
}
L2_229.StopAnimation = L3_230
L1_228.Inputs = L2_229
L2_229 = {}
L2_229.HideAttached = "bool"
L2_229.ShowAttached = "bool"
L2_229.StartAnimation = "bool"
L2_229.StopAnimation = "bool"
L1_228.Outputs = L2_229
L0_227.FlowEvents = L1_228
