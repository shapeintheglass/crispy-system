local L0_2785, L1_2786
L0_2785 = {}
L0_2785.type = "TagPoint"
L1_2786 = {}
L1_2786.Icon = "TagPoint.bmp"
L0_2785.Editor = L1_2786
TagPoint = L0_2785
L0_2785 = TagPoint
function L1_2786(A0_2787)
  A0_2787:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_2785.OnSpawn = L1_2786
L0_2785 = TagPoint
function L1_2786(A0_2788)
  CryAction.RegisterWithAI(A0_2788.id, AIOBJECT_WAYPOINT)
end
L0_2785.OnInit = L1_2786
