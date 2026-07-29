import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure LocallyCompactGroup where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  locallyCompact : Prop
  hausdorff : Prop

def LocallyCompactGroupClosed (G : LocallyCompactGroup) : Prop :=
  G.locallyCompact ∧ G.hausdorff

theorem locally_compact_group_closed (G : LocallyCompactGroup) (h : G.locallyCompact) (h' : G.hausdorff) :
    LocallyCompactGroupClosed G := by
  exact And.intro h h'

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse
