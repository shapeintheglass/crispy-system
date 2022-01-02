Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkGenericElevatorKiosk = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    sScreenBoneName = "",
    fInteractDistance = 1,
    fActiveDistance = 1,
    fInteractAngle = 75,
    bDisallowGrenades = true,
    bEnableCollisionInteraction = 1,
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    },
    Disrupt = {
      disruptionProfile_Profile = "10739735956140212131",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = "",
      vector_SparkPosOffset = {
        x = 0,
        y = 0,
        z = 0
      },
      vector_SparkRotOffset = {
        x = 0,
        y = 0,
        z = 0
      }
    }
  },
  Editor = {
    Icon = "Prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0, bMovePlayerOnExamine = 1},
  FlowEvents = {
    Inputs = {}
  }
}
function GetElevatorFlowgraphEvents(A0_3886)
  local L1_3887, L2_3888, L3_3889, L4_3890, L5_3891, L6_3892
  L1_3887 = {
    L2_3888,
    L3_3889,
    L4_3890
  }
  L2_3888 = "One"
  L2_3888 = A0_3886.FlowEvents
  L2_3888 = L2_3888.Inputs
  for L6_3892, _FORV_7_ in L3_3889(L4_3890) do
    A0_3886["Event_Button" .. tostring(L6_3892) .. "_HeaderText"] = function(A0_3893, A1_3894, A2_3895)
      ArkKioskScript.SetElevatorButtonFloor(A0_3893.id, _UPVALUE0_, A2_3895)
    end
    L2_3888["Button" .. tostring(L6_3892) .. "HeaderText"] = {
      A0_3886["Event_Button" .. tostring(L6_3892) .. "_HeaderText"],
      "string"
    }
    A0_3886["Event_Button" .. tostring(L6_3892) .. "SubText"] = function(A0_3896, A1_3897, A2_3898)
      ArkKioskScript.SetElevatorButtonSecondary(A0_3896.id, _UPVALUE0_, A2_3898)
    end
    L2_3888["Button" .. tostring(L6_3892) .. "SubText"] = {
      A0_3886["Event_Button" .. tostring(L6_3892) .. "SubText"],
      "string"
    }
  end
  A0_3886.Event_SetStateDefault = L3_3889
  L2_3888.SetStateDefault = L3_3889
  A0_3886.Event_SetStateProcessing = L3_3889
  L2_3888.SetStateProcessing = L3_3889
  A0_3886.Event_SetStateFail = L3_3889
  L2_3888.SetStateFail = L3_3889
  A0_3886.Event_SetCurrentFloorText = L3_3889
  L2_3888.SetCurrentFloorText = L3_3889
  A0_3886.Event_SetDefaultStateText = L3_3889
  L2_3888.SetDefaultStateText = L3_3889
  A0_3886.Event_SetFailStateText = L3_3889
  L2_3888.SetFailStateText = L3_3889
  L4_3890.ButtonOnePressed = "bool"
  L4_3890.ButtonTwoPressed = "bool"
  L4_3890.ButtonThreePressed = "bool"
  L4_3890.StateDefault = "bool"
  L4_3890.StateProcessing = "bool"
  L4_3890.StateFail = "bool"
  L3_3889.Outputs = L4_3890
end
GetArkEntityUtils(ArkGenericElevatorKiosk)
SetupCollisionFiltering(ArkGenericElevatorKiosk)
GetElevatorFlowgraphEvents(ArkGenericElevatorKiosk)
function ArkGenericElevatorKiosk.Init(A0_3899, A1_3900)
end
function ArkGenericElevatorKiosk.SetFromProperties(A0_3901)
  local L1_3902
end
function ArkGenericElevatorKiosk.OnReset(A0_3903)
  local L1_3904
end
function ArkGenericElevatorKiosk.OnSpawn(A0_3905)
  local L1_3906
end
