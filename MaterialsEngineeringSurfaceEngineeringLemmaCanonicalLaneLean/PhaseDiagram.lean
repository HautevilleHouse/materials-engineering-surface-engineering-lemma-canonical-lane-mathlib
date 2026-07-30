import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  binaryPhaseDiagram : Prop
  ternaryPhaseDiagram : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop
  solidusLiquidus : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  binaryPhaseDiagramClosed : P.binaryPhaseDiagram
  ternaryPhaseDiagramClosed : P.ternaryPhaseDiagram
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  solidusLiquidusClosed : P.solidusLiquidus

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.binaryPhaseDiagram ∧ P.ternaryPhaseDiagram ∧ P.phaseBoundaries ∧ P.eutecticPoint ∧ P.solidusLiquidus

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.binaryPhaseDiagramClosed
    (And.intro E.ternaryPhaseDiagramClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.eutecticPointClosed E.solidusLiquidusClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse