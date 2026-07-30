import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  phaseBoundaries : Prop
  equilibriumConditions : Prop
  leverRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumConditionsClosed : P.equilibriumConditions
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.equilibriumConditions ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.equilibriumConditionsClosed E.leverRuleClosed)

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
