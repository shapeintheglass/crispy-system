Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkMultipleChoiceKiosk = {
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
    nDelayOnButtonSelect = 1000,
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
  },
  m_alphabet = {
    "A",
    "B",
    "C",
    "D"
  }
}
function GetFlowgraphEvents(A0_4307)
  local L1_4308, L2_4309, L3_4310, L4_4311, L5_4312, L6_4313, L7_4314
  L1_4308 = A0_4307.m_alphabet
  L2_4309 = A0_4307.FlowEvents
  L2_4309 = L2_4309.Inputs
  for L6_4313, L7_4314 in L3_4310(L4_4311) do
    A0_4307["Event_SetAnswerText" .. L7_4314] = function(A0_4315, A1_4316, A2_4317)
      A0_4315:Log(_UPVALUE0_ .. " " .. A2_4317)
      ArkKioskScript.SetMultipleChoiceAnswer(A0_4315.id, _UPVALUE1_, A2_4317)
    end
    L2_4309["SetAnswerText" .. L7_4314] = {
      A0_4307["Event_SetAnswerText" .. L7_4314],
      "string"
    }
  end
  A0_4307.Event_SetQuestionText = L3_4310
  L2_4309.SetQuestionText = L3_4310
  A0_4307.Event_DisplayNewQuestion = L3_4310
  L2_4309.DisplayNewQuestion = L3_4310
  A0_4307.Event_DisplayRorschachPage = L3_4310
  L2_4309.DisplayRorschachPage = L3_4310
  A0_4307.Event_DisplayLogoPage = L3_4310
  L2_4309.DisplayLogoPage = L3_4310
  A0_4307.Event_DisplayStartPage = L3_4310
  L2_4309.DisplayStartPage = L3_4310
  A0_4307.Event_KioskPowerOn = L3_4310
  L2_4309.KioskPowerOn = L3_4310
  A0_4307.Event_KioskPowerOff = L3_4310
  L2_4309.KioskPowerOff = L3_4310
  L4_4311.Used = "bool"
  L4_4311.AnswerAPressed = "bool"
  L4_4311.AnswerBPressed = "bool"
  L4_4311.AnswerCPressed = "bool"
  L4_4311.AnswerDPressed = "bool"
  L4_4311.PoweredOn = "bool"
  L4_4311.PoweredOff = "bool"
  L4_4311.StartButtonPressed = "bool"
  L4_4311.NewQuestionDisplayed = "bool"
  L4_4311.RorshachDisplayed = "bool"
  L4_4311.LogoPageDisplayed = "bool"
  L4_4311.StartPageDisplayed = "bool"
  L3_4310.Outputs = L4_4311
end
GetArkEntityUtils(ArkMultipleChoiceKiosk)
SetupCollisionFiltering(ArkMultipleChoiceKiosk)
GetFlowgraphEvents(ArkMultipleChoiceKiosk)
function ArkMultipleChoiceKiosk.Init(A0_4318, A1_4319)
end
function ArkMultipleChoiceKiosk.SetFromProperties(A0_4320)
  local L1_4321
end
function ArkMultipleChoiceKiosk.OnReset(A0_4322)
  local L1_4323
end
function ArkMultipleChoiceKiosk.OnSpawn(A0_4324)
  local L1_4325
end
