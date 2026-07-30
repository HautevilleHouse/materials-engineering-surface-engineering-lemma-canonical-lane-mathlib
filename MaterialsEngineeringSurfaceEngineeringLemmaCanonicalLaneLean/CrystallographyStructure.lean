import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCellGeometry : Prop
  symmetryGroup : Type v
  millerIndices : List (Nat × Nat × Nat)
  surfaceTerminations : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellGeometryClosed : C.unitCellGeometry
  symmetryGroupDefined : Nonempty C.symmetryGroup
  surfaceTerminationsClosed : C.surfaceTerminations

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellGeometry ∧ C.surfaceTerminations

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.unitCellGeometryClosed E.surfaceTerminationsClosed

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
