import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.PontryaginDuality

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure LocallyCompactGroupTheoryPackage where
  groupClass : DualityLocallyCompactGroup
  haarMeasure : Prop
  modularFunction : Prop
  integrationTheory : Prop
  dualGroupFormed : Prop

structure LocallyCompactGroupTheoryEvidence
    (L : LocallyCompactGroupTheoryPackage) where
  haarMeasureClosed : L.haarMeasure
  modularFunctionClosed : L.modularFunction
  integrationTheoryClosed : L.integrationTheory
  dualGroupFormedClosed : L.dualGroupFormed

def LocallyCompactGroupTheoryClosed (L : LocallyCompactGroupTheoryPackage) : Prop :=
  L.haarMeasure ∧ L.modularFunction ∧ L.integrationTheory ∧ L.dualGroupFormed

theorem locally_compact_group_theory_closed_from_evidence
    (L : LocallyCompactGroupTheoryPackage)
    (E : LocallyCompactGroupTheoryEvidence L) : LocallyCompactGroupTheoryClosed L := by
  exact And.intro E.haarMeasureClosed
    (And.intro E.modularFunctionClosed
      (And.intro E.integrationTheoryClosed E.dualGroupFormedClosed))

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse