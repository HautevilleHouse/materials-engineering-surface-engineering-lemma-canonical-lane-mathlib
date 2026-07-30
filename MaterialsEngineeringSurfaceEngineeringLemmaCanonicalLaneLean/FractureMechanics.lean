import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure FracturePackage where
  stressIntensityFactor : Type u
  fractureToughness : Type v
  crackPropagation : Prop
  failureCriterion : Prop
  energyReleaseRate : Prop

structure FractureEvidence (F : FracturePackage) where
  crackPropagationClosed : F.crackPropagation
  failureCriterionClosed : F.failureCriterion
  energyReleaseRateClosed : F.energyReleaseRate

def FractureClosed (F : FracturePackage) : Prop :=
  F.crackPropagation ∧ F.failureCriterion ∧ F.energyReleaseRate

theorem fracture_closed_from_evidence (F : FracturePackage)
    (E : FractureEvidence F) : FractureClosed F := by
  exact And.intro E.crackPropagationClosed
    (And.intro E.failureCriterionClosed E.energyReleaseRateClosed)

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
