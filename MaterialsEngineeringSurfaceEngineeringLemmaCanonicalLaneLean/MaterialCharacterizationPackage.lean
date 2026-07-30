import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure MaterialCharacterizationPackage where
  microstructureAnalysis : Prop
  mechanicalTesting : Prop
  thermalAnalysis : Prop
  spectroscopicIdentification : Prop
  surfaceMorphology : Prop

structure MaterialCharacterizationEvidence (M : MaterialCharacterizationPackage) where
  microstructureAnalysisClosed : M.microstructureAnalysis
  mechanicalTestingClosed : M.mechanicalTesting
  thermalAnalysisClosed : M.thermalAnalysis
  spectroscopicIdentificationClosed : M.spectroscopicIdentification
  surfaceMorphologyClosed : M.surfaceMorphology

def MaterialCharacterizationClosed (M : MaterialCharacterizationPackage) : Prop :=
  M.microstructureAnalysis ∧ M.mechanicalTesting ∧ M.thermalAnalysis ∧ M.spectroscopicIdentification ∧ M.surfaceMorphology

theorem material_characterization_closed_from_evidence (M : MaterialCharacterizationPackage) (E : MaterialCharacterizationEvidence M) :
    MaterialCharacterizationClosed M := by
  exact And.intro E.microstructureAnalysisClosed
    (And.intro E.mechanicalTestingClosed
      (And.intro E.thermalAnalysisClosed
        (And.intro E.spectroscopicIdentificationClosed E.surfaceMorphologyClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse