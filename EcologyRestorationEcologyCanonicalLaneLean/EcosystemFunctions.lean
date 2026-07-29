import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure EcosystemFunctions where
  nutrientCyclingRate : Float
  primaryProductivity : Float
  decompositionRate : Float
  waterRegulation : String
  carbonSequestration : Float

structure EcosystemFunctionsEvidence (E : EcosystemFunctions) where
  nutrientCyclingRateClosed : E.nutrientCyclingRate > 0.1
  primaryProductivityClosed : E.primaryProductivity > 200.0
  decompositionRateClosed : E.decompositionRate > 0.05
  waterRegulationClosed : E.waterRegulation ∈ ["good", "moderate", "poor"]
  carbonSequestrationClosed : E.carbonSequestration > 0.5

def EcosystemFunctionsClosed (E : EcosystemFunctions) : Prop :=
  E.nutrientCyclingRate > 0.1 ∧
  E.primaryProductivity > 200.0 ∧
  E.decompositionRate > 0.05 ∧
  E.waterRegulation ∈ ["good", "moderate", "poor"] ∧
  E.carbonSequestration > 0.5

theorem ecosystem_functions_closed_from_evidence
    (E : EcosystemFunctions) (Ev : EcosystemFunctionsEvidence E) :
    EcosystemFunctionsClosed E := by
  exact And.intro Ev.nutrientCyclingRateClosed
    (And.intro Ev.primaryProductivityClosed
      (And.intro Ev.decompositionRateClosed
        (And.intro Ev.waterRegulationClosed Ev.carbonSequestrationClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse