Script.ReloadScript("scripts/Utils/EntityUtils.lua")
GeomCache = {
  Properties = {
    geomcacheFile = "EngineAssets/GeomCaches/default.cax",
    bPlaying = 0,
    fStartTime = 0,
    bLooping = 0,
    objectStandIn = "",
    materialStandInMaterial = "",
    objectFirstFrameStandIn = "",
    materialFirstFrameStandInMaterial = "",
    objectLastFrameStandIn = "",
    materialLastFrameStandInMaterial = "",
    fSortOffset = 0,
    fStandInDistance = 0,
    fStreamInDistance = 0,
    Physics = {bPhysicalize = 0}
  },
  Editor = {
    Icon = "animobject.bmp",
    IconOnTop = 1
  },
  bPlaying = 0,
  currentTime = 0,
  precacheTime = 0,
  bPrecachedOutputTriggered = false
}
function GeomCache.OnLoad(A0_8169, A1_8170)
  A0_8169.currentTime = A1_8170.currentTime
end
function GeomCache.OnSave(A0_8171, A1_8172)
  A1_8172.currentTime = A0_8171.currentTime
end
function GeomCache.OnPostLoad(A0_8173)
  A0_8173:SetGeomCachePlaybackTime(A0_8173.currentTime)
end
function GeomCache.OnSpawn(A0_8174)
  A0_8174.currentTime = A0_8174.Properties.fStartTime
  A0_8174:SetFromProperties()
end
function GeomCache.OnReset(A0_8175)
  A0_8175.currentTime = A0_8175.Properties.fStartTime
  A0_8175.bPrecachedOutputTriggered = true
  A0_8175:SetFromProperties()
end
function GeomCache.SetFromProperties(A0_8176)
  local L1_8177, L2_8178
  L1_8177 = A0_8176.Properties
  L2_8178 = L1_8177.geomcacheFile
  if L2_8178 == "" then
    return
  end
  L2_8178 = A0_8176.LoadGeomCache
  L2_8178(A0_8176, 0, L1_8177.geomcacheFile)
  L2_8178 = L1_8177.bPlaying
  A0_8176.bPlaying = L2_8178
  L2_8178 = A0_8176.bPlaying
  if L2_8178 == 0 then
    L2_8178 = L1_8177.fStartTime
    A0_8176.currentTime = L2_8178
  end
  L2_8178 = A0_8176.SetGeomCachePlaybackTime
  L2_8178(A0_8176, A0_8176.currentTime)
  L2_8178 = A0_8176.SetGeomCacheParams
  L2_8178(A0_8176, L1_8177.bLooping, L1_8177.objectStandIn, L1_8177.materialStandInMaterial, L1_8177.objectFirstFrameStandIn, L1_8177.materialFirstFrameStandInMaterial, L1_8177.objectLastFrameStandIn, L1_8177.materialLastFrameStandInMaterial, L1_8177.fStandInDistance, L1_8177.fStreamInDistance)
  L2_8178 = A0_8176.SetGeomCacheStreaming
  L2_8178(A0_8176, false, 0)
  L2_8178 = A0_8176.SetGeomCacheSortOffset
  L2_8178(A0_8176, L1_8177.fSortOffset)
  L2_8178 = L1_8177.Physics
  L2_8178 = L2_8178.bPhysicalize
  if L2_8178 == 1 then
    L2_8178 = EntityCommon
    L2_8178 = L2_8178.TempPhysParams
    A0_8176:Physicalize(0, PE_ARTICULATED, L2_8178)
  end
  L2_8178 = A0_8176.Activate
  L2_8178(A0_8176, 1)
end
function GeomCache.PhysicalizeThis(A0_8179)
  local L1_8180
  L1_8180 = A0_8179.Properties
  L1_8180 = L1_8180.Physics
  EntityCommon.PhysicalizeRigid(A0_8179, 0, L1_8180, false)
end
function GeomCache.OnUpdate(A0_8181, A1_8182)
  if A0_8181.bPlaying == 1 then
    A0_8181:SetGeomCachePlaybackTime(A0_8181.currentTime)
  end
  if A0_8181:IsGeomCacheStreaming() and not A0_8181.bPrecachedOutputTriggered and A0_8181:GetGeomCachePrecachedTime() >= A0_8181.precacheTime then
    A0_8181:ActivateOutput("Precached", true)
    A0_8181.bPrecachedOutputTriggered = true
  end
  if A0_8181.bPlaying == 1 then
    A0_8181.currentTime = A0_8181.currentTime + A1_8182
  end
end
function GeomCache.OnPropertyChange(A0_8183)
  A0_8183:SetFromProperties()
end
function GeomCache.Event_Start(A0_8184, A1_8185, A2_8186)
  A0_8184.bPlaying = 1
end
function GeomCache.Event_Stop(A0_8187, A1_8188, A2_8189)
  A0_8187.bPlaying = 0
end
function GeomCache.Event_SetTime(A0_8190, A1_8191, A2_8192)
  A0_8190.currentTime = A2_8192
end
function GeomCache.Event_StartStreaming(A0_8193, A1_8194, A2_8195)
  A0_8193.bPrecachedOutputTriggered = false
  A0_8193:SetGeomCacheStreaming(true, A0_8193.currentTime)
end
function GeomCache.Event_StopStreaming(A0_8196, A1_8197, A2_8198)
  A0_8196:SetGeomCacheStreaming(false, 0)
end
function GeomCache.Event_PrecacheTime(A0_8199, A1_8200, A2_8201)
  A0_8199.precacheTime = A2_8201
end
function GeomCache.Event_Hide(A0_8202, A1_8203, A2_8204)
  A0_8202:Hide(1)
end
function GeomCache.Event_Unhide(A0_8205, A1_8206, A2_8207)
  A0_8205:Hide(0)
end
function GeomCache.Event_StopDrawing(A0_8208, A1_8209, A2_8210)
  A0_8208:SetGeomCacheDrawing(false)
end
function GeomCache.Event_StartDrawing(A0_8211, A1_8212, A2_8213)
  A0_8211:SetGeomCacheDrawing(true)
end
GeomCache.FlowEvents = {
  Inputs = {
    Start = {
      GeomCache.Event_Start,
      "any"
    },
    Stop = {
      GeomCache.Event_Stop,
      "any"
    },
    SetTime = {
      GeomCache.Event_SetTime,
      "float"
    },
    StartStreaming = {
      GeomCache.Event_StartStreaming,
      "any"
    },
    StopStreaming = {
      GeomCache.Event_StopStreaming,
      "any"
    },
    PrecacheTime = {
      GeomCache.Event_PrecacheTime,
      "float"
    },
    Hide = {
      GeomCache.Event_Hide,
      "any"
    },
    Unhide = {
      GeomCache.Event_Unhide,
      "any"
    },
    StopDrawing = {
      GeomCache.Event_StopDrawing,
      "any"
    },
    StartDrawing = {
      GeomCache.Event_StartDrawing,
      "any"
    }
  },
  Outputs = {Precached = "bool"}
}
