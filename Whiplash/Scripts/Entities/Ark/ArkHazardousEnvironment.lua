Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkHazardousEnvironment = {
  Properties = {
    Physics = {
      bPhysicalize = 0,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {Icon = "hazard.bmp", IconOnTop = 1},
  iUpdateRate = 33,
  bVerbose = true
}
GetArkEntityUtils(ArkHazardousEnvironment)
function ArkHazardousEnvironment.Reset(A0_4028)
  A0_4028:SetIsZeroGMode(false)
  A0_4028:SetScriptUpdateRate(A0_4028.iUpdateRate)
  A0_4028:Activate(0)
end
function ArkHazardousEnvironment.SetIsZeroGMode(A0_4029, A1_4030)
  local L2_4031
  L2_4031 = 0
  if A1_4030 then
    L2_4031 = 1
  end
  System.SetCVar("pl_forcezerogmode", L2_4031)
  A0_4029.bIsZeroGMode = A1_4030
end
function ArkHazardousEnvironment.OnInit(A0_4032)
  A0_4032:Log("OnInit")
  A0_4032:Reset()
end
function ArkHazardousEnvironment.OnStartGame(A0_4033)
  A0_4033:Log("OnStartGame")
end
function ArkHazardousEnvironment.OnReset(A0_4034)
  A0_4034:Log("OnReset - Resetting...")
  A0_4034:Reset()
end
function ArkHazardousEnvironment.OnDestroy(A0_4035)
  A0_4035:Log("OnDestroy - Destroying...")
  A0_4035:Reset()
end
function ArkHazardousEnvironment.Event_GravityOn(A0_4036)
  A0_4036:SetIsZeroGMode(false)
  BroadcastEvent(A0_4036, "GravityUpdated")
end
function ArkHazardousEnvironment.Event_GravityOff(A0_4037)
  A0_4037:SetIsZeroGMode(true)
  BroadcastEvent(A0_4037, "GravityUpdated")
end
ArkHazardousEnvironment.FlowEvents = {
  Inputs = {
    GravityOn = {
      ArkHazardousEnvironment.Event_GravityOn,
      "bool"
    },
    GravityOff = {
      ArkHazardousEnvironment.Event_GravityOff,
      "bool"
    },
    AtmosphereOn = {
      ArkHazardousEnvironment.Event_AtmosphereOn,
      "bool"
    },
    AtmosphereOff = {
      ArkHazardousEnvironment.Event_AtmosphereOff,
      "bool"
    }
  },
  Outputs = {GravityUpdated = "bool", AtmosphereUpdated = "bool"}
}
