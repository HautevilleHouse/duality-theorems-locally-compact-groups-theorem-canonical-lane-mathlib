import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.LocallyCompactGroups

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure DualGroupPackage {G : LocallyCompactGroupPackage} (G' : G.groupType → Type) where
  dualTopology : TopologicalSpace (G' G.groupType)
  dualGroupStructure : Prop
  continuousCharacters : Prop
  dualityPairing : Prop

structure DualGroupEvidence {G : LocallyCompactGroupPackage} {G' : G.groupType → Type}
    (D : DualGroupPackage G') where
  dualTopologyClosed : D.dualTopology = TopologicalSpace.coinduced (fun x => x) (by infer_instance)
  dualGroupStructureClosed : D.dualGroupStructure
  continuousCharactersClosed : D.continuousCharacters
  dualityPairingClosed : D.dualityPairing

def DualGroupClosed {G : LocallyCompactGroupPackage} {G' : G.groupType → Type}
    (D : DualGroupPackage G') : Prop :=
  D.dualGroupStructure ∧ D.continuousCharacters ∧ D.dualityPairing

theorem dual_group_closed_from_evidence
    {G : LocallyCompactGroupPackage} {G' : G.groupType → Type}
    (D : DualGroupPackage G') (E : DualGroupEvidence D) :
    DualGroupClosed D := by
  exact And.intro E.dualGroupStructureClosed (And.intro E.continuousCharactersClosed E.dualityPairingClosed)

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse