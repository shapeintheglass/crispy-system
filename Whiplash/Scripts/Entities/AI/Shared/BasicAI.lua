Script.ReloadScript("Scripts/Entities/AI/Shared/BasicAITable.lua")
Script.ReloadScript("Scripts/Entities/AI/Shared/BasicAIEvent.lua")
Script.ReloadScript("Scripts/ArkEntityUtils.lua")
BasicAI = {
  ai = 1,
  IsAIControlled = function()
    local L0_2226, L1_2227
    L0_2226 = true
    return L0_2226
  end,
  Properties = {
    signalmodifier_SignalModifier = "18446744073709551615",
    fileSignalReceiverConfig = "ark/ai/AiSignalReceiverConfigs/NpcBaseSignalReceiverConfig.xml"
  },
  Server = {},
  Client = {},
  Editor = {Icon = "User.bmp", IconOnTop = 1}
}
function BasicAI.OnPropertyChange(A0_2228)
  local L1_2229
  L1_2229 = System
  L1_2229 = L1_2229.IsEditor
  L1_2229 = L1_2229()
  A0_2228:RegisterAI(L1_2229)
  A0_2228:OnReset()
end
function BasicAI.OnLoadAI(A0_2230, A1_2231)
  local L2_2232, L3_2233, L4_2234, L5_2235, L6_2236, L7_2237, L8_2238, L9_2239, L10_2240, L11_2241, L12_2242, L13_2243, L14_2244, L15_2245
  L2_2232 = {}
  A0_2230.AI = L2_2232
  L2_2232 = A1_2231.AI
  if L2_2232 then
    L2_2232 = A1_2231.AI
    A0_2230.AI = L2_2232
  end
  L2_2232 = A1_2231.Events
  if L2_2232 then
    L2_2232 = {}
    A0_2230.Events = L2_2232
    L2_2232 = A0_2230.Events
    for L6_2236, L7_2237 in L3_2233(L4_2234) do
      L8_2238 = A1_2231.Events
      L8_2238 = L8_2238[L6_2236]
      if not L9_2239 then
        L2_2232[L6_2236] = L9_2239
      end
      for L12_2242, L13_2243 in L9_2239(L10_2240) do
        L14_2244 = L13_2243[1]
        L15_2245 = L13_2243[2]
        table.insert(L2_2232[L6_2236], {L14_2244, L15_2245})
      end
    end
  else
    A0_2230.Events = nil
  end
  L2_2232 = A1_2231.spawnedEntity
  if L2_2232 then
    L2_2232 = A1_2231.spawnedEntity
    A0_2230.spawnedEntity = L2_2232
  else
    A0_2230.spawnedEntity = nil
  end
  L2_2232 = A1_2231.lastSpawnedEntity
  if L2_2232 then
    L2_2232 = A1_2231.lastSpawnedEntity
    A0_2230.lastSpawnedEntity = L2_2232
  else
    A0_2230.lastSpawnedEntity = nil
  end
  L2_2232 = A1_2231.InitialPosition
  if L2_2232 then
    L2_2232 = A1_2231.InitialPosition
    A0_2230.InitialPosition = L2_2232
  else
    A0_2230.InitialPosition = nil
  end
  L2_2232 = A0_2230.OnLoadCustom
  if L2_2232 then
    L2_2232 = A0_2230.OnLoadCustom
    L2_2232(L3_2233, L4_2234)
  end
end
function BasicAI.OnSaveAI(A0_2246, A1_2247)
  local L2_2248, L3_2249, L4_2250, L5_2251, L6_2252, L7_2253, L8_2254, L9_2255, L10_2256, L11_2257, L12_2258, L13_2259, L14_2260
  L2_2248 = A0_2246.Events
  if L2_2248 then
    L2_2248 = {}
    A1_2247.Events = L2_2248
    L2_2248 = A1_2247.Events
    for L6_2252, L7_2253 in L3_2249(L4_2250) do
      if not L8_2254 then
        L2_2248[L6_2252] = L8_2254
      end
      for L11_2257, L12_2258 in L8_2254(L9_2255) do
        L13_2259 = L12_2258[1]
        L14_2260 = L12_2258[2]
        table.insert(L2_2248[L6_2252], {L13_2259, L14_2260})
      end
    end
  end
  L2_2248 = A0_2246.spawnedEntity
  if L2_2248 then
    L2_2248 = A0_2246.spawnedEntity
    A1_2247.spawnedEntity = L2_2248
  end
  L2_2248 = A0_2246.lastSpawnedEntity
  if L2_2248 then
    L2_2248 = A0_2246.lastSpawnedEntity
    A1_2247.lastSpawnedEntity = L2_2248
  end
  L2_2248 = A0_2246.InitialPosition
  if L2_2248 then
    L2_2248 = A0_2246.InitialPosition
    A1_2247.InitialPosition = L2_2248
  end
  L2_2248 = A0_2246.OnSaveCustom
  if L2_2248 then
    L2_2248 = A0_2246.OnSaveCustom
    L2_2248(L3_2249, L4_2250)
  end
end
function BasicAI.RegisterAI(A0_2261, A1_2262)
  if (not A1_2262 or A1_2262 == false) and CryAction.HasAI(A0_2261.id) then
    return
  end
  if A0_2261 ~= g_localActor then
    if A0_2261.AIType == nil then
      CryAction.RegisterWithAI(A0_2261.id, AIOBJECT_ACTOR, A0_2261.Properties, A0_2261.PropertiesInstance, A0_2261.AIMovementAbility, A0_2261.melee)
    else
      CryAction.RegisterWithAI(A0_2261.id, A0_2261.AIType, A0_2261.Properties, A0_2261.PropertiesInstance, A0_2261.AIMovementAbility, A0_2261.melee)
    end
    A0_2261._enabled = true
    if A0_2261:IsHidden() then
      AI.LogEvent(A0_2261:GetName() .. ": The entity is hidden during init -> disable AI.")
      A0_2261:TriggerEvent(AIEVENT_DISABLE)
      A0_2261._enabled = false
    end
  end
end
function BasicAI.ResetAIParameters(A0_2263, A1_2264, A2_2265)
  if not A1_2264 or A2_2265 then
    AI.ResetParameters(A0_2263.id, A2_2265, A0_2263.Properties, A0_2263.PropertiesInstance, A0_2263.AIMovementAbility, A0_2263.melee)
    A0_2263._enabled = true
    if A0_2263:IsHidden() then
      AI.LogEvent(A0_2263:GetName() .. ": The entity is hidden during init -> disable AI.")
      A0_2263:TriggerEvent(AIEVENT_DISABLE)
      A0_2263._enabled = false
    end
  end
end
function BasicAI.OnReset(A0_2266, A1_2267, A2_2268)
  if A0_2266.OnPreReset ~= nil then
    A0_2266:OnPreReset(A1_2267, A2_2268)
  end
  if A0_2266.ResetOnUsed then
    A0_2266:ResetOnUsed()
  end
  A0_2266:NetPresent(1)
  A0_2266.UpdateTime = 0.05
  A0_2266:SetScriptUpdateRate(A0_2266.UpdateTime)
  A0_2266.useAction = AIUSEOP_NONE
  A0_2266.groupid = A0_2266.PropertiesInstance.groupid
  BasicActor.Reset(A0_2266, A1_2267, A2_2268)
  if A1_2267 and A0_2266.Properties.signalmodifier_SignalModifier ~= nil then
    Ark.AttachInboundSignalModifier(A0_2266.id, A0_2266.Properties.signalmodifier_SignalModifier)
  end
  if A0_2266.OnEnabled then
    A0_2266:OnEnabled()
  end
  A0_2266:SetColliderMode(A0_2266.Properties.eiColliderMode)
  A0_2266.InitialPosition = A0_2266:GetPos()
  A0_2266:CheckShaderParamCallbacks()
  if A0_2266.OnResetCustom then
    A0_2266:OnResetCustom(A1_2267, A2_2268)
  end
end
function BasicAI.OnSpawn(A0_2269, A1_2270)
  A0_2269:RegisterAI(not A1_2270)
end
function BasicAI.OnBeingReused(A0_2271)
  A0_2271:Event_Disabled(A0_2271)
end
function BasicAI.GetReturnToPoolWeight(A0_2272, A1_2273)
  if not A0_2272:IsDead() and not A1_2273 then
    return 0
  end
  if A0_2272:IsDead() then
  end
  return 0 + 1000 + A0_2272:GetDistance(g_localActor.id)
end
function BasicAI.OnGetPoolSignature(A0_2274, A1_2275)
  local L2_2276
  L2_2276 = A0_2274.AIType
  if L2_2276 then
    L2_2276 = A0_2274.AIType
    A1_2275.AIType = L2_2276
  end
end
function BasicAI.Server.OnInit(A0_2277, A1_2278)
  A0_2277:OnReset(true, A1_2278)
end
function BasicAI.Server.OnInitClient(A0_2279, A1_2280)
  if A0_2279._enabled then
    A0_2279.onClient:ClAIEnable(A1_2280)
  else
    A0_2279.onClient:ClAIDisable(A1_2280)
  end
end
function BasicAI.Client.ClAIEnable(A0_2281)
  if not CryAction.IsServer() then
    A0_2281:Hide(0)
    A0_2281:Event_Enabled(A0_2281)
  end
end
function BasicAI.Client.ClAIDisable(A0_2282)
  if not CryAction.IsServer() then
    A0_2282:Hide(1)
    A0_2282:TriggerEvent(AIEVENT_DISABLE)
  end
end
function BasicAI.Client.OnShutDown(A0_2283)
  BasicActor.ShutDown(A0_2283)
end
function BasicAI.OnDeath(A0_2284)
  GameAI.UnregisterWithAllModules(A0_2284.id)
  if A0_2284.Event_Dead then
    A0_2284:Event_Dead(A0_2284)
  end
end
function BasicAI.Expose(A0_2285)
  Net.Expose({
    Class = A0_2285,
    ClientMethods = {
      ClAIEnable = {RELIABLE_ORDERED, PRE_ATTACH},
      ClAIDisable = {RELIABLE_ORDERED, PRE_ATTACH}
    },
    ServerMethods = {},
    ServerProperties = {}
  })
end
function BasicAI.Client.OnPreparedFromPool(A0_2286)
  local L1_2287
end
function BasicAI.IsInvulnerable(A0_2288)
  local L1_2289
  L1_2289 = false
  return L1_2289
end
function CreateAI(A0_2290)
  local L1_2291
  L1_2291 = {}
  mergef(L1_2291, A0_2290, 1)
  mergef(L1_2291, BasicAI, 1)
  mergef(L1_2291, BasicAIEvent, 1)
  mergef(L1_2291, BasicAITable, 1)
  MakeSpawnable(L1_2291)
  return L1_2291
end
function CreateAISubclass(A0_2292, A1_2293)
  local L2_2294
  L2_2294 = {}
  mergef(L2_2294, A0_2292, 1)
  mergef(L2_2294, A1_2293, 1)
  mergef(L2_2294, BasicAI, 1)
  mergef(L2_2294, BasicAIEvent, 1)
  mergef(L2_2294, BasicAITable, 1)
  MakeSpawnable(L2_2294)
  return L2_2294
end
