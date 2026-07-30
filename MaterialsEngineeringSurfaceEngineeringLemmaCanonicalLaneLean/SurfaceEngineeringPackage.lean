import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure SurfaceEngineeringPackage where
  coatingMethodDefined : Prop
  surfaceRoughnessModel : Prop
  adhesionMechanism : Prop
  wearResistanceModel : Prop
  corrosionResistanceModel : Prop

structure SurfaceEngineeringEvidence (S : SurfaceEngineeringPackage) where
  coatingMethodDefinedClosed : S.coatingMethodDefined
  surfaceRoughnessModelClosed : S.surfaceRoughnessModel
  adhesionMechanismClosed : S.adhesionMechanism
  wearResistanceModelClosed : S.wearResistanceModel
  corrosionResistanceModelClosed : S.corrosionResistanceModel

def SurfaceEngineeringClosed (S : SurfaceEngineeringPackage) : Prop :=
  S.coatingMethodDefined ∧ S.surfaceRoughnessModel ∧ S.adhesionMechanism ∧ S.wearResistanceModel ∧ S.corrosionResistanceModel

theorem surface_engineering_closed_from_evidence (S : SurfaceEngineeringPackage) (E : SurfaceEngineeringEvidence S) :
    SurfaceEngineeringClosed S := by
  exact And.intro E.coatingMethodDefinedClosed
    (And.intro E.surfaceRoughnessModelClosed
      (And.intro E.adhesionMechanismClosed
        (And.intro E.wearResistanceModelClosed E.corrosionResistanceModelClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse