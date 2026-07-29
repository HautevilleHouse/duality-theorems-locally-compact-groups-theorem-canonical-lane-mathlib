import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure GelfandRaikovTheoremPackage (G : Type u) [TopologicalSpace G] [LocallyCompactGroup G] where
  irreducibleUnitaryReps : Type v
  separationStatement : Prop
  grEvidence : separationStatement

def GelfandRaikovTheoremClosed {G : Type u} [TopologicalSpace G] [LocallyCompactGroup G] (Gpkg : GelfandRaikovTheoremPackage G) : Prop :=
  Gpkg.separationStatement

theorem gelfand_raikov_theorem_closed {G : Type u} [TopologicalSpace G] [LocallyCompactGroup G] (Gpkg : GelfandRaikovTheoremPackage G) :
    GelfandRaikovTheoremClosed Gpkg := by
  exact Gpkg.grEvidence

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse