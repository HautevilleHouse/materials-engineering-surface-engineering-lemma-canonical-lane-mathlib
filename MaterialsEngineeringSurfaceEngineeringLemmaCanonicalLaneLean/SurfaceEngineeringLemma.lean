import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure SurfaceEngineeringLemma where
  surfaceLayer : Type
  crystallographicPhase : Type
  defectStructure : Prop
  coatingMethod : Type
  adhesionStrength : Prop
  wearResistance : Prop
  corrosionResistance : Prop
  defectStructureClosed : defectStructure
  adhesionStrengthClosed : adhesionStrength
  wearResistanceClosed : wearResistance
  corrosionResistanceClosed : corrosionResistance

structure SurfaceEngineeringEvidence (L : SurfaceEngineeringLemma) where
  defectStructureClosed : L.defectStructure
  adhesionStrengthClosed : L.adhesionStrength
  wearResistanceClosed : L.wearResistance
  corrosionResistanceClosed : L.corrosionResistance

def SurfaceEngineeringClosed (L : SurfaceEngineeringLemma) : Prop :=
  L.defectStructure ∧ L.adhesionStrength ∧ L.wearResistance ∧ L.corrosionResistance

theorem surface_engineering_closed_from_evidence (L : SurfaceEngineeringLemma)
    (E : SurfaceEngineeringEvidence L) : SurfaceEngineeringClosed L := by
  exact And.intro E.defectStructureClosed
    (And.intro E.adhesionStrengthClosed
      (And.intro E.wearResistanceClosed E.corrosionResistanceClosed))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
