local L0_6240, L1_6241
L0_6240 = {}
L1_6241 = {}
L0_6240.Client = L1_6241
L1_6241 = {}
L0_6240.Server = L1_6241
L1_6241 = {}
L1_6241.fileModel = "objects/library/props/ctf/mpnots_flagbase01.cgf"
L1_6241.ModelSubObject = "main"
L1_6241.Radius = 2
L0_6240.Properties = L1_6241
L1_6241 = {}
L1_6241.Icon = "Item.bmp"
L1_6241.IconOnTop = 1
L0_6240.Editor = L1_6241
BTBBombBase = L0_6240
L0_6240 = BTBBombBase
L0_6240 = L0_6240.Server
function L1_6241(A0_6242)
  Log("BTBBombBase.Server.OnInit")
  if not A0_6242.bInitialized then
    A0_6242:OnReset()
    A0_6242.bInitialized = 1
  end
  A0_6242.inside = {}
end
L0_6240.OnInit = L1_6241
L0_6240 = BTBBombBase
L0_6240 = L0_6240.Client
function L1_6241(A0_6243)
  Log("BTBBombBase.Client.OnInit")
  if not A0_6243.bInitialized then
    A0_6243:OnReset()
    A0_6243.bInitialized = 1
  end
  A0_6243.inside = {}
end
L0_6240.OnInit = L1_6241
L0_6240 = BTBBombBase
function L1_6241(A0_6244)
  local L1_6245, L2_6246, L3_6247
  L1_6245 = Log
  L2_6246 = "BTBBombBase.OnReset"
  L1_6245(L2_6246)
  L2_6246 = A0_6244
  L1_6245 = A0_6244.LoadObject
  L3_6247 = 0
  L1_6245(L2_6246, L3_6247, A0_6244.Properties.fileModel)
  L1_6245 = A0_6244.Properties
  L1_6245 = L1_6245.Radius
  L1_6245 = L1_6245 / 2
  L2_6246 = {}
  L3_6247 = -L1_6245
  L2_6246.x = L3_6247
  L3_6247 = -L1_6245
  L2_6246.y = L3_6247
  L3_6247 = -L1_6245
  L2_6246.z = L3_6247
  L3_6247 = {}
  L3_6247.x = L1_6245
  L3_6247.y = L1_6245
  L3_6247.z = L1_6245
  A0_6244:SetTriggerBBox(L2_6246, L3_6247)
  A0_6244:Physicalize(0, PE_STATIC, {mass = 0})
  A0_6244:SetFlags(ENTITY_FLAG_ON_RADAR, 0)
end
L0_6240.OnReset = L1_6241
L0_6240 = BTBBombBase
L0_6240 = L0_6240.Server
function L1_6241(A0_6248)
  Log("HIT BASE!")
end
L0_6240.OnHit = L1_6241
