import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure RemediationProtocol (R : Type) where
  soilAmendment : R -> Prop
  invasiveRemoval : R -> Prop
  nativePlanting : R -> Prop

structure RemediationProtocolEvidence (R : Type) (P : RemediationProtocol R) where
  soilAmendmentClosed : P.soilAmendment
  invasiveRemovalClosed : P.invasiveRemoval
  nativePlantingClosed : P.nativePlanting

def RemediationProtocolClosed (R : Type) (P : RemediationProtocol R) : Prop :=
  P.soilAmendment ∧ P.invasiveRemoval ∧ P.nativePlanting

theorem remediation_protocol_closed_from_evidence (R : Type) (P : RemediationProtocol R) (E : RemediationProtocolEvidence R P) : RemediationProtocolClosed R P := by
  exact And.intro E.soilAmendmentClosed (And.intro E.invasiveRemovalClosed E.nativePlantingClosed)

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
