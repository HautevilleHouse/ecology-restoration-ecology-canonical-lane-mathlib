import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure BioticInteractionsPackage where
  speciesInteractions : Prop
  facilitationPresence : Prop
  competitionManaged : Prop
  trophicCascades : Prop

structure BioticInteractionsEvidence (B : BioticInteractionsPackage) where
  speciesInteractionsClosed : B.speciesInteractions
  facilitationPresenceClosed : B.facilitationPresence
  competitionManagedClosed : B.competitionManaged
  trophicCascadesClosed : B.trophicCascades

def BioticInteractionsClosed (B : BioticInteractionsPackage) : Prop :=
  B.speciesInteractions ∧ B.facilitationPresence ∧
  B.competitionManaged ∧ B.trophicCascades

theorem biotic_interactions_closed_from_evidence
    (B : BioticInteractionsPackage) (E : BioticInteractionsEvidence B) :
    BioticInteractionsClosed B := by
  exact And.intro E.speciesInteractionsClosed
    (And.intro E.facilitationPresenceClosed
      (And.intro E.competitionManagedClosed E.trophicCascadesClosed))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse