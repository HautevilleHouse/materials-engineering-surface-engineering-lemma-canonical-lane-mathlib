import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensorDefined : Prop
  strainTensorDefined : Prop
  hookesLawApplied : Prop
  elasticModuliDefined : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorDefinedClosed : E.stressTensorDefined
  strainTensorDefinedClosed : E.strainTensorDefined
  hookesLawAppliedClosed : E.hookesLawApplied
  elasticModuliDefinedClosed : E.elasticModuliDefined
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensorDefined ∧ E.strainTensorDefined ∧ E.hookesLawApplied ∧ E.elasticModuliDefined ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressTensorDefinedClosed
    (And.intro Ev.strainTensorDefinedClosed
      (And.intro Ev.hookesLawAppliedClosed
        (And.intro Ev.elasticModuliDefinedClosed Ev.yieldCriterionClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse