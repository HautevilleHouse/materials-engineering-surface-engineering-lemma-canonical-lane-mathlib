import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure SurfaceFinishingProcessPackage where
  materialRemovalRate : Prop
  surfaceRoughnessEvolution : Prop
  processParameterWindow : Prop
  coolantLubricationEffect : Prop
  subsurfaceDamageControl : Prop

structure SurfaceFinishingProcessEvidence (S : SurfaceFinishingProcessPackage) where
  materialRemovalRateClosed : S.materialRemovalRate
  surfaceRoughnessEvolutionClosed : S.surfaceRoughnessEvolution
  processParameterWindowClosed : S.processParameterWindow
  coolantLubricationEffectClosed : S.coolantLubricationEffect
  subsurfaceDamageControlClosed : S.subsurfaceDamageControl

def SurfaceFinishingProcessClosed (S : SurfaceFinishingProcessPackage) : Prop :=
  S.materialRemovalRate ∧ S.surfaceRoughnessEvolution ∧ S.processParameterWindow ∧
  S.coolantLubricationEffect ∧ S.subsurfaceDamageControl

theorem surface_finishing_process_closed_from_evidence
    (S : SurfaceFinishingProcessPackage) (E : SurfaceFinishingProcessEvidence S) :
    SurfaceFinishingProcessClosed S := by
  exact And.intro E.materialRemovalRateClosed
    (And.intro E.surfaceRoughnessEvolutionClosed
      (And.intro E.processParameterWindowClosed
        (And.intro E.coolantLubricationEffectClosed
          E.subsurfaceDamageControlClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse