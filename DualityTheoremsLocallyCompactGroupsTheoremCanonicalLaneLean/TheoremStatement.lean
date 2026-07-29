import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "DualityTheoremsLocallyCompactGroups",
  theoremName := "DualityTheoremsLocallyCompactGroups",
  theoremObject := "Pontryagin duality for locally compact abelian groups",
  classicalBoundary := "unrestricted classical closure",
  manifoldConstrainedStatement := "locally compact abelian group duality closed through admissible class",
  certificateLane := "LCA_dual",
  carriedRemainder := "general locally compact group duality (non-abelian case) remains open"
}

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse