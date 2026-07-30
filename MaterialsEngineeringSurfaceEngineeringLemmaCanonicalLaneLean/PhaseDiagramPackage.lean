import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  gibbPhaseRule : Prop
  phaseBoundaryDefined : Prop
  eutecticPointIdentified : Prop
  leverRuleApplied : Prop
  metastablePhasesConsidered : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  gibbPhaseRuleClosed : P.gibbPhaseRule
  phaseBoundaryDefinedClosed : P.phaseBoundaryDefined
  eutecticPointIdentifiedClosed : P.eutecticPointIdentified
  leverRuleAppliedClosed : P.leverRuleApplied
  metastablePhasesConsideredClosed : P.metastablePhasesConsidered

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbPhaseRule ∧ P.phaseBoundaryDefined ∧ P.eutecticPointIdentified ∧ P.leverRuleApplied ∧ P.metastablePhasesConsidered

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.gibbPhaseRuleClosed
    (And.intro E.phaseBoundaryDefinedClosed
      (And.intro E.eutecticPointIdentifiedClosed
        (And.intro E.leverRuleAppliedClosed E.metastablePhasesConsideredClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse