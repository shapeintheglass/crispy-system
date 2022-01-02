local L0_7112, L1_7113, L2_7114
L0_7112 = {}
L0_7112.type = "ProceduralObject"
L1_7113 = {}
L1_7113.filePrefabLibrary = ""
L2_7114 = {}
L2_7114.sPrefabVariation = ""
L1_7113.ObjectVariation = L2_7114
L1_7113.nMaxSpawn = 0
L0_7112.Properties = L1_7113
L1_7113 = {}
L1_7113.Icon = "proceduralobject.bmp"
L1_7113.ShowBounds = 1
L0_7112.Editor = L1_7113
L0_7112.PrefabSourceName = ""
ProceduralObject = L0_7112
L0_7112 = ProceduralObject
function L1_7113(A0_7115)
  A0_7115:OnReset()
end
L0_7112.OnInit = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7116)
  A0_7116:OnReset()
end
L0_7112.OnPropertyChange = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7117, A1_7118)
  Game.DeletePrefab(A0_7117.id)
end
L0_7112.OnDestroy = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7119)
  Game.MovePrefab(A0_7119.id)
end
L0_7112.OnMove = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7120)
  if CryAction.IsClient() then
    A0_7120:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  if CryAction.IsServer() then
    A0_7120:SetFlags(ENTITY_FLAG_SERVER_ONLY, 0)
  end
end
L0_7112.OnSpawn = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7121, A1_7122)
  Game.DeletePrefab(A0_7121.id)
  if not EmptyString(A0_7121.Properties.filePrefabLibrary) then
    Game.LoadPrefabLibrary(A0_7121.Properties.filePrefabLibrary)
    if not EmptyString(A0_7121.Properties.ObjectVariation.sPrefabVariation) then
      Game.SpawnPrefab(A0_7121.id, A0_7121.Properties.filePrefabLibrary, A0_7121.Properties.ObjectVariation.sPrefabVariation, A1_7122, A0_7121.Properties.nMaxSpawn)
    end
  end
end
L0_7112.Spawn = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7123)
  Game.HidePrefab(A0_7123.id, true)
end
L0_7112.OnHidden = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7124)
  Game.HidePrefab(A0_7124.id, false)
end
L0_7112.OnUnHidden = L1_7113
L0_7112 = ProceduralObject
function L1_7113(A0_7125, A1_7126)
  if System.IsEditor() then
    if System.IsEditing() or 0 == 1 then
      Game.DeletePrefab(A0_7125.id)
      A0_7125:Spawn(0)
    end
  else
    Game.DeletePrefab(A0_7125.id)
  end
end
L0_7112.OnReset = L1_7113
