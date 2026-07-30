import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean

structure ThinFilmAdhesionPackage where
  filmSubstrateInterfaceModel : Prop
  interfacialBindingEnergy : Prop
  residualStressDistribution : Prop
  delaminationThreshold : Prop
  adhesionStrengthMeasurement : Prop

structure ThinFilmAdhesionEvidence (T : ThinFilmAdhesionPackage) where
  filmSubstrateInterfaceModelClosed : T.filmSubstrateInterfaceModel
  interfacialBindingEnergyClosed : T.interfacialBindingEnergy
  residualStressDistributionClosed : T.residualStressDistribution
  delaminationThresholdClosed : T.delaminationThreshold
  adhesionStrengthMeasurementClosed : T.adhesionStrengthMeasurement

def ThinFilmAdhesionClosed (T : ThinFilmAdhesionPackage) : Prop :=
  T.filmSubstrateInterfaceModel ∧ T.interfacialBindingEnergy ∧
  T.residualStressDistribution ∧ T.delaminationThreshold ∧ T.adhesionStrengthMeasurement

theorem thin_film_adhesion_closed_from_evidence (T : ThinFilmAdhesionPackage)
    (E : ThinFilmAdhesionEvidence T) : ThinFilmAdhesionClosed T := by
  exact And.intro E.filmSubstrateInterfaceModelClosed
    (And.intro E.interfacialBindingEnergyClosed
      (And.intro E.residualStressDistributionClosed
        (And.intro E.delaminationThresholdClosed
          E.adhesionStrengthMeasurementClosed)))

end MaterialsEngineeringSurfaceEngineeringLemmaCanonicalLaneLean
end HautevilleHouse