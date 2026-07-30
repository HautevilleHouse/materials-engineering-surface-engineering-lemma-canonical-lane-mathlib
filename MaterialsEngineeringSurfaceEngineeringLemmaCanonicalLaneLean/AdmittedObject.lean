import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure AdmittedObject where
  material : Type
  properties : Prop
  surfaceCondition : Prop
  conclusion : surfaceCondition

def MaterialWitnessClosed (O : AdmittedObject) : Prop :=
  O.surfaceCondition

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse