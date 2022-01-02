local L0_8259, L1_8260, L2_8261, L3_8262
L0_8259 = {}
L0_8259.type = "PrismObject"
L0_8259.ENTITY_DETAIL_ID = 1
L1_8260 = {}
L0_8259.Properties = L1_8260
L1_8260 = {}
L1_8260.Model = "Editor/Objects/Particles.cgf"
L1_8260.Icon = "Clouds.bmp"
L0_8259.Editor = L1_8260
PrismObject = L0_8259
L0_8259 = PrismObject
function L1_8260(A0_8263)
  A0_8263:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_8259.OnSpawn = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8264)
  A0_8264:NetPresent(0)
  A0_8264:Create()
end
L0_8259.OnInit = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8265)
  local L1_8266
end
L0_8259.OnShutDown = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8267)
  local L1_8268
  L1_8268 = A0_8267.Properties
  A0_8267:LoadPrismObject(0)
end
L0_8259.Create = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8269)
  A0_8269:FreeSlot(0)
end
L0_8259.Delete = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8270)
  if not A0_8270:IsSlotValid(0) then
    A0_8270:Create()
  end
end
L0_8259.OnReset = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8271, A1_8272)
  A1_8272.bHasObject = A0_8271:IsSlotValid(0)
  if A1_8272.bHasObject then
  end
end
L0_8259.OnSave = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8273, A1_8274)
  if A1_8274.bHasObject and not A0_8273:IsSlotValid(0) then
    A0_8273:Create()
  elseif not A1_8274.bHasObject and A0_8273:IsSlotValid(0) then
    A0_8273:Delete()
  end
end
L0_8259.OnLoad = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8275)
  A0_8275:Delete()
end
L0_8259.Event_Hide = L1_8260
L0_8259 = PrismObject
function L1_8260(A0_8276)
  A0_8276:Create()
end
L0_8259.Event_Show = L1_8260
L0_8259 = PrismObject
L1_8260 = {}
L2_8261 = {}
L3_8262 = {
  PrismObject.Event_Hide,
  "bool"
}
L2_8261.Hide = L3_8262
L3_8262 = {
  PrismObject.Event_Show,
  "bool"
}
L2_8261.Show = L3_8262
L1_8260.Inputs = L2_8261
L2_8261 = {}
L2_8261.Hide = "bool"
L2_8261.Show = "bool"
L1_8260.Outputs = L2_8261
L0_8259.FlowEvents = L1_8260
