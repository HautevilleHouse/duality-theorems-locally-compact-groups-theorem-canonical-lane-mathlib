import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.LocallyCompactGroupDuality

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure CompactGroup extends LocallyCompactGroup where
  compact : Prop

structure TannakaKreinDualityPackage (G : CompactGroup) where
  representationCategory : Type u
  fiberFunctor : representationCategory → Type u
  dualGroupIsIsomorphic : Prop
  reconstructionMap : G.carrier → (representationCategory → Type u)
  isomorphismWitness : Prop

structure TannakaKreinDualityEvidence {G : CompactGroup}
    (T : TannakaKreinDualityPackage G) where
  dualGroupIsIsomorphicClosed : T.dualGroupIsIsomorphic
  isomorphismWitnessClosed : T.isomorphismWitness

def TannakaKreinDualityClosed {G : CompactGroup}
    (T : TannakaKreinDualityPackage G) : Prop :=
  T.dualGroupIsIsomorphic ∧ T.isomorphismWitness

theorem tannaka_krein_duality_closed_from_evidence
    {G : CompactGroup} (T : TannakaKreinDualityPackage G)
    (E : TannakaKreinDualityEvidence T) : TannakaKreinDualityClosed T := by
  exact And.intro E.dualGroupIsIsomorphicClosed E.isomorphismWitnessClosed

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse
