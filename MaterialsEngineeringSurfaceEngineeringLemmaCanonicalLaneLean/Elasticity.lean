import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  stressTensor : Type
  strainTensor : Type
  hookeLaw : Prop
  isotropicElasticity : Prop
  planeStress : Prop
  planeStrain : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookeLawClosed : E.hookeLaw
  isotropicElasticityClosed : E.isotropicElasticity
  planeStressClosed : E.planeStress
  planeStrainClosed : E.planeStrain

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookeLaw ∧ E.isotropicElasticity ∧ E.planeStress ∧ E.planeStrain

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E :=
  And.intro Ev.hookeLawClosed
    (And.intro Ev.isotropicElasticityClosed
      (And.intro Ev.planeStressClosed Ev.planeStrainClosed))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse