local L0_5666, L1_5667
function L0_5666(A0_5668, A1_5669, A2_5670)
  local L3_5671, L4_5672, L5_5673, L6_5674
  L3_5671 = vecSub
  L4_5672 = A2_5670
  L5_5673 = A1_5669
  L3_5671 = L3_5671(L4_5672, L5_5673)
  L4_5672 = vecLenSq
  L5_5673 = L3_5671
  L4_5672 = L4_5672(L5_5673)
  if L4_5672 > 0.001 then
    L5_5673 = A0_5668.x
    L6_5674 = A1_5669.x
    L5_5673 = L5_5673 - L6_5674
    L6_5674 = A2_5670.x
    L6_5674 = L6_5674 - A1_5669.x
    L5_5673 = L5_5673 * L6_5674
    L6_5674 = A0_5668.y
    L6_5674 = L6_5674 - A1_5669.y
    L6_5674 = L6_5674 * (A2_5670.y - A1_5669.y)
    L5_5673 = L5_5673 + L6_5674
    L6_5674 = A0_5668.z
    L6_5674 = L6_5674 - A1_5669.z
    L6_5674 = L6_5674 * (A2_5670.z - A1_5669.z)
    L5_5673 = L5_5673 + L6_5674
    L5_5673 = L5_5673 / L4_5672
    if L5_5673 > 0 and L5_5673 < 1 then
      L6_5674 = g_Vectors
      L6_5674 = L6_5674.temp_v2
      L6_5674.x = A1_5669.x + L5_5673 * (A2_5670.x - A1_5669.x)
      L6_5674.y = A1_5669.y + L5_5673 * (A2_5670.y - A1_5669.y)
      L6_5674.z = A1_5669.z + L5_5673 * (A2_5670.z - A1_5669.z)
      return vecLenSq(vecSub(A0_5668, L6_5674)), L6_5674
    end
  end
end
PointToLineDistanceSq = L0_5666
function L0_5666(A0_5675, A1_5676)
  local L2_5677
  L2_5677 = table
  L2_5677 = L2_5677.getn
  L2_5677 = L2_5677(A1_5676)
  for _FORV_8_ = 1, L2_5677 do
  end
  return not false
end
PointInPolygon = L0_5666
function L0_5666(A0_5678, A1_5679, A2_5680, A3_5681)
  local L4_5682, L5_5683, L6_5684, L7_5685
  L4_5682 = A2_5680.x
  L4_5682 = A0_5678 - L4_5682
  L5_5683 = A2_5680.y
  L5_5683 = A1_5679 - L5_5683
  L6_5684 = L4_5682 * L4_5682
  L7_5685 = L5_5683 * L5_5683
  L6_5684 = L6_5684 + L7_5685
  L7_5685 = A3_5681 * A3_5681
  if L6_5684 < L7_5685 then
    L6_5684 = true
    return L6_5684
  end
  L6_5684 = false
  return L6_5684
end
PointInCircle = L0_5666
function L0_5666(A0_5686, A1_5687)
  A1_5687 = A1_5687 or g_Vectors.v001
  return vecNormalize(vecCross(A0_5686, A1_5687))
end
vecFrontToRight = L0_5666
function L0_5666(A0_5688, A1_5689)
  local L2_5690
  if not A1_5689 then
    L2_5690 = g_Vectors
    A1_5689 = L2_5690.v001
  end
  L2_5690 = vecCopy
  L2_5690 = L2_5690(g_Vectors.temp_v1, vecNormalize(vecCross(A0_5688, A1_5689)))
  return vecNormalize(vecCross(L2_5690, A0_5688))
end
vecFrontToUp = L0_5666
function L0_5666(A0_5691)
  local L1_5692, L2_5693, L3_5694
  L1_5692 = A0_5691.x
  L2_5693 = A0_5691.y
  L3_5694 = math
  L3_5694 = L3_5694.sqrt
  L3_5694 = L3_5694(L1_5692 * L1_5692 + L2_5693 * L2_5693)
  g_Vectors.vecMathTemp2.y, g_Vectors.vecMathTemp2.x = math.atan2(A0_5691.z, L3_5694), math.atan2(-L1_5692 * 1, L2_5693 * 1)
  g_Vectors.vecMathTemp2.z = 0
  return g_Vectors.vecMathTemp2
end
vecToAngles = L0_5666
function L0_5666(A0_5695)
  local L1_5696
  L1_5696 = g_Vectors
  L1_5696 = L1_5696.vecMathTemp2
  L1_5696.x = -math.sin(A0_5695.x) * math.cos(A0_5695.y)
  L1_5696.z, L1_5696.y = math.sin(A0_5695.y), math.cos(A0_5695.x) * math.cos(A0_5695.y)
  return L1_5696
end
anglesToVec = L0_5666
function L0_5666(A0_5697)
  if not A0_5697 then
    return {
      x = 0,
      y = 0,
      z = 0
    }
  else
    return vecCopy({}, A0_5697)
  end
end
vecNew = L0_5666
function L0_5666(A0_5698, A1_5699, A2_5700, A3_5701)
  A0_5698.x = A1_5699
  A0_5698.y = A2_5700
  A0_5698.z = A3_5701
  return A0_5698
end
vecSet = L0_5666
function L0_5666(A0_5702, A1_5703)
  local L2_5704
  L2_5704 = A1_5703.x
  A0_5702.x = L2_5704
  L2_5704 = A1_5703.y
  A0_5702.y = L2_5704
  L2_5704 = A1_5703.z
  A0_5702.z = L2_5704
  return A0_5702
end
vecCopy = L0_5666
function L0_5666(A0_5705, A1_5706)
  local L2_5707, L3_5708, L4_5709, L5_5710, L6_5711
  L2_5707 = A0_5705.x
  L3_5708 = A1_5706.x
  L2_5707 = L2_5707 - L3_5708
  L3_5708 = A0_5705.y
  L4_5709 = A1_5706.y
  L3_5708 = L3_5708 - L4_5709
  L4_5709 = A0_5705.z
  L5_5710 = A1_5706.z
  L4_5709 = L4_5709 - L5_5710
  L5_5710 = L2_5707 * L2_5707
  L6_5711 = L3_5708 * L3_5708
  L5_5710 = L5_5710 + L6_5711
  L6_5711 = L4_5709 * L4_5709
  L5_5710 = L5_5710 + L6_5711
  return L5_5710
end
vecDistanceSq = L0_5666
function L0_5666(A0_5712, A1_5713)
  local L2_5714, L3_5715, L4_5716, L5_5717
  L2_5714 = A0_5712.x
  L3_5715 = A1_5713.x
  L2_5714 = L2_5714 - L3_5715
  L3_5715 = A0_5712.y
  L4_5716 = A1_5713.y
  L3_5715 = L3_5715 - L4_5716
  L4_5716 = L2_5714 * L2_5714
  L5_5717 = L3_5715 * L3_5715
  L4_5716 = L4_5716 + L5_5717
  return L4_5716
end
vec2DDistanceSq = L0_5666
function L0_5666(A0_5718, A1_5719)
  local L2_5720, L3_5721
  L2_5720 = g_Vectors
  L2_5720 = L2_5720.vecMathTemp1
  L3_5721 = A0_5718.x
  L3_5721 = L3_5721 * A1_5719
  L2_5720.x = L3_5721
  L3_5721 = A0_5718.y
  L3_5721 = L3_5721 * A1_5719
  L2_5720.y = L3_5721
  L3_5721 = A0_5718.z
  L3_5721 = L3_5721 * A1_5719
  L2_5720.z = L3_5721
  return L2_5720
end
vecScale = L0_5666
function L0_5666(A0_5722, A1_5723, A2_5724, A3_5725)
  local L4_5726, L5_5727
  if A3_5725 then
    L4_5726 = A3_5725
  else
    L5_5727 = math
    L5_5727 = L5_5727.acos
    L5_5727 = L5_5727(vecDot(A0_5722, A1_5723))
    L4_5726 = L5_5727
  end
  L5_5727 = math
  L5_5727 = L5_5727.sin
  L5_5727 = L5_5727(L4_5726)
  if math.abs(L5_5727) > 0.01 then
    g_Vectors.vecMathTemp1.x = 1 / L5_5727 * (A0_5722.x * math.sin((1 - A2_5724) * L4_5726) + A1_5723.x * math.sin(A2_5724 * L4_5726))
    g_Vectors.vecMathTemp1.y = 1 / L5_5727 * (A0_5722.y * math.sin((1 - A2_5724) * L4_5726) + A1_5723.y * math.sin(A2_5724 * L4_5726))
    g_Vectors.vecMathTemp1.z = 1 / L5_5727 * (A0_5722.z * math.sin((1 - A2_5724) * L4_5726) + A1_5723.z * math.sin(A2_5724 * L4_5726))
    return g_Vectors.vecMathTemp1
  else
    return vecLerp(A0_5722, A1_5723, A2_5724)
  end
end
vecSLerp = L0_5666
function L0_5666(A0_5728, A1_5729, A2_5730)
  local L3_5731, L4_5732, L5_5733, L6_5734
  L3_5731 = g_Vectors
  L3_5731 = L3_5731.vecMathTemp1
  L4_5732 = 1 - A2_5730
  L5_5733 = A0_5728.x
  L5_5733 = L5_5733 * L4_5732
  L6_5734 = A1_5729.x
  L6_5734 = L6_5734 * A2_5730
  L5_5733 = L5_5733 + L6_5734
  L3_5731.x = L5_5733
  L5_5733 = A0_5728.y
  L5_5733 = L5_5733 * L4_5732
  L6_5734 = A1_5729.y
  L6_5734 = L6_5734 * A2_5730
  L5_5733 = L5_5733 + L6_5734
  L3_5731.y = L5_5733
  L5_5733 = A0_5728.z
  L5_5733 = L5_5733 * L4_5732
  L6_5734 = A1_5729.z
  L6_5734 = L6_5734 * A2_5730
  L5_5733 = L5_5733 + L6_5734
  L3_5731.z = L5_5733
  return L3_5731
end
vecLerp = L0_5666
function L0_5666(A0_5735, A1_5736)
  local L2_5737, L3_5738, L4_5739
  L2_5737 = g_Vectors
  L2_5737 = L2_5737.vecMathTemp1
  L3_5738 = A0_5735.x
  L4_5739 = A1_5736.x
  L3_5738 = L3_5738 - L4_5739
  L2_5737.x = L3_5738
  L3_5738 = A0_5735.y
  L4_5739 = A1_5736.y
  L3_5738 = L3_5738 - L4_5739
  L2_5737.y = L3_5738
  L3_5738 = A0_5735.z
  L4_5739 = A1_5736.z
  L3_5738 = L3_5738 - L4_5739
  L2_5737.z = L3_5738
  return L2_5737
end
vecSub = L0_5666
function L0_5666(A0_5740, A1_5741)
  local L2_5742, L3_5743, L4_5744
  L2_5742 = g_Vectors
  L2_5742 = L2_5742.vecMathTemp1
  L3_5743 = A0_5740.x
  L4_5744 = A1_5741.x
  L3_5743 = L3_5743 + L4_5744
  L2_5742.x = L3_5743
  L3_5743 = A0_5740.y
  L4_5744 = A1_5741.y
  L3_5743 = L3_5743 + L4_5744
  L2_5742.y = L3_5743
  L3_5743 = A0_5740.z
  L4_5744 = A1_5741.z
  L3_5743 = L3_5743 + L4_5744
  L2_5742.z = L3_5743
  return L2_5742
end
vecAdd = L0_5666
function L0_5666(A0_5745)
  local L1_5746, L2_5747, L3_5748
  L1_5746 = A0_5745.x
  L2_5747 = A0_5745.x
  L1_5746 = L1_5746 * L2_5747
  L2_5747 = A0_5745.y
  L3_5748 = A0_5745.y
  L2_5747 = L2_5747 * L3_5748
  L1_5746 = L1_5746 + L2_5747
  L2_5747 = A0_5745.z
  L3_5748 = A0_5745.z
  L2_5747 = L2_5747 * L3_5748
  L1_5746 = L1_5746 + L2_5747
  return L1_5746
end
vecLenSq = L0_5666
function L0_5666(A0_5749)
  return math.sqrt(A0_5749.x * A0_5749.x + A0_5749.y * A0_5749.y + A0_5749.z * A0_5749.z)
end
vecLen = L0_5666
function L0_5666(A0_5750, A1_5751)
  local L2_5752, L3_5753, L4_5754
  L2_5752 = g_Vectors
  L2_5752 = L2_5752.vecMathTemp1
  L3_5753 = A0_5750.x
  L4_5754 = A1_5751.x
  L3_5753 = L3_5753 * L4_5754
  L2_5752.x = L3_5753
  L3_5753 = A0_5750.y
  L4_5754 = A1_5751.y
  L3_5753 = L3_5753 * L4_5754
  L2_5752.y = L3_5753
  L3_5753 = A0_5750.z
  L4_5754 = A1_5751.z
  L3_5753 = L3_5753 * L4_5754
  L2_5752.z = L3_5753
  return L2_5752
end
vecMul = L0_5666
function L0_5666(A0_5755)
  local L1_5756, L2_5757, L3_5758
  L1_5756 = math
  L1_5756 = L1_5756.sqrt
  L2_5757 = A0_5755.x
  L3_5758 = A0_5755.x
  L2_5757 = L2_5757 * L3_5758
  L3_5758 = A0_5755.y
  L3_5758 = L3_5758 * A0_5755.y
  L2_5757 = L2_5757 + L3_5758
  L3_5758 = A0_5755.z
  L3_5758 = L3_5758 * A0_5755.z
  L2_5757 = L2_5757 + L3_5758
  L1_5756 = L1_5756(L2_5757)
  if L1_5756 > 0 then
    L2_5757 = 1 / L1_5756
    L3_5758 = g_Vectors
    L3_5758 = L3_5758.vecMathTemp1
    L3_5758.x = A0_5755.x * L2_5757
    L3_5758.y = A0_5755.y * L2_5757
    L3_5758.z = A0_5755.z * L2_5757
    return L3_5758, L1_5756
  end
  L2_5757 = v
  L3_5758 = 0
  return L2_5757, L3_5758
end
vecNormalize = L0_5666
function L0_5666(A0_5759, A1_5760)
  local L2_5761, L3_5762, L4_5763
  L2_5761 = A0_5759.x
  L3_5762 = A1_5760.x
  L2_5761 = L2_5761 * L3_5762
  L3_5762 = A0_5759.y
  L4_5763 = A1_5760.y
  L3_5762 = L3_5762 * L4_5763
  L2_5761 = L2_5761 + L3_5762
  L3_5762 = A0_5759.z
  L4_5763 = A1_5760.z
  L3_5762 = L3_5762 * L4_5763
  L2_5761 = L2_5761 + L3_5762
  return L2_5761
end
vecDot = L0_5666
function L0_5666(A0_5764, A1_5765)
  local L2_5766, L3_5767, L4_5768, L5_5769
  L2_5766 = g_Vectors
  L2_5766 = L2_5766.vecMathTemp1
  L3_5767 = A0_5764.y
  L4_5768 = A1_5765.z
  L3_5767 = L3_5767 * L4_5768
  L4_5768 = A0_5764.z
  L5_5769 = A1_5765.y
  L4_5768 = L4_5768 * L5_5769
  L3_5767 = L3_5767 - L4_5768
  L2_5766.x = L3_5767
  L3_5767 = A0_5764.z
  L4_5768 = A1_5765.x
  L3_5767 = L3_5767 * L4_5768
  L4_5768 = A0_5764.x
  L5_5769 = A1_5765.z
  L4_5768 = L4_5768 * L5_5769
  L3_5767 = L3_5767 - L4_5768
  L2_5766.y = L3_5767
  L3_5767 = A0_5764.x
  L4_5768 = A1_5765.y
  L3_5767 = L3_5767 * L4_5768
  L4_5768 = A0_5764.y
  L5_5769 = A1_5765.x
  L4_5768 = L4_5768 * L5_5769
  L3_5767 = L3_5767 - L4_5768
  L2_5766.z = L3_5767
  return L2_5766
end
vecCross = L0_5666
function L0_5666(A0_5770, A1_5771)
  if A0_5770 then
    return A0_5770
  end
  return A1_5771
end
retDef = L0_5666
