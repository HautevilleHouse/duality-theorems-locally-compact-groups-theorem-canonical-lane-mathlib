import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure HaarMeasurePackage {G : LocallyCompactGroupPackage} where
  haarMeasure : MeasureTheory.Measure G.group
  leftInvariant : IsMulLeftInvariant haarMeasure
  innerRegular : InnerRegularWRT haarMeasure IsCompact
  positiveOnOpenSets : ∀ (U : Set G.group), IsOpen U → U.Nonempty → haarMeasure U > 0

structure HaarMeasureEvidence {G : LocallyCompactGroupPackage}
    (H : HaarMeasurePackage G) where
  leftInvariantClosed : H.leftInvariant
  innerRegularClosed : H.innerRegular
  positiveOnOpenSetsClosed : H.positiveOnOpenSets

def HaarMeasureClosed {G : LocallyCompactGroupPackage}
    (H : HaarMeasurePackage G) : Prop :=
  H.leftInvariant ∧ H.innerRegular ∧ H.positiveOnOpenSets

theorem haar_measure_closed_from_evidence
    {G : LocallyCompactGroupPackage} (H : HaarMeasurePackage G)
    (E : HaarMeasureEvidence H) : HaarMeasureClosed H :=
  And.intro E.leftInvariantClosed
    (And.intro E.innerRegularClosed E.positiveOnOpenSetsClosed)

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse