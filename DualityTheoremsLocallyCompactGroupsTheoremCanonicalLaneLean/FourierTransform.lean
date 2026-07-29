import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure FourierTransformPackage (G : LocallyCompactGroup) where
  dualGroup : LocallyCompactGroup
  fourierTransform : (G.carrier → ℂ) → (dualGroup.carrier → ℂ)
  inversionFormula : Prop
  plancherelTheorem : Prop

structure FourierTransformEvidence {G : LocallyCompactGroup} (F : FourierTransformPackage G) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem

def FourierTransformClosed {G : LocallyCompactGroup} (F : FourierTransformPackage G) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem

theorem fourier_transform_closed_from_evidence {G : LocallyCompactGroup}
    (F : FourierTransformPackage G) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed E.plancherelTheoremClosed

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse
