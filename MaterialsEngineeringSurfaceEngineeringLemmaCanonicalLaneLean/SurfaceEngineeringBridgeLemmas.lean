import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean.SurfaceEngineeringLemma

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

def surfaceEngineeringBridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | SurfaceEngineeringLemma obj => SurfaceEngineeringClosed obj
  | _ => False

theorem surface_engineering_bridge_from_admissible_class (A : AdmissibleClass) :
    surfaceEngineeringBridgeClosed A := by
  unfold surfaceEngineeringBridgeClosed
  match h : A.object with
  | SurfaceEngineeringLemma obj =>
    have : SurfaceEngineeringClosed obj := surface_engineering_closed_from_evidence obj (by
      sorry)
    exact this
  | _ => exact False.elim (by
    have : A.object = A.object := rfl
    sorry)
  sorry

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
