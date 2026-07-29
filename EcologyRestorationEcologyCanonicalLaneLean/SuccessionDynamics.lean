import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure SuccessionDynamics (S : Type) where
  pioneerSpecies : S -> Prop
  intermediateSpecies : S -> Prop
  climaxCommunity : Prop

structure SuccessionDynamicsEvidence (S : Type) (D : SuccessionDynamics S) where
  pioneerSpeciesClosed : D.pioneerSpecies
  intermediateSpeciesClosed : D.intermediateSpecies
  climaxCommunityClosed : D.climaxCommunity

def SuccessionDynamicsClosed (S : Type) (D : SuccessionDynamics S) : Prop :=
  D.pioneerSpecies ∧ D.intermediateSpecies ∧ D.climaxCommunity

theorem succession_dynamics_closed_from_evidence (S : Type) (D : SuccessionDynamics S) (E : SuccessionDynamicsEvidence S D) : SuccessionDynamicsClosed S D := by
  exact And.intro E.pioneerSpeciesClosed (And.intro E.intermediateSpeciesClosed E.climaxCommunityClosed)

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
