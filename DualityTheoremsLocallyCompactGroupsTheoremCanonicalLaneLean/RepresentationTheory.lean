import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.LocallyCompactGroup
import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.HaarMeasure

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure RepresentationPackage {G : LocallyCompactGroupPackage}
    (H : HaarMeasurePackage G) where
  hilbertSpace : Type u
  innerProduct : InnerProductSpace ℂ hilbertSpace
  representation : G.group → (hilbertSpace →L[ℂ] hilbertSpace)
  unitary : ∀ g ∈ G.group, IsUnitary (representation g)
  strongContinuity : ∀ v : hilbertSpace, Continuous (λ g : G.group => representation g v)
  irreducible : Prop
  unitaryClosed : unitary
  strongContinuityClosed : strongContinuity

structure RepresentationEvidence {G : LocallyCompactGroupPackage}
    {H : HaarMeasurePackage G} (R : RepresentationPackage G H) where
  unitaryClosed : R.unitary
  strongContinuityClosed : R.strongContinuity
  irreducibleClosed : R.irreducible

def RepresentationClosed {G : LocallyCompactGroupPackage}
    {H : HaarMeasurePackage G} (R : RepresentationPackage G H) : Prop :=
  R.unitary ∧ R.strongContinuity ∧ R.irreducible

theorem representation_closed_from_evidence
    {G : LocallyCompactGroupPackage} {H : HaarMeasurePackage G}
    (R : RepresentationPackage G H) (E : RepresentationEvidence R) :
    RepresentationClosed R :=
  And.intro E.unitaryClosed (And.intro E.strongContinuityClosed E.irreducibleClosed)

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse