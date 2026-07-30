import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactorDefined : Prop
  crackPropagationModel : Prop
  fractureToughnessDefined : Prop
  fatigueCrackGrowth : Prop
  failureCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorDefinedClosed : F.stressIntensityFactorDefined
  crackPropagationModelClosed : F.crackPropagationModel
  fractureToughnessDefinedClosed : F.fractureToughnessDefined
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth
  failureCriterionClosed : F.failureCriterion

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactorDefined ∧ F.crackPropagationModel ∧ F.fractureToughnessDefined ∧ F.fatigueCrackGrowth ∧ F.failureCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorDefinedClosed
    (And.intro E.crackPropagationModelClosed
      (And.intro E.fractureToughnessDefinedClosed
        (And.intro E.fatigueCrackGrowthClosed E.failureCriterionClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse