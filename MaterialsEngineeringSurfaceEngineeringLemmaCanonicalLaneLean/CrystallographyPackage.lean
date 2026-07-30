import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Prop
  unitCellGeometry : Prop
  bravaisLatticeClassified : Prop
  millerIndicesDefined : Prop
  symmetryOperations : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeTypeClosed : C.latticeType
  unitCellGeometryClosed : C.unitCellGeometry
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  millerIndicesDefinedClosed : C.millerIndicesDefined
  symmetryOperationsClosed : C.symmetryOperations

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeType ∧ C.unitCellGeometry ∧ C.bravaisLatticeClassified ∧ C.millerIndicesDefined ∧ C.symmetryOperations

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeTypeClosed
    (And.intro E.unitCellGeometryClosed
      (And.intro E.bravaisLatticeClassifiedClosed
        (And.intro E.millerIndicesDefinedClosed E.symmetryOperationsClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse