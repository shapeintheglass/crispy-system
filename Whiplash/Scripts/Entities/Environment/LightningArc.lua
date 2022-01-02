local L0_5210, L1_5211, L2_5212, L3_5213
L0_5210 = {}
L1_5211 = {}
L1_5211.bCheckLOS = 1
L2_5212 = {}
L2_5212.fDelay = 2
L2_5212.fDelayVariation = 0.5
L1_5211.Timing = L2_5212
L2_5212 = {}
L2_5212.ArcPreset = "Default"
L2_5212.particleeffect_TargetHitVFX = ""
L2_5212.particleeffect_SourceVFX = ""
L1_5211.Render = L2_5212
L0_5210.Properties = L1_5211
L1_5211 = {}
L1_5211.Model = "Editor/Objects/Particles.cgf"
L1_5211.Icon = "Lightning.bmp"
L0_5210.Editor = L1_5211
LightningArc = L0_5210
L0_5210 = LightningArc
function L1_5211(A0_5214)
  A0_5214.lightningArc:ReadLuaParameters()
end
L0_5210.OnPropertyChange = L1_5211
L0_5210 = LightningArc
function L1_5211(A0_5215)
  A0_5215.lightningArc:TriggerSpark()
end
L0_5210.Event_Strike = L1_5211
L0_5210 = LightningArc
function L1_5211(A0_5216)
  A0_5216.lightningArc:Enable(true)
end
L0_5210.Event_Enable = L1_5211
L0_5210 = LightningArc
function L1_5211(A0_5217)
  A0_5217.lightningArc:Enable(false)
end
L0_5210.Event_Disable = L1_5211
L0_5210 = LightningArc
L1_5211 = {}
L2_5212 = {}
L3_5213 = {
  LightningArc.Event_Strike,
  "bool"
}
L2_5212.Strike = L3_5213
L3_5213 = {
  LightningArc.Event_Enable,
  "bool"
}
L2_5212.Enable = L3_5213
L3_5213 = {
  LightningArc.Event_Disable,
  "bool"
}
L2_5212.Disable = L3_5213
L1_5211.Inputs = L2_5212
L2_5212 = {}
L2_5212.StrikeTime = "float"
L2_5212.EntityId = "entity"
L1_5211.Outputs = L2_5212
L0_5210.FlowEvents = L1_5211
