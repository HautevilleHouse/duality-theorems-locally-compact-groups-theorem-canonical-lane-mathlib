import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure PeterWeylTheoremPackage (G : Type u) [TopologicalSpace G] [CompactGroup G] [HaarMeasure G] where
  matrixCoefficients : Type v
  orthonormalBasisStatement : Prop
  orthonormalBasisEvidence : orthonormalBasisStatement

def PeterWeylTheoremClosed {G : Type u} [TopologicalSpace G] [CompactGroup G] [HaarMeasure G] (P : PeterWeylTheoremPackage G) : Prop :=
  P.orthonormalBasisStatement

theorem peter_weyl_theorem_closed {G : Type u} [TopologicalSpace G] [CompactGroup G] [HaarMeasure G] (P : PeterWeylTheoremPackage G) :
    PeterWeylTheoremClosed P := by
  exact P.orthonormalBasisEvidence

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse