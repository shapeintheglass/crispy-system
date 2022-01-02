local L0_6649, L1_6650, L2_6651
L0_6649 = {}
L1_6650 = {}
L1_6650.Icon = "Magnet.bmp"
L0_6649.Editor = L1_6650
L1_6650 = {}
L1_6650.BoneName = "Bip01 Head"
L0_6649.Properties = L1_6650
CharacterAttachHelper = L0_6649
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6652)
  A0_6652:MakeAttachment()
end
L0_6649.OnInit = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6653)
  A0_6653:MakeAttachment()
end
L0_6649.OnStartGame = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6654)
  A0_6654:MakeAttachment()
end
L0_6649.OnPropertyChange = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6655)
  A0_6655:MakeAttachment()
end
L0_6649.OnBindThis = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6656)
  A0_6656:DestroyAttachment()
end
L0_6649.OnUnBindThis = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6657)
  A0_6657:DestroyAttachment()
end
L0_6649.OnShutDown = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6658)
  if A0_6658:GetParent() then
    A0_6658:GetParent():DestroyAttachment(0, A0_6658:GetName())
    A0_6658:EnableInheritXForm(0)
    A0_6658:GetParent():CreateBoneAttachment(0, A0_6658.Properties.BoneName, A0_6658:GetName())
    A0_6658:GetParent():SetAttachmentObject(0, A0_6658:GetName(), A0_6658.id, -1, 0)
  end
end
L0_6649.MakeAttachment = L1_6650
L0_6649 = CharacterAttachHelper
function L1_6650(A0_6659)
  if A0_6659:GetParent() then
    A0_6659:GetParent():DestroyAttachment(0, A0_6659:GetName())
  end
end
L0_6649.DestroyAttachment = L1_6650
L0_6649 = CharacterAttachHelper
L1_6650 = {}
L2_6651 = CharacterAttachHelper
L2_6651 = L2_6651.OnBindThis
L1_6650.OnBindThis = L2_6651
L2_6651 = CharacterAttachHelper
L2_6651 = L2_6651.OnUnBindThis
L1_6650.OnUnBindThis = L2_6651
L0_6649.Server = L1_6650
L0_6649 = CharacterAttachHelper
L1_6650 = {}
L2_6651 = CharacterAttachHelper
L2_6651 = L2_6651.OnBindThis
L1_6650.OnBindThis = L2_6651
L2_6651 = CharacterAttachHelper
L2_6651 = L2_6651.OnUnBindThis
L1_6650.OnUnBindThis = L2_6651
L0_6649.Client = L1_6650
