import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure RestorationInterventionPackage where
  interventionType : Prop
  applicationMethod : Prop
  effectiveness : Prop
  sideEffects : Prop
  adaptiveManagement : Prop

structure RestorationInterventionEvidence (I : RestorationInterventionPackage) where
  interventionTypeClosed : I.interventionType
  applicationMethodClosed : I.applicationMethod
  effectivenessClosed : I.effectiveness
  sideEffectsClosed : I.sideEffects
  adaptiveManagementClosed : I.adaptiveManagement

def RestorationInterventionClosed (I : RestorationInterventionPackage) : Prop :=
  I.interventionType ∧ I.applicationMethod ∧ I.effectiveness ∧ I.sideEffects ∧ I.adaptiveManagement

theorem restoration_intervention_closed_from_evidence (I : RestorationInterventionPackage) (E : RestorationInterventionEvidence I) :
    RestorationInterventionClosed I := by
  exact And.intro E.interventionTypeClosed (And.intro E.applicationMethodClosed (And.intro E.effectivenessClosed (And.intro E.sideEffectsClosed E.adaptiveManagementClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse