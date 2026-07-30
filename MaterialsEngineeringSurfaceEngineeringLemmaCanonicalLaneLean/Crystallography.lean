import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type
  reciprocalLattice : Type
  brillouinZone : Type
  crystalSystem : String
  spaceGroup : Nat
  latticeParameters : Prop
  symmetryOperations : Prop
  diffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  symmetryOperationsClosed : C.symmetryOperations
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.symmetryOperations ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C :=
  And.intro E.latticeParametersClosed
    (And.intro E.symmetryOperationsClosed E.diffractionPatternClosed)

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse