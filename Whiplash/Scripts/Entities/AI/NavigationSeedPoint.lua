local L0_2723, L1_2724
L0_2723 = {}
L0_2723.type = "NavigationSeedPoint"
L1_2724 = {}
L1_2724.Icon = "Seed.bmp"
L0_2723.Editor = L1_2724
NavigationSeedPoint = L0_2723
L0_2723 = NavigationSeedPoint
function L1_2724(A0_2725)
  CryAction.RegisterWithAI(A0_2725.id, AIOBJECT_NAV_SEED)
end
L0_2723.OnInit = L1_2724
