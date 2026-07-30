import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure SurfaceCrystallographyPackage where
  bravaisLatticeType : Prop
  surfaceMillerIndices : Prop
  surfaceReconstruction : Prop
  subsurfaceStrainField : Prop
  surfaceEnergyAnisotropy : Prop

structure SurfaceCrystallographyEvidence (C : SurfaceCrystallographyPackage) where
  bravaisLatticeTypeClosed : C.bravaisLatticeType
  surfaceMillerIndicesClosed : C.surfaceMillerIndices
  surfaceReconstructionClosed : C.surfaceReconstruction
  subsurfaceStrainFieldClosed : C.subsurfaceStrainField
  surfaceEnergyAnisotropyClosed : C.surfaceEnergyAnisotropy

def SurfaceCrystallographyClosed (C : SurfaceCrystallographyPackage) : Prop :=
  C.bravaisLatticeType ∧ C.surfaceMillerIndices ∧ C.surfaceReconstruction ∧
  C.subsurfaceStrainField ∧ C.surfaceEnergyAnisotropy

theorem surface_crystallography_closed_from_evidence (C : SurfaceCrystallographyPackage)
    (E : SurfaceCrystallographyEvidence C) : SurfaceCrystallographyClosed C := by
  exact And.intro E.bravaisLatticeTypeClosed
    (And.intro E.surfaceMillerIndicesClosed
      (And.intro E.surfaceReconstructionClosed
        (And.intro E.subsurfaceStrainFieldClosed
          E.surfaceEnergyAnisotropyClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse