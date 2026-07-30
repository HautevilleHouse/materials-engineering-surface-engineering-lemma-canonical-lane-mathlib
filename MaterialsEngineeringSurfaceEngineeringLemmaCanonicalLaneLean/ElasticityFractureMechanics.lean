import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure ElasticityFracturePackage where
  youngModulus : Prop
  poissonRatio : Prop
  stressStrainCurve : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  stressStrainCurveClosed : E.stressStrainCurve
  stressIntensityFactorClosed : E.stressIntensityFactor
  fractureToughnessClosed : E.fractureToughness

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.stressStrainCurve ∧ E.stressIntensityFactor ∧ E.fractureToughness

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) :
    ElasticityFractureClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.stressStrainCurveClosed
        (And.intro Ev.stressIntensityFactorClosed Ev.fractureToughnessClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse