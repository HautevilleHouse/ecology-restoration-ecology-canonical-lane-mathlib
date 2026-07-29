import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure RestorationInterventionPackage where
  interventionStrategy : Prop
  bioticManipulation : Prop
  abioticManipulation : Prop
  ecologicalEngineering : Prop
  monitoringProtocol : Prop

structure RestorationInterventionEvidence (R : RestorationInterventionPackage) where
  interventionStrategyClosed : R.interventionStrategy
  bioticManipulationClosed : R.bioticManipulation
  abioticManipulationClosed : R.abioticManipulation
  ecologicalEngineeringClosed : R.ecologicalEngineering
  monitoringProtocolClosed : R.monitoringProtocol

def RestorationInterventionClosed (R : RestorationInterventionPackage) : Prop :=
  R.interventionStrategy ∧ R.bioticManipulation ∧
  R.abioticManipulation ∧ R.ecologicalEngineering ∧
  R.monitoringProtocol

theorem restoration_intervention_closed_from_evidence
    (R : RestorationInterventionPackage) (Ev : RestorationInterventionEvidence R) :
    RestorationInterventionClosed R := by
  exact And.intro Ev.interventionStrategyClosed
    (And.intro Ev.bioticManipulationClosed
      (And.intro Ev.abioticManipulationClosed
        (And.intro Ev.ecologicalEngineeringClosed Ev.monitoringProtocolClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse