import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean.SurfaceEngineeringBridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

def ConstrainedSurfaceEngineeringClosure (A : AdmissibleClass) : Prop :=
  surfaceEngineeringBridgeClosed A ∧ gateClosed A

theorem constrained_surface_engineering_endgame (A : AdmissibleClass) :
    ConstrainedSurfaceEngineeringClosure A := by
  exact And.intro (surface_engineering_bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
