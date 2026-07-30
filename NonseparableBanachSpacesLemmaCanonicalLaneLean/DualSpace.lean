import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure DualSpacePackage (X : NonseparableBanachSpace) where
  dualSpace : NormedAddCommGroup (X.carrier →ₗ[ℝ] ℝ)
  dualNormed : NormedSpace ℝ (X.carrier →ₗ[ℝ] ℝ)
  nonseparableDual : Prop

structure DualSpaceEvidence (X : NonseparableBanachSpace)
    (D : DualSpacePackage X) where
  dualNormedClosed : NormedSpace ℝ (X.carrier →ₗ[ℝ] ℝ)
  nonseparableDualClosed : D.nonseparableDual

def DualSpaceClosed (X : NonseparableBanachSpace) (D : DualSpacePackage X) : Prop :=
  NormedSpace ℝ (X.carrier →ₗ[ℝ] ℝ) ∧ D.nonseparableDual

theorem dual_space_closed_from_evidence (X : NonseparableBanachSpace)
    (D : DualSpacePackage X) (E : DualSpaceEvidence X D) :
    DualSpaceClosed X D := by
  exact And.intro E.dualNormedClosed E.nonseparableDualClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse