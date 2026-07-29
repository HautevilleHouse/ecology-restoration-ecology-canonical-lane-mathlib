import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

def ConstrainedRestorationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_restoration_endgame (A : AdmissibleClass) :
    ConstrainedRestorationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
