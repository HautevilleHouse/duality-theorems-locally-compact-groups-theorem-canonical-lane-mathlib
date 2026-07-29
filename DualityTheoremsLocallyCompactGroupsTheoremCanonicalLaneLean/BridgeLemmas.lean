import DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end DualityTheoremsLocallyCompactGroupsTheoremCanonicalLaneLean
end HautevilleHouse