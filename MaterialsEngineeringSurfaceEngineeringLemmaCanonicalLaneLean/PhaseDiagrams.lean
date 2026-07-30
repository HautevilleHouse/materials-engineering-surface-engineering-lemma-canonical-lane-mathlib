import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramsPackage where
  components : List String
  phases : List String
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  eutecticPoints : Prop
  phaseFractions : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointsClosed : P.eutecticPoints
  phaseFractionsClosed : P.phaseFractions

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoints ∧ P.phaseFractions

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage)
    (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P :=
  And.intro E.phaseBoundariesClosed
    (And.intro E.eutecticPointsClosed E.phaseFractionsClosed)

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse