import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure LocallyCompactGroup where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  locallyCompact : Prop
  hausdorff : Prop

structure DualGroup (G : LocallyCompactGroup) where
  dualCarrier : Type u
  dualTopology : TopologicalSpace dualCarrier
  dualGroup : Group dualCarrier
  locallyCompact : Prop
  hausdorff : Prop

structure PontryaginDualityPackage (G : LocallyCompactGroup) where
  dual : DualGroup G
  bidualIsIsomorphic : Prop
  canonicalMap : G.carrier → dualCarrier
  isomorphismWitness : Prop

structure PontryaginDualityEvidence {G : LocallyCompactGroup}
    (P : PontryaginDualityPackage G) where
  bidualIsIsomorphicClosed : P.bidualIsIsomorphic
  isomorphismWitnessClosed : P.isomorphismWitness

def PontryaginDualityClosed {G : LocallyCompactGroup}
    (P : PontryaginDualityPackage G) : Prop :=
  P.bidualIsIsomorphic ∧ P.isomorphismWitness

theorem pontryagin_duality_closed_from_evidence
    {G : LocallyCompactGroup} (P : PontryaginDualityPackage G)
    (E : PontryaginDualityEvidence P) : PontryaginDualityClosed P := by
  exact And.intro E.bidualIsIsomorphicClosed E.isomorphismWitnessClosed

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse
