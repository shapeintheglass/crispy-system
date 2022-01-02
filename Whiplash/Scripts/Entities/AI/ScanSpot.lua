local L0_2748, L1_2749, L2_2750, L3_2751
L0_2748 = {}
L1_2749 = {}
L0_2748.Client = L1_2749
L1_2749 = {}
L0_2748.Server = L1_2749
L1_2749 = {}
L0_2748.PropertiesInstance = L1_2749
L1_2749 = {}
L1_2749.bUseEntity = 1
L2_2750 = {}
L2_2750.name = ""
L3_2751 = {}
L3_2751.x = 0
L3_2751.y = 0
L3_2751.z = 0
L2_2750.vOffset = L3_2751
L3_2751 = {}
L3_2751.x = 0
L3_2751.y = 0
L3_2751.z = 0
L2_2750.vRotation = L3_2751
L1_2749.ParticleFX = L2_2750
L0_2748.Properties = L1_2749
L1_2749 = {}
L1_2749.Icon = "TagPoint.bmp"
L0_2748.Editor = L1_2749
L1_2749 = {}
function L2_2750(A0_2752)
  GameAI.RegisterScanSpot(A0_2752.id)
end
L1_2749.OnStartGame = L2_2750
L0_2748.Server = L1_2749
function L1_2749(A0_2753)
  local L1_2754, L2_2755, L3_2756, L4_2757, L5_2758
  L1_2754 = A0_2753.CountLinks
  L1_2754 = L1_2754(L2_2755)
  for L5_2758 = 0, L1_2754 - 1 do
    if A0_2753.Properties.bUseEntity then
      A0_2753:GetLink(L5_2758):OnUsed()
    end
    if A0_2753.Properties.ParticleFX.name ~= "" then
      Particle.SpawnEffect(A0_2753.Properties.ParticleFX.name, SumVectors(A0_2753:GetLink(L5_2758):GetWorldPos(), A0_2753.Properties.ParticleFX.vOffset), A0_2753.Properties.ParticleFX.vRotation, 1)
    end
  end
  L5_2758 = true
  L2_2755(L3_2756, L4_2757, L5_2758)
end
L0_2748.OnScannedByDrone = L1_2749
ScanSpot = L0_2748
L0_2748 = ScanSpot
function L1_2749(A0_2759, A1_2760)
  GameAI.RegisterScanSpot(A0_2759.id)
end
L0_2748.Event_Enable = L1_2749
L0_2748 = ScanSpot
function L1_2749(A0_2761, A1_2762)
  GameAI.UnregisterScanSpot(A0_2761.id)
end
L0_2748.Event_Disable = L1_2749
L0_2748 = ScanSpot
L1_2749 = {}
L2_2750 = {}
L3_2751 = {
  ScanSpot.Event_Enable,
  "bool"
}
L2_2750.Enable = L3_2751
L3_2751 = {
  ScanSpot.Event_Disable,
  "bool"
}
L2_2750.Disable = L3_2751
L1_2749.Inputs = L2_2750
L2_2750 = {}
L2_2750.Scanned = "bool"
L1_2749.Outputs = L2_2750
L0_2748.FlowEvents = L1_2749
