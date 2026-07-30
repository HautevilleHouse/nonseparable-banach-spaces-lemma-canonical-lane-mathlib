import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure BoundedLinearFunctionalPackage (X : NonseparableBanachSpace) where
  boundedLinearFunctional : X.carrier →ₗ[ℝ] ℝ
  boundedness : Prop
  norm : ℝ

structure BoundedLinearFunctionalEvidence (X : NonseparableBanachSpace)
    (BLF : BoundedLinearFunctionalPackage X) where
  boundednessClosed : BLF.boundedness
  normClosed : BLF.norm = ‖BLF.boundedLinearFunctional‖

def BoundedLinearFunctionalClosed (X : NonseparableBanachSpace)
    (BLF : BoundedLinearFunctionalPackage X) : Prop :=
  BLF.boundedness ∧ BLF.norm = ‖BLF.boundedLinearFunctional‖

theorem bounded_linear_functional_closed_from_evidence (X : NonseparableBanachSpace)
    (BLF : BoundedLinearFunctionalPackage X)
    (E : BoundedLinearFunctionalEvidence X BLF) :
    BoundedLinearFunctionalClosed X BLF := by
  exact And.intro E.boundednessClosed E.normClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse