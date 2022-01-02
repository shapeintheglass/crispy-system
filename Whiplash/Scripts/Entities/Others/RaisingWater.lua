local L0_7127, L1_7128, L2_7129, L3_7130
L0_7127 = {}
L0_7127.type = "Trigger"
L1_7128 = {}
L1_7128.WaterVolume = ""
L1_7128.height_start = 0
L1_7128.height_end = 3
L1_7128.fSpeed = 0.1
L1_7128.fUpdateTime = 0.1
L1_7128.bDrain = 0
L1_7128.fDrainSpeed = 0.1
L0_7127.Properties = L1_7128
L0_7127.bStopped = 0
L0_7127.bDraining = 0
L1_7128 = {}
L1_7128.Icon = "item.bmp"
L0_7127.Editor = L1_7128
RaisingWater = L0_7127
L0_7127 = RaisingWater
function L1_7128(A0_7131)
  A0_7131:OnReset()
end
L0_7127.OnPropertyChange = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7132)
  A0_7132:OnReset()
end
L0_7127.OnInit = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7133)
  local L1_7134
end
L0_7127.OnShutDown = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7135, A1_7136)
  local L2_7137
  L2_7137 = A0_7135.currlevel
  A1_7136.currlevel = L2_7137
  L2_7137 = A0_7135.bStopped
  A1_7136.bStopped = L2_7137
  L2_7137 = A0_7135.bDraining
  A1_7136.bDraining = L2_7137
  L2_7137 = A0_7135.band_height
  A1_7136.band_height = L2_7137
  L2_7137 = A0_7135.speed
  A1_7136.speed = L2_7137
  L2_7137 = A0_7135.drainspeed
  A1_7136.drainspeed = L2_7137
end
L0_7127.OnSave = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7138, A1_7139)
  A0_7138.currlevel = A1_7139.currlevel
  A0_7138.bStopped = A1_7139.bStopped
  A0_7138.bDraining = A1_7139.bDraining
  A0_7138.band_height = A1_7139.band_height
  A0_7138.speed = A1_7139.speed
  A0_7138.drainspeed = A1_7139.drainspeed
  if A0_7138.currlevel > 1.0E-4 then
    A0_7138:OnTimer()
  end
end
L0_7127.OnLoad = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7140)
  A0_7140:Activate(1)
  A0_7140.currlevel = 0
  A0_7140.bStopped = 0
  A0_7140.bDraining = 0
  A0_7140.band_height = A0_7140.Properties.height_end - A0_7140.Properties.height_start
  A0_7140.speed = (A0_7140.Properties.height_end - A0_7140.Properties.height_start) * (A0_7140.Properties.fSpeed / 100)
  A0_7140.drainspeed = (A0_7140.Properties.height_end - A0_7140.Properties.height_start) * (A0_7140.Properties.fDrainSpeed / 100)
  System.SetWaterVolumeOffset(A0_7140.Properties.WaterVolume, 0, 0, 0)
end
L0_7127.OnReset = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7141)
  A0_7141:OnReset()
  A0_7141:SetTimer(A0_7141.Properties.fUpdateTime * 1000, 0)
  BroadcastEvent(A0_7141, "RaiseWater")
end
L0_7127.Event_RaiseWater = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7142)
  A0_7142.bStopped = 1
  if A0_7142.Properties.bDrain == 1 then
    A0_7142.bDraining = 1
  end
  BroadcastEvent(A0_7142, "StopWater")
end
L0_7127.Event_StopWater = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7143)
  BroadcastEvent(A0_7143, "WaterEnded")
end
L0_7127.Event_WaterEnded = L1_7128
L0_7127 = RaisingWater
function L1_7128(A0_7144)
  if A0_7144.bDraining == 1 then
    A0_7144.currlevel = A0_7144.currlevel - A0_7144.drainspeed
    System.SetWaterVolumeOffset(A0_7144.Properties.WaterVolume, 0, 0, A0_7144.currlevel)
    if math.abs(A0_7144.currlevel) > math.abs(A0_7144.Properties.height_start) then
      A0_7144:SetTimer(A0_7144.Properties.fUpdateTime * 1000, 0)
    else
      System.SetWaterVolumeOffset(A0_7144.Properties.WaterVolume, 0, 0, A0_7144.Properties.height_start)
      A0_7144:Event_WaterEnded()
    end
  else
    A0_7144.currlevel = A0_7144.currlevel + A0_7144.speed
    System.SetWaterVolumeOffset(A0_7144.Properties.WaterVolume, 0, 0, A0_7144.currlevel)
    if math.abs(A0_7144.currlevel) < math.abs(A0_7144.band_height) then
      if A0_7144.bStopped == 0 then
        A0_7144:SetTimer(A0_7144.Properties.fUpdateTime * 1000, 0)
      end
    else
      System.SetWaterVolumeOffset(A0_7144.Properties.WaterVolume, 0, 0, A0_7144.band_height)
      A0_7144:Event_WaterEnded()
    end
  end
end
L0_7127.OnTimer = L1_7128
L0_7127 = RaisingWater
L1_7128 = {}
L2_7129 = {}
L3_7130 = {
  RaisingWater.Event_RaiseWater,
  "bool"
}
L2_7129.RaiseWater = L3_7130
L3_7130 = {
  RaisingWater.Event_StopWater,
  "bool"
}
L2_7129.StopWater = L3_7130
L1_7128.Inputs = L2_7129
L2_7129 = {}
L2_7129.RaiseWater = "bool"
L2_7129.StopWater = "bool"
L2_7129.WaterEnded = "bool"
L1_7128.Outputs = L2_7129
L0_7127.FlowEvents = L1_7128
