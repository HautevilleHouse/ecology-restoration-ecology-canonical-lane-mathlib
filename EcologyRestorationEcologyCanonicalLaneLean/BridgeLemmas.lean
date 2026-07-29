import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RestorationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
