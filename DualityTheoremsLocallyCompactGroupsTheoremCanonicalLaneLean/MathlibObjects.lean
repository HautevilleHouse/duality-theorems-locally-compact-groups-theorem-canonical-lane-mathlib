import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualityLocallyCompactGroup where
  carrier : Type
  topology : TopologicalSpace carrier
  groupStructure : Group carrier
  locallyCompact : Prop
  hausdorff : Prop

structure DualityAdmittedObject where
  group : DualityLocallyCompactGroup
  dualGroup : DualityLocallyCompactGroup
  pontryaginDuality : Prop
  conclusion : pontryaginDuality

structure DualityEndgameState where
  object : DualityAdmittedObject

def DualityWitnessClosed (O : DualityAdmittedObject) : Prop :=
  O.pontryaginDuality

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse