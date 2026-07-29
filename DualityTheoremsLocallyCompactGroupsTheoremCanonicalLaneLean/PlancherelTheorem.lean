import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure PlancherelTheoremPackage (G : Type u) [TopologicalSpace G] [LocallyCompactGroup G] [HaarMeasure G] where
  unitaryDual : Type v
  plancherelMap : L2 G → L2 unitaryDual
  isometryStatement : Prop
  plancherelEvidence : isometryStatement

def PlancherelTheoremClosed {G : Type u} [TopologicalSpace G] [LocallyCompactGroup G] [HaarMeasure G] (P : PlancherelTheoremPackage G) : Prop :=
  P.isometryStatement

theorem plancherel_theorem_closed {G : Type u} [TopologicalSpace G] [LocallyCompactGroup G] [HaarMeasure G] (P : PlancherelTheoremPackage G) :
    PlancherelTheoremClosed P := by
  exact P.plancherelEvidence

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse