local L0_6601, L1_6602
L0_6601 = {}
L1_6602 = {}
L0_6601.Client = L1_6602
L1_6602 = {}
L0_6601.Server = L1_6602
L1_6602 = {}
L1_6602.Icon = "spectator.bmp"
L1_6602.DisplayArrow = 0
L0_6601.Editor = L1_6602
L1_6602 = {}
L1_6602.bEnabled = 1
L0_6601.Properties = L1_6602
TagNamePoint = L0_6601
L0_6601 = TagNamePoint
L0_6601 = L0_6601.Client
function L1_6602(A0_6603)
  if not A0_6603.bInitialized then
    A0_6603.bInitialized = 1
  end
end
L0_6601.OnInit = L1_6602
