function ConstVec(A0_9942)
  local L1_9943
  return A0_9942
end
g_Vectors = {
  v000 = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  v001 = ConstVec({
    x = 0,
    y = 0,
    z = 1
  }),
  v010 = ConstVec({
    x = 0,
    y = 1,
    z = 0
  }),
  v011 = ConstVec({
    x = 0,
    y = 1,
    z = 1
  }),
  v100 = ConstVec({
    x = 1,
    y = 0,
    z = 0
  }),
  v101 = ConstVec({
    x = 1,
    y = 0,
    z = 1
  }),
  v110 = ConstVec({
    x = 1,
    y = 1,
    z = 0
  }),
  v111 = ConstVec({
    x = 1,
    y = 1,
    z = 1
  }),
  up = ConstVec({
    x = 0,
    y = 0,
    z = 1
  }),
  down = ConstVec({
    x = 0,
    y = 0,
    z = -1
  }),
  temp = {
    x = 0,
    y = 0,
    z = 0
  },
  tempColor = {
    x = 0,
    y = 0,
    z = 0
  },
  temp_v1 = {
    x = 0,
    y = 0,
    z = 0
  },
  temp_v2 = {
    x = 0,
    y = 0,
    z = 0
  },
  temp_v3 = {
    x = 0,
    y = 0,
    z = 0
  },
  temp_v4 = {
    x = 0,
    y = 0,
    z = 0
  },
  temp_v5 = {
    x = 0,
    y = 0,
    z = 0
  },
  temp_v6 = {
    x = 0,
    y = 0,
    z = 0
  },
  vecMathTemp1 = {
    x = 0,
    y = 0,
    z = 0
  },
  vecMathTemp2 = {
    x = 0,
    y = 0,
    z = 0
  }
}
g_Rad2Deg = 180 / math.pi
g_Deg2Rad = math.pi / 180
g_Pi = math.pi
g_2Pi = 2 * math.pi
g_Pi2 = 0.5 * math.pi
random = math.random
math.randomseed(os.time())
random()
function IsNullVector(A0_9944)
  local L1_9945
  L1_9945 = A0_9944.x
  L1_9945 = L1_9945 == 0 and L1_9945 == 0 and L1_9945 == 0
  return L1_9945
end
function IsNotNullVector(A0_9946)
  local L1_9947
  L1_9947 = A0_9946.x
  L1_9947 = L1_9947 ~= 0 or L1_9947 ~= 0 or L1_9947 ~= 0
  return L1_9947
end
function LengthSqVector(A0_9948)
  local L1_9949, L2_9950, L3_9951
  L1_9949 = A0_9948.x
  L2_9950 = A0_9948.x
  L1_9949 = L1_9949 * L2_9950
  L2_9950 = A0_9948.y
  L3_9951 = A0_9948.y
  L2_9950 = L2_9950 * L3_9951
  L1_9949 = L1_9949 + L2_9950
  L2_9950 = A0_9948.z
  L3_9951 = A0_9948.z
  L2_9950 = L2_9950 * L3_9951
  L1_9949 = L1_9949 + L2_9950
  return L1_9949
end
function LengthVector(A0_9952)
  return math.sqrt(LengthSqVector(A0_9952))
end
function DistanceSqVectors(A0_9953, A1_9954)
  local L2_9955, L3_9956, L4_9957, L5_9958, L6_9959
  L2_9955 = A0_9953.x
  L3_9956 = A1_9954.x
  L2_9955 = L2_9955 - L3_9956
  L3_9956 = A0_9953.y
  L4_9957 = A1_9954.y
  L3_9956 = L3_9956 - L4_9957
  L4_9957 = A0_9953.z
  L5_9958 = A1_9954.z
  L4_9957 = L4_9957 - L5_9958
  L5_9958 = L2_9955 * L2_9955
  L6_9959 = L3_9956 * L3_9956
  L5_9958 = L5_9958 + L6_9959
  L6_9959 = L4_9957 * L4_9957
  L5_9958 = L5_9958 + L6_9959
  return L5_9958
end
function DistanceSqVectors2d(A0_9960, A1_9961)
  local L2_9962, L3_9963, L4_9964, L5_9965
  L2_9962 = A0_9960.x
  L3_9963 = A1_9961.x
  L2_9962 = L2_9962 - L3_9963
  L3_9963 = A0_9960.y
  L4_9964 = A1_9961.y
  L3_9963 = L3_9963 - L4_9964
  L4_9964 = L2_9962 * L2_9962
  L5_9965 = L3_9963 * L3_9963
  L4_9964 = L4_9964 + L5_9965
  return L4_9964
end
function DistanceVectors(A0_9966, A1_9967)
  local L2_9968, L3_9969, L4_9970
  L2_9968 = A0_9966.x
  L3_9969 = A1_9967.x
  L2_9968 = L2_9968 - L3_9969
  L3_9969 = A0_9966.y
  L4_9970 = A1_9967.y
  L3_9969 = L3_9969 - L4_9970
  L4_9970 = A0_9966.z
  L4_9970 = L4_9970 - A1_9967.z
  return math.sqrt(L2_9968 * L2_9968 + L3_9969 * L3_9969 + L4_9970 * L4_9970)
end
function dotproduct3d(A0_9971, A1_9972)
  local L2_9973, L3_9974, L4_9975
  L2_9973 = A0_9971.x
  L3_9974 = A1_9972.x
  L2_9973 = L2_9973 * L3_9974
  L3_9974 = A0_9971.y
  L4_9975 = A1_9972.y
  L3_9974 = L3_9974 * L4_9975
  L2_9973 = L2_9973 + L3_9974
  L3_9974 = A0_9971.z
  L4_9975 = A1_9972.z
  L3_9974 = L3_9974 * L4_9975
  L2_9973 = L2_9973 + L3_9974
  return L2_9973
end
function dotproduct2d(A0_9976, A1_9977)
  local L2_9978, L3_9979
  L2_9978 = A0_9976.x
  L3_9979 = A1_9977.x
  L2_9978 = L2_9978 * L3_9979
  L3_9979 = A0_9976.y
  L3_9979 = L3_9979 * A1_9977.y
  L2_9978 = L2_9978 + L3_9979
  return L2_9978
end
function LogVec(A0_9980, A1_9981)
  Log("%s = (%f %f %f)", A0_9980, A1_9981.x, A1_9981.y, A1_9981.z)
end
function ZeroVector(A0_9982)
  local L1_9983
  A0_9982.x = 0
  A0_9982.y = 0
  A0_9982.z = 0
end
function CopyVector(A0_9984, A1_9985)
  local L2_9986
  L2_9986 = A1_9985.x
  A0_9984.x = L2_9986
  L2_9986 = A1_9985.y
  A0_9984.y = L2_9986
  L2_9986 = A1_9985.z
  A0_9984.z = L2_9986
end
function SumVectors(A0_9987, A1_9988)
  local L2_9989, L3_9990, L4_9991
  L2_9989 = {}
  L3_9990 = A0_9987.x
  L4_9991 = A1_9988.x
  L3_9990 = L3_9990 + L4_9991
  L2_9989.x = L3_9990
  L3_9990 = A0_9987.y
  L4_9991 = A1_9988.y
  L3_9990 = L3_9990 + L4_9991
  L2_9989.y = L3_9990
  L3_9990 = A0_9987.z
  L4_9991 = A1_9988.z
  L3_9990 = L3_9990 + L4_9991
  L2_9989.z = L3_9990
  return L2_9989
end
function NegVector(A0_9992)
  local L1_9993
  L1_9993 = A0_9992.x
  L1_9993 = -L1_9993
  A0_9992.x = L1_9993
  L1_9993 = A0_9992.y
  L1_9993 = -L1_9993
  A0_9992.y = L1_9993
  L1_9993 = A0_9992.z
  L1_9993 = -L1_9993
  A0_9992.z = L1_9993
end
function SubVectors(A0_9994, A1_9995, A2_9996)
  local L3_9997, L4_9998
  L3_9997 = A1_9995.x
  L4_9998 = A2_9996.x
  L3_9997 = L3_9997 - L4_9998
  A0_9994.x = L3_9997
  L3_9997 = A1_9995.y
  L4_9998 = A2_9996.y
  L3_9997 = L3_9997 - L4_9998
  A0_9994.y = L3_9997
  L3_9997 = A1_9995.z
  L4_9998 = A2_9996.z
  L3_9997 = L3_9997 - L4_9998
  A0_9994.z = L3_9997
end
function FastSumVectors(A0_9999, A1_10000, A2_10001)
  local L3_10002, L4_10003
  L3_10002 = A1_10000.x
  L4_10003 = A2_10001.x
  L3_10002 = L3_10002 + L4_10003
  A0_9999.x = L3_10002
  L3_10002 = A1_10000.y
  L4_10003 = A2_10001.y
  L3_10002 = L3_10002 + L4_10003
  A0_9999.y = L3_10002
  L3_10002 = A1_10000.z
  L4_10003 = A2_10001.z
  L3_10002 = L3_10002 + L4_10003
  A0_9999.z = L3_10002
end
function DifferenceVectors(A0_10004, A1_10005)
  local L2_10006, L3_10007, L4_10008
  L2_10006 = {}
  L3_10007 = A0_10004.x
  L4_10008 = A1_10005.x
  L3_10007 = L3_10007 - L4_10008
  L2_10006.x = L3_10007
  L3_10007 = A0_10004.y
  L4_10008 = A1_10005.y
  L3_10007 = L3_10007 - L4_10008
  L2_10006.y = L3_10007
  L3_10007 = A0_10004.z
  L4_10008 = A1_10005.z
  L3_10007 = L3_10007 - L4_10008
  L2_10006.z = L3_10007
  return L2_10006
end
function FastDifferenceVectors(A0_10009, A1_10010, A2_10011)
  local L3_10012, L4_10013
  L3_10012 = A1_10010.x
  L4_10013 = A2_10011.x
  L3_10012 = L3_10012 - L4_10013
  A0_10009.x = L3_10012
  L3_10012 = A1_10010.y
  L4_10013 = A2_10011.y
  L3_10012 = L3_10012 - L4_10013
  A0_10009.y = L3_10012
  L3_10012 = A1_10010.z
  L4_10013 = A2_10011.z
  L3_10012 = L3_10012 - L4_10013
  A0_10009.z = L3_10012
end
function ProductVectors(A0_10014, A1_10015)
  local L2_10016, L3_10017, L4_10018
  L2_10016 = {}
  L3_10017 = A0_10014.x
  L4_10018 = A1_10015.x
  L3_10017 = L3_10017 * L4_10018
  L2_10016.x = L3_10017
  L3_10017 = A0_10014.y
  L4_10018 = A1_10015.y
  L3_10017 = L3_10017 * L4_10018
  L2_10016.y = L3_10017
  L3_10017 = A0_10014.z
  L4_10018 = A1_10015.z
  L3_10017 = L3_10017 * L4_10018
  L2_10016.z = L3_10017
  return L2_10016
end
function FastProductVectors(A0_10019, A1_10020, A2_10021)
  local L3_10022, L4_10023
  L3_10022 = A1_10020.x
  L4_10023 = A2_10021.x
  L3_10022 = L3_10022 * L4_10023
  A0_10019.x = L3_10022
  L3_10022 = A1_10020.y
  L4_10023 = A2_10021.y
  L3_10022 = L3_10022 * L4_10023
  A0_10019.y = L3_10022
  L3_10022 = A1_10020.z
  L4_10023 = A2_10021.z
  L3_10022 = L3_10022 * L4_10023
  A0_10019.z = L3_10022
end
function ScaleVector(A0_10024, A1_10025)
  local L2_10026, L3_10027
  L2_10026 = {}
  L3_10027 = A0_10024.x
  L3_10027 = L3_10027 * A1_10025
  L2_10026.x = L3_10027
  L3_10027 = A0_10024.y
  L3_10027 = L3_10027 * A1_10025
  L2_10026.y = L3_10027
  L3_10027 = A0_10024.z
  L3_10027 = L3_10027 * A1_10025
  L2_10026.z = L3_10027
  return L2_10026
end
function ScaleVectorInPlace(A0_10028, A1_10029)
  local L2_10030
  L2_10030 = A0_10028.x
  L2_10030 = L2_10030 * A1_10029
  A0_10028.x = L2_10030
  L2_10030 = A0_10028.y
  L2_10030 = L2_10030 * A1_10029
  A0_10028.y = L2_10030
  L2_10030 = A0_10028.z
  L2_10030 = L2_10030 * A1_10029
  A0_10028.z = L2_10030
end
function NormalizeVector(A0_10031)
  local L1_10032
  L1_10032 = math
  L1_10032 = L1_10032.sqrt
  L1_10032 = L1_10032(LengthSqVector(A0_10031))
  if L1_10032 > 0 then
  else
  end
  A0_10031.x = A0_10031.x * 1.0E-4
  A0_10031.y = A0_10031.y * 1.0E-4
  A0_10031.z = A0_10031.z * 1.0E-4
  return A0_10031
end
function FastScaleVector(A0_10033, A1_10034, A2_10035)
  local L3_10036
  L3_10036 = A1_10034.x
  L3_10036 = L3_10036 * A2_10035
  A0_10033.x = L3_10036
  L3_10036 = A1_10034.y
  L3_10036 = L3_10036 * A2_10035
  A0_10033.y = L3_10036
  L3_10036 = A1_10034.z
  L3_10036 = L3_10036 * A2_10035
  A0_10033.z = L3_10036
end
function LerpColors(A0_10037, A1_10038, A2_10039)
  local L3_10040, L4_10041, L5_10042, L6_10043
  L3_10040 = g_Vectors
  L3_10040 = L3_10040.tempColor
  L4_10041 = A0_10037.x
  L5_10042 = A1_10038.x
  L6_10043 = A0_10037.x
  L5_10042 = L5_10042 - L6_10043
  L5_10042 = L5_10042 * A2_10039
  L4_10041 = L4_10041 + L5_10042
  L3_10040.x = L4_10041
  L3_10040 = g_Vectors
  L3_10040 = L3_10040.tempColor
  L4_10041 = A0_10037.y
  L5_10042 = A1_10038.y
  L6_10043 = A0_10037.y
  L5_10042 = L5_10042 - L6_10043
  L5_10042 = L5_10042 * A2_10039
  L4_10041 = L4_10041 + L5_10042
  L3_10040.y = L4_10041
  L3_10040 = g_Vectors
  L3_10040 = L3_10040.tempColor
  L4_10041 = A0_10037.z
  L5_10042 = A1_10038.z
  L6_10043 = A0_10037.z
  L5_10042 = L5_10042 - L6_10043
  L5_10042 = L5_10042 * A2_10039
  L4_10041 = L4_10041 + L5_10042
  L3_10040.z = L4_10041
  L3_10040 = g_Vectors
  L3_10040 = L3_10040.tempColor
  return L3_10040
end
function Lerp(A0_10044, A1_10045, A2_10046)
  local L3_10047
  L3_10047 = A1_10045 - A0_10044
  L3_10047 = L3_10047 * A2_10046
  L3_10047 = A0_10044 + L3_10047
  return L3_10047
end
function __max(A0_10048, A1_10049)
  if A1_10049 < A0_10048 then
    return A0_10048
  else
    return A1_10049
  end
end
function __min(A0_10050, A1_10051)
  if A0_10050 < A1_10051 then
    return A0_10050
  else
    return A1_10051
  end
end
function clamp(A0_10052, A1_10053, A2_10054)
  if A2_10054 < A0_10052 then
    A0_10052 = A2_10054
  end
  if A1_10053 > A0_10052 then
    A0_10052 = A1_10053
  end
  return A0_10052
end
function Interpolate(A0_10055, A1_10056, A2_10057)
  local L3_10058
  L3_10058 = A1_10056 - A0_10055
  if math.abs(L3_10058) < 0.001 then
    return A1_10056
  end
  return A0_10055 + L3_10058 * __min(A2_10057, 1)
end
function sgn(A0_10059)
  local L1_10060
  if A0_10059 == 0 then
    L1_10060 = 0
    return L1_10060
  elseif A0_10059 > 0 then
    L1_10060 = 1
    return L1_10060
  else
    L1_10060 = -1
    return L1_10060
  end
end
function sgnnz(A0_10061)
  return A0_10061 >= 0 and 1 or -1
end
function sqr(A0_10062)
  return A0_10062 * A0_10062
end
function randomF(A0_10063, A1_10064)
  local L2_10065
  if A1_10064 < A0_10063 then
    L2_10065 = A1_10064
    A1_10064 = A0_10063
    A0_10063 = L2_10065
  end
  L2_10065 = A1_10064 - A0_10063
  return A0_10063 + math.random() * L2_10065
end
function VecRotate90_Z(A0_10066)
  local L2_10067
  L2_10067 = A0_10066.x
  A0_10066.x = A0_10066.y
  A0_10066.y = -L2_10067
end
function VecRotateMinus90_Z(A0_10068)
  local L2_10069
  L2_10069 = A0_10068.x
  A0_10068.x = -A0_10068.y
  A0_10068.y = L2_10069
end
function iff(A0_10070, A1_10071, A2_10072)
  if A0_10070 then
    return A1_10071
  else
    return A2_10072
  end
end
function crossproduct3d(A0_10073, A1_10074, A2_10075)
  local L3_10076, L4_10077, L5_10078
  L3_10076 = A1_10074.y
  L4_10077 = A2_10075.z
  L3_10076 = L3_10076 * L4_10077
  L4_10077 = A1_10074.z
  L5_10078 = A2_10075.y
  L4_10077 = L4_10077 * L5_10078
  L3_10076 = L3_10076 - L4_10077
  A0_10073.x = L3_10076
  L3_10076 = A1_10074.z
  L4_10077 = A2_10075.x
  L3_10076 = L3_10076 * L4_10077
  L4_10077 = A1_10074.x
  L5_10078 = A2_10075.z
  L4_10077 = L4_10077 * L5_10078
  L3_10076 = L3_10076 - L4_10077
  A0_10073.y = L3_10076
  L3_10076 = A1_10074.x
  L4_10077 = A2_10075.y
  L3_10076 = L3_10076 * L4_10077
  L4_10077 = A1_10074.y
  L5_10078 = A2_10075.x
  L4_10077 = L4_10077 * L5_10078
  L3_10076 = L3_10076 - L4_10077
  A0_10073.z = L3_10076
end
function RotateVectorAroundR(A0_10079, A1_10080, A2_10081, A3_10082)
  local L4_10083, L5_10084, L6_10085, L7_10086, L8_10087, L9_10088
  L4_10083 = math
  L4_10083 = L4_10083.cos
  L5_10084 = A3_10082
  L4_10083 = L4_10083(L5_10084)
  L5_10084 = math
  L5_10084 = L5_10084.sin
  L6_10085 = A3_10082
  L5_10084 = L5_10084(L6_10085)
  L6_10085 = {}
  L7_10086 = {}
  L8_10087 = {}
  L9_10088 = {}
  CopyVector(L6_10085, A1_10080)
  FastScaleVector(L6_10085, L6_10085, L4_10083)
  CopyVector(L9_10088, A1_10080)
  FastScaleVector(L9_10088, L9_10088, L5_10084)
  crossproduct3d(L7_10086, A2_10081, L9_10088)
  CopyVector(L8_10087, A2_10081)
  FastScaleVector(L8_10087, L8_10087, dotproduct3d(A2_10081, A1_10080))
  FastScaleVector(L8_10087, L8_10087, 1 - L4_10083)
  CopyVector(A0_10079, L6_10085)
  FastSumVectors(A0_10079, L6_10085, L7_10086)
  FastSumVectors(A0_10079, A0_10079, L8_10087)
end
function ProjectVector(A0_10089, A1_10090, A2_10091)
  local L3_10092, L4_10093
  L3_10092 = {}
  L4_10093 = FastScaleVector
  L4_10093(L3_10092, A1_10090, -1)
  L4_10093 = dotproduct3d
  L4_10093 = L4_10093(L3_10092, A2_10091)
  CopyVector(A0_10089, A2_10091)
  FastScaleVector(A0_10089, A0_10089, L4_10093)
  FastSumVectors(A0_10089, A0_10089, A1_10090)
end
function DistanceLineAndPoint(A0_10094, A1_10095, A2_10096)
  local L3_10097, L4_10098, L5_10099, L6_10100
  L3_10097 = LengthVector
  L4_10098 = A1_10095
  L3_10097 = L3_10097(L4_10098)
  L4_10098 = nil
  L5_10099 = {}
  L6_10100 = {}
  SubVectors(L6_10100, A0_10094, A2_10096)
  crossproduct3d(L5_10099, A1_10095, L6_10100)
  L4_10098 = LengthVector(L5_10099)
  if L3_10097 > 0.01 then
  else
  end
  return 0
end
function GetDirection(A0_10101, A1_10102)
  local L2_10103
  L2_10103 = {}
  SubVectors(L2_10103, A1_10102, A0_10101)
  NormalizeVector(L2_10103)
  return L2_10103
end
function GetAngleBetweenVectors2D(A0_10104, A1_10105)
  return math.acos(dotproduct2d(A0_10104, A1_10105))
end
function GetAngleBetweenVectors(A0_10106, A1_10107)
  return math.acos(clamp(dotproduct3d(A0_10106, A1_10107), -1, 1))
end
