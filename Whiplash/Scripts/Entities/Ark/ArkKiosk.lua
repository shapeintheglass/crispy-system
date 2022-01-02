Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkKiosk = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    sScreenBoneName = "",
    fInteractDistance = 1,
    fActiveDistance = 1,
    fInteractAngle = 75,
    bEnableCollisionInteraction = 1,
    bDisallowGrenades = true,
    ei_ObjectMapIcon = "",
    material_ScreensaverMaterial = "",
    material_PowerOffMaterial = "",
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
  PropertiesInstance = {
    bVerbose = 0,
    bStartsPowered = 1,
    bMovePlayerOnExamine = 1
  },
  FlowEvents = {
    Inputs = {}
  }
}
function GetKioskEventsForButtons(A0_4144)
  local L1_4145, L2_4146, L3_4147, L4_4148, L5_4149, L6_4150, L7_4151, L8_4152, L9_4153, L10_4154, L11_4155, L12_4156, L13_4157, L14_4158, L15_4159, L16_4160
  L1_4145 = {
    L2_4146,
    L3_4147,
    L4_4148
  }
  L2_4146 = "One"
  L3_4147 = "Two"
  L2_4146 = {}
  L2_4146.Default = 1
  L2_4146.Processing = 2
  L2_4146.Error = 3
  L2_4146.Disabled = 0
  L3_4147 = A0_4144.FlowEvents
  L3_4147 = L3_4147.Inputs
  for L7_4151, L8_4152 in L4_4148(L5_4149) do
    L9_4153 = "Event_Button"
    L10_4154 = tostring
    L11_4155 = L7_4151
    L10_4154 = L10_4154(L11_4155)
    L11_4155 = "_HeaderText"
    L9_4153 = L9_4153 .. L10_4154 .. L11_4155
    function L10_4154(A0_4161, A1_4162, A2_4163)
      ArkKioskScript.SetKioskButtonHeader(A0_4161.id, _UPVALUE0_, A2_4163)
    end
    A0_4144[L9_4153] = L10_4154
    L10_4154 = "Button"
    L11_4155 = tostring
    L12_4156 = L7_4151
    L11_4155 = L11_4155(L12_4156)
    L12_4156 = "HeaderText"
    L10_4154 = L10_4154 .. L11_4155 .. L12_4156
    L11_4155 = {L12_4156, L13_4157}
    L12_4156 = A0_4144[L9_4153]
    L3_4147[L10_4154] = L11_4155
    L11_4155 = "Event_Button"
    L12_4156 = tostring
    L12_4156 = L12_4156(L13_4157)
    L11_4155 = L11_4155 .. L12_4156 .. L13_4157
    function L12_4156(A0_4164, A1_4165, A2_4166)
      ArkKioskScript.SetKioskButtonBody(A0_4164.id, _UPVALUE0_, A2_4166)
    end
    A0_4144[L11_4155] = L12_4156
    L12_4156 = "Button"
    L12_4156 = L12_4156 .. L13_4157 .. L14_4158
    L3_4147[L12_4156] = L13_4157
    for L16_4160, _FORV_17_ in L13_4157(L14_4158) do
      A0_4144["Event_Button" .. tostring(L7_4151) .. "_" .. L16_4160] = function(A0_4167)
        ArkKioskScript.SetKioskButtonState(A0_4167.id, _UPVALUE0_, _UPVALUE1_)
      end
      L3_4147["Button" .. tostring(L7_4151) .. L16_4160] = {
        A0_4144["Event_Button" .. tostring(L7_4151) .. "_" .. L16_4160],
        "bool"
      }
    end
    A0_4144[L13_4157] = L14_4158
    L16_4160 = L7_4151
    L16_4160 = "Hide"
    L16_4160 = A0_4144[L13_4157]
    L3_4147[L14_4158] = L15_4159
  end
  A0_4144.Event_KioskHeaderText = L4_4148
  L3_4147.KioskHeaderText = L4_4148
  A0_4144.Event_KioskPowerOn = L4_4148
  L3_4147.KioskPowerOn = L4_4148
  A0_4144.Event_KioskPowerOff = L4_4148
  L3_4147.KioskPowerOff = L4_4148
  L5_4149.ButtonOnePressed = "bool"
  L5_4149.ButtonTwoPressed = "bool"
  L5_4149.ButtonThreePressed = "bool"
  L5_4149.PoweredOn = "bool"
  L5_4149.PoweredOff = "bool"
  L4_4148.Outputs = L5_4149
end
GetArkEntityUtils(ArkKiosk)
SetupCollisionFiltering(ArkKiosk)
GetKioskEventsForButtons(ArkKiosk)
function ArkKiosk.Init(A0_4168, A1_4169)
end
function ArkKiosk.SetFromProperties(A0_4170)
  local L1_4171
end
function ArkKiosk.OnReset(A0_4172)
  local L1_4173
end
function ArkKiosk.OnSpawn(A0_4174)
  local L1_4175
end
