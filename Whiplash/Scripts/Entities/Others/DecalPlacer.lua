local L0_6701, L1_6702, L2_6703, L3_6704
L0_6701 = {}
L1_6702 = {}
L1_6702.material_Material = ""
L1_6702.fSnapDistance = 0
L1_6702.fSize = 1
L1_6702.nLifeTime = 180
L1_6702.bPlaced = 0
L1_6702.bPlaceTransparent = 0
L0_6701.Properties = L1_6702
L1_6702 = {}
L1_6702.Icon = "Decal.bmp"
L0_6701.Editor = L1_6702
DecalPlacer = L0_6701
L0_6701 = DecalPlacer
function L1_6702(A0_6705)
  A0_6705:OnReset()
end
L0_6701.OnPropertyChange = L1_6702
L0_6701 = DecalPlacer
function L1_6702(A0_6706)
  if tonumber(A0_6706.Properties.bPlaced) ~= 0 then
    A0_6706:Event_SpawnDecal()
  else
    A0_6706:Event_DestroyDecal()
  end
end
L0_6701.OnReset = L1_6702
L0_6701 = DecalPlacer
function L1_6702(A0_6707)
  A0_6707.hit = {}
  A0_6707.m_decalId = -1
  A0_6707:OnReset()
end
L0_6701.OnInit = L1_6702
L0_6701 = DecalPlacer
function L1_6702(A0_6708)
  local L1_6709, L2_6710, L3_6711, L4_6712, L5_6713, L6_6714, L7_6715, L8_6716, L9_6717, L10_6718, L11_6719, L12_6720
  L1_6709 = A0_6708.m_decalId
  if L1_6709 >= 0 then
    L1_6709 = Particle
    L1_6709 = L1_6709.DestroyDecal
    L2_6710 = A0_6708.m_decalId
    L1_6709(L2_6710)
    A0_6708.m_decalId = -1
  end
  L1_6709 = A0_6708.Properties
  L1_6709 = L1_6709.material_Material
  L2_6710 = A0_6708.Properties
  L2_6710 = L2_6710.fSize
  L3_6711 = A0_6708.Properties
  L3_6711 = L3_6711.nLifeTime
  L4_6712 = A0_6708.Properties
  L4_6712 = L4_6712.fSnapDistance
  L6_6714 = A0_6708
  L5_6713 = A0_6708.GetLocalAngles
  L5_6713 = L5_6713(L6_6714)
  L5_6713 = L5_6713.z
  L7_6715 = A0_6708
  L6_6714 = A0_6708.GetDirectionVector
  L8_6716 = 2
  L6_6714 = L6_6714(L7_6715, L8_6716)
  L7_6715 = A0_6708.Properties
  L7_6715 = L7_6715.bPlaceTransparent
  L8_6716, L9_6717 = nil, nil
  L10_6718 = false
  if L4_6712 > 0 then
    L11_6719 = g_Vectors
    L11_6719 = L11_6719.temp_v3
    L12_6720 = L6_6714.x
    L12_6720 = -L12_6720
    L12_6720 = L12_6720 * L4_6712
    L11_6719.x = L12_6720
    L12_6720 = L6_6714.y
    L12_6720 = -L12_6720
    L12_6720 = L12_6720 * L4_6712
    L11_6719.y = L12_6720
    L12_6720 = L6_6714.z
    L12_6720 = -L12_6720
    L12_6720 = L12_6720 * L4_6712
    L11_6719.z = L12_6720
    L12_6720 = A0_6708.hit
    if 0 < Physics.RayWorldIntersection(A0_6708:GetWorldPos(g_Vectors.temp_v2), L11_6719, 1, ent_all, nil, nil, L12_6720) then
      A0_6708.m_decalId = Particle.CreateMatDecal(L12_6720[1].pos, L12_6720[1].normal, L2_6710, L3_6711, L1_6709, L5_6713, L6_6714, L12_6720[1].entity and L12_6720[1].entity.id, L12_6720[1].renderNode, nil, nil, nil, L7_6715)
      L10_6718 = true
    end
  end
  if not L10_6718 then
    L8_6716 = L6_6714
    L12_6720 = A0_6708
    L11_6719 = A0_6708.GetWorldPos
    L11_6719 = L11_6719(L12_6720, g_Vectors.temp_v2)
    L9_6717 = L11_6719
    L11_6719 = Particle
    L11_6719 = L11_6719.CreateMatDecal
    L12_6720 = L9_6717
    L11_6719 = L11_6719(L12_6720, L8_6716, L2_6710, L3_6711, L1_6709, L5_6713, nil, nil, nil, nil, nil, nil, L7_6715)
    A0_6708.m_decalId = L11_6719
  end
  L11_6719 = BroadcastEvent
  L12_6720 = A0_6708
  L11_6719(L12_6720, "SpawnDecal")
end
L0_6701.Event_SpawnDecal = L1_6702
L0_6701 = DecalPlacer
function L1_6702(A0_6721)
  if A0_6721.m_decalId >= 0 then
    Particle.DestroyDecal(A0_6721.m_decalId)
    A0_6721.m_decalId = -1
  end
  BroadcastEvent(A0_6721, "DestroyDecal")
end
L0_6701.Event_DestroyDecal = L1_6702
L0_6701 = DecalPlacer
function L1_6702(A0_6722, A1_6723, A2_6724)
  A0_6722.Properties.material_Material = A2_6724
  A0_6722:ActivateOutput("Material", A2_6724)
end
L0_6701.Event_Material = L1_6702
L0_6701 = DecalPlacer
L1_6702 = {}
L2_6703 = {}
L3_6704 = {
  DecalPlacer.Event_SpawnDecal,
  "bool"
}
L2_6703.SpawnDecal = L3_6704
L3_6704 = {
  DecalPlacer.Event_DestroyDecal,
  "bool"
}
L2_6703.DestroyDecal = L3_6704
L3_6704 = {
  DecalPlacer.Event_Material,
  "string"
}
L2_6703.Material = L3_6704
L1_6702.Inputs = L2_6703
L2_6703 = {}
L2_6703.SpawnDecal = "bool"
L2_6703.DestroyDecal = "bool"
L2_6703.Material = "string"
L1_6702.Outputs = L2_6703
L0_6701.FlowEvents = L1_6702
