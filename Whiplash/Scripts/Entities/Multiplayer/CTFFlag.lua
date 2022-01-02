local L0_6362, L1_6363, L2_6364
L0_6362 = {}
L1_6363 = {}
L0_6362.Server = L1_6363
L1_6363 = {}
L0_6362.Client = L1_6363
L1_6363 = {}
L1_6363.objModelSame = "engine/engineassets/objects/default.cgf"
L1_6363.objModelOther = "engine/engineassets/objects/default.cgf"
L1_6363.Team = 0
L1_6363.ActionSuffix = "flag"
L1_6363.ActionSuffixAG = "_flag"
L1_6363.PlayerTag = "flag"
L2_6364 = {}
L2_6364.mass = 20
L2_6364.density = 0
L2_6364.water_damping = 80
L2_6364.water_resistance = 190
L2_6364.water_density = 250
L1_6363.Physics = L2_6364
L0_6362.Properties = L1_6363
CTFFlag = L0_6362
L0_6362 = CTFFlag
function L1_6363(A0_6365, A1_6366, A2_6367)
  if string.len(A2_6367) > 0 then
    if string.lower(string.sub(A2_6367, -4)) == ".chr" or string.lower(string.sub(A2_6367, -4)) == ".cdf" or string.lower(string.sub(A2_6367, -4)) == ".cga" then
      A0_6365:LoadCharacter(A1_6366, A2_6367)
    else
      A0_6365:LoadObject(A1_6366, A2_6367)
    end
  end
end
L0_6362.LoadGeometry = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6368)
  local L1_6369, L2_6370
  L1_6369 = g_gameRules
  L1_6369 = L1_6369.game
  L2_6370 = L1_6369
  L1_6369 = L1_6369.GetTeam
  L1_6369 = L1_6369(L2_6370, A0_6368.id)
  L2_6370 = 0
  if g_localActorId ~= nil then
    L2_6370 = g_gameRules.game:GetTeam(g_localActorId)
  end
  if L1_6369 == L2_6370 then
    A0_6368:LoadGeometry(0, A0_6368.Properties.objModelOther)
  else
    A0_6368:LoadGeometry(0, A0_6368.Properties.objModelSame)
  end
end
L0_6362.LoadCorrectGeometry = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6371)
  CryAction.CreateGameObjectForEntity(A0_6371.id)
  CryAction.BindGameObjectToNetwork(A0_6371.id)
  CryAction.ForceGameObjectUpdate(A0_6371.id, true)
  A0_6371:RedirectAnimationToLayer0(0, true)
  A0_6371:Activate(1)
  A0_6371:SetPhysicParams(PHYSICPARAM_BUOYANCY, A0_6371.Properties.Physics)
  A0_6371:OnReset()
end
L0_6362.OnSpawn = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6372)
  A0_6372:LoadCorrectGeometry()
  A0_6372:SetViewDistRatio(255)
end
L0_6362.OnReset = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6373)
  A0_6373:OnReset()
end
L0_6362.OnInit = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6374, A1_6375)
  A0_6374:LoadCorrectGeometry()
end
L0_6362.OnSetTeam = L1_6363
L0_6362 = CTFFlag
L0_6362 = L0_6362.Server
function L1_6363(A0_6376)
  if not A0_6376.bInitialized then
    A0_6376:OnReset()
    A0_6376.bInitialized = 1
  end
end
L0_6362.OnInit = L1_6363
L0_6362 = CTFFlag
L0_6362 = L0_6362.Client
function L1_6363(A0_6377)
  if not A0_6377.bInitialized then
    A0_6377:OnReset()
    A0_6377.bInitialized = 1
  end
end
L0_6362.OnInit = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6378)
  A0_6378:OnReset()
end
L0_6362.OnPropertyChange = L1_6363
L0_6362 = CTFFlag
function L1_6363(A0_6379, A1_6380)
  if g_gameRules.game:GetTeam(A1_6380.id) ~= g_gameRules.game:GetTeam(A0_6379.id) then
    return 725725
  else
    return 0
  end
end
L0_6362.IsUsable = L1_6363
