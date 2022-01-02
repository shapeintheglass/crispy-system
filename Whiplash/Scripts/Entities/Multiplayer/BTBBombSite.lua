local L0_6249, L1_6250, L2_6251, L3_6252
L0_6249 = {}
L1_6250 = {}
L0_6249.Client = L1_6250
L1_6250 = {}
L0_6249.Server = L1_6250
L1_6250 = {}
L1_6250.fileModel = "objects/library/props/ctf/mpnots_flagbase01.cgf"
L1_6250.ModelSubObject = "main"
L1_6250.Radius = 2
L1_6250.teamName = ""
L2_6251 = {}
L2_6251.Effect = "explosions.rocket.soil"
L2_6251.EffectScale = 0.2
L2_6251.Radius = 2
L2_6251.Pressure = 250
L2_6251.Damage = 500
L2_6251.Decal = "textures/decal/explo_decal.dds"
L2_6251.DecalScale = 1
L3_6252 = {}
L3_6252.x = 0
L3_6252.y = 0
L3_6252.z = -1
L2_6251.Direction = L3_6252
L1_6250.Explosion = L2_6251
L0_6249.Properties = L1_6250
L1_6250 = {}
L1_6250.Icon = "Item.bmp"
L1_6250.IconOnTop = 1
L0_6249.Editor = L1_6250
BTBBombSite = L0_6249
L0_6249 = BTBBombSite
L0_6249 = L0_6249.Server
function L1_6250(A0_6253)
  Log("BTBBombSite.Server.OnInit")
  if not A0_6253.bInitialized then
    A0_6253:OnReset()
    A0_6253.bInitialized = 1
  end
  A0_6253.inside = {}
end
L0_6249.OnInit = L1_6250
L0_6249 = BTBBombSite
L0_6249 = L0_6249.Client
function L1_6250(A0_6254)
  Log("BTBBombSite.Client.OnInit")
  if not A0_6254.bInitialized then
    A0_6254:OnReset()
    A0_6254.bInitialized = 1
  end
  A0_6254.inside = {}
end
L0_6249.OnInit = L1_6250
L0_6249 = BTBBombSite
function L1_6250(A0_6255)
  local L1_6256, L2_6257, L3_6258, L4_6259
  L1_6256 = Log
  L2_6257 = "BTBBombSite.OnReset"
  L1_6256(L2_6257)
  L2_6257 = A0_6255
  L1_6256 = A0_6255.LoadObject
  L3_6258 = 0
  L4_6259 = A0_6255.Properties
  L4_6259 = L4_6259.fileModel
  L1_6256(L2_6257, L3_6258, L4_6259)
  L1_6256 = A0_6255.Properties
  L1_6256 = L1_6256.Radius
  L1_6256 = L1_6256 / 2
  L2_6257 = {}
  L3_6258 = -L1_6256
  L2_6257.x = L3_6258
  L3_6258 = -L1_6256
  L2_6257.y = L3_6258
  L3_6258 = -L1_6256
  L2_6257.z = L3_6258
  L3_6258 = {}
  L3_6258.x = L1_6256
  L3_6258.y = L1_6256
  L3_6258.z = L1_6256
  L4_6259 = A0_6255.SetTriggerBBox
  L4_6259(A0_6255, L2_6257, L3_6258)
  L4_6259 = A0_6255.Physicalize
  L4_6259(A0_6255, 0, PE_STATIC, {mass = 0})
  L4_6259 = A0_6255.SetFlags
  L4_6259(A0_6255, ENTITY_FLAG_ON_RADAR, 0)
  L4_6259 = CryAction
  L4_6259 = L4_6259.IsServer
  L4_6259 = L4_6259()
  if L4_6259 then
    L4_6259 = A0_6255.Properties
    L4_6259 = L4_6259.teamName
    if L4_6259 ~= "" then
      L4_6259 = g_gameRules
      L4_6259 = L4_6259.game
      L4_6259 = L4_6259.GetTeamId
      L4_6259 = L4_6259(L4_6259, A0_6255.Properties.teamName)
      if L4_6259 > 0 then
        g_gameRules.game:SetTeam(L4_6259, A0_6255.id)
      end
    end
  end
end
L0_6249.OnReset = L1_6250
L0_6249 = BTBBombSite
L0_6249 = L0_6249.Server
function L1_6250(A0_6260, A1_6261, A2_6262)
  Log("BTBBombSite.Server.OnEnterArea entity:%s, this areas team:%s", EntityName(A1_6261.id), A0_6260.Properties.teamName)
  for _FORV_7_, _FORV_8_ in ipairs(A0_6260.inside) do
    if _FORV_8_ == A1_6261.id then
      Log("Entity already inserted")
      break
    end
  end
  if not true then
    table.insert(A0_6260.inside, A1_6261.id)
    Log("Entity added")
  end
  if g_gameRules.Server.EntityEnterBombSiteArea ~= nil then
    g_gameRules.Server.EntityEnterBombSiteArea(g_gameRules, A1_6261, A0_6260)
  end
end
L0_6249.OnEnterArea = L1_6250
L0_6249 = BTBBombSite
L0_6249 = L0_6249.Client
function L1_6250(A0_6263, A1_6264, A2_6265)
  Log("BTBBombSite.Client.OnEnterArea entity:%s, this areas team:%s", EntityName(A1_6264.id), A0_6263.Properties.teamName)
  if g_gameRules.Client.EntityEnterBombSiteArea ~= nil then
    g_gameRules.Client.EntityEnterBombSiteArea(g_gameRules, A1_6264, A0_6263)
  end
end
L0_6249.OnEnterArea = L1_6250
L0_6249 = BTBBombSite
L0_6249 = L0_6249.Client
function L1_6250(A0_6266, A1_6267, A2_6268)
  Log("BTBBombSite.Client.OnLeaveArea entity:%s, this areas team:%s", EntityName(A1_6267.id), A0_6266.Properties.teamName)
  if g_gameRules.Client.EntityLeaveBombSiteArea ~= nil then
    g_gameRules.Client.EntityLeaveBombSiteArea(g_gameRules, A1_6267, A0_6266)
  end
end
L0_6249.OnLeaveArea = L1_6250
L0_6249 = BTBBombSite
L0_6249 = L0_6249.Server
function L1_6250(A0_6269, A1_6270, A2_6271)
  local L3_6272, L4_6273, L5_6274, L6_6275
  L6_6275 = A1_6270.id
  L6_6275 = A0_6269.Properties
  L6_6275 = L6_6275.teamName
  L3_6272(L4_6273, L5_6274, L6_6275)
  for L6_6275, _FORV_7_ in L3_6272(L4_6273) do
    if _FORV_7_ == A1_6270.id then
      table.remove(A0_6269.inside, L6_6275)
      Log("Entity removed")
      break
    end
  end
  if L3_6272 ~= nil then
    L6_6275 = A0_6269
    L3_6272(L4_6273, L5_6274, L6_6275)
  end
end
L0_6249.OnLeaveArea = L1_6250
L0_6249 = BTBBombSite
function L1_6250(A0_6276, A1_6277)
  for _FORV_5_, _FORV_6_ in ipairs(A0_6276.inside) do
    if _FORV_6_ == A1_6277 then
      return true
    end
  end
  return false
end
L0_6249.EntityInsideArea = L1_6250
L0_6249 = BTBBombSite
function L1_6250(A0_6278)
  local L1_6279, L2_6280
  L1_6279 = A0_6278.Properties
  L1_6279 = L1_6279.Explosion
  L2_6280 = L1_6279.Radius
  g_gameRules:CreateExplosion(A0_6278.id, A0_6278.id, L1_6279.Damage, A0_6278:GetWorldPos(), L1_6279.Direction, L2_6280, nil, L1_6279.Pressure, L1_6279.HoleSize, L1_6279.Effect, L1_6279.EffectScale)
end
L0_6249.Explode = L1_6250
