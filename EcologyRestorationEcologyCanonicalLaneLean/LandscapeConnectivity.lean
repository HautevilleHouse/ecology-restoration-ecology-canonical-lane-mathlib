import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure LandscapeConnectivityPackage where
  habitatPatchNetwork : Prop
  corridorFunctionality : Prop
  speciesMovement : Prop
  geneticExchange : Prop

structure LandscapeConnectivityEvidence (L : LandscapeConnectivityPackage) where
  habitatPatchNetworkClosed : L.habitatPatchNetwork
  corridorFunctionalityClosed : L.corridorFunctionality
  speciesMovementClosed : L.speciesMovement
  geneticExchangeClosed : L.geneticExchange

def LandscapeConnectivityClosed (L : LandscapeConnectivityPackage) : Prop :=
  L.habitatPatchNetwork ∧ L.corridorFunctionality ∧
  L.speciesMovement ∧ L.geneticExchange

theorem landscape_connectivity_closed_from_evidence
    (L : LandscapeConnectivityPackage) (E : LandscapeConnectivityEvidence L) :
    LandscapeConnectivityClosed L := by
  exact And.intro E.habitatPatchNetworkClosed
    (And.intro E.corridorFunctionalityClosed
      (And.intro E.speciesMovementClosed E.geneticExchangeClosed))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse