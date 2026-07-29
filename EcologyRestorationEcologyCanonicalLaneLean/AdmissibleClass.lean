import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : RestorationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RestorationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
