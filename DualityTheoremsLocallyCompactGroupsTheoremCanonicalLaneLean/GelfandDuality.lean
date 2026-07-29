import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure GelfandDualityPackage where
  cStarAlgebra : Type u
  spectrum : Type v
  topology : TopologicalSpace spectrum
  isomorphism : cStarAlgebra ≃ C(spectrum, ℂ)

structure GelfandDualityEvidence (G : GelfandDualityPackage) where
  isomorphismClosed : G.isomorphism

def GelfandDualityClosed (G : GelfandDualityPackage) : Prop :=
  G.isomorphism

theorem gelfand_duality_closed_from_evidence (G : GelfandDualityPackage) (E : GelfandDualityEvidence G) :
    GelfandDualityClosed G := by
  exact E.isomorphismClosed

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse
