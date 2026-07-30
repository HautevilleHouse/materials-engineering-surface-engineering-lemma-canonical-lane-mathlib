import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramThermodynamicsPackage where
  gibbsFreeEnergyModel : Prop
  chemicalPotentialBalance : Prop
  phaseBoundaryEquilibrium : Prop
  temperaturePressurePhaseDiagram : Prop
  metastablePhaseKinetics : Prop

structure PhaseDiagramThermodynamicsEvidence (P : PhaseDiagramThermodynamicsPackage) where
  gibbsFreeEnergyModelClosed : P.gibbsFreeEnergyModel
  chemicalPotentialBalanceClosed : P.chemicalPotentialBalance
  phaseBoundaryEquilibriumClosed : P.phaseBoundaryEquilibrium
  temperaturePressurePhaseDiagramClosed : P.temperaturePressurePhaseDiagram
  metastablePhaseKineticsClosed : P.metastablePhaseKinetics

def PhaseDiagramThermodynamicsClosed (P : PhaseDiagramThermodynamicsPackage) : Prop :=
  P.gibbsFreeEnergyModel ∧ P.chemicalPotentialBalance ∧ P.phaseBoundaryEquilibrium ∧
  P.temperaturePressurePhaseDiagram ∧ P.metastablePhaseKinetics

theorem phase_diagram_thermodynamics_closed_from_evidence
    (P : PhaseDiagramThermodynamicsPackage) (E : PhaseDiagramThermodynamicsEvidence P) :
    PhaseDiagramThermodynamicsClosed P := by
  exact And.intro E.gibbsFreeEnergyModelClosed
    (And.intro E.chemicalPotentialBalanceClosed
      (And.intro E.phaseBoundaryEquilibriumClosed
        (And.intro E.temperaturePressurePhaseDiagramClosed
          E.metastablePhaseKineticsClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse