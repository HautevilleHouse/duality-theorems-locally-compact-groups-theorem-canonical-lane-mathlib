import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure PontryaginDualityPackage (G : LocallyCompactGroup) where
  dualGroup : LocallyCompactGroup
  pairing : G.carrier → dualGroup.carrier → ℝ
  identityComponent : Prop
  dualityIsomorphism : Prop

structure PontryaginDualityEvidence {G : LocallyCompactGroup} (P : PontryaginDualityPackage G) where
  identityComponentClosed : P.identityComponent
  dualityIsomorphismClosed : P.dualityIsomorphism

def PontryaginDualityClosed {G : LocallyCompactGroup} (P : PontryaginDualityPackage G) : Prop :=
  P.identityComponent ∧ P.dualityIsomorphism

theorem pontryagin_duality_closed_from_evidence {G : LocallyCompactGroup}
    (P : PontryaginDualityPackage G) (E : PontryaginDualityEvidence P) :
    PontryaginDualityClosed P := by
  exact And.intro E.identityComponentClosed E.dualityIsomorphismClosed

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse
