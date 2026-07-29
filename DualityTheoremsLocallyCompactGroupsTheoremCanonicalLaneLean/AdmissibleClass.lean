import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DualityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse