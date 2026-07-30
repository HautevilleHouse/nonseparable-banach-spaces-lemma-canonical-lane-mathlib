import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableBanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  nonseparable : ¬ SeparableSpace carrier

structure NonseparableBanachEvidence (X : NonseparableBanachSpace) where
  normedAddCommGroupClosed : NormedAddCommGroup X.carrier
  nonseparableClosed : ¬ SeparableSpace X.carrier

def NonseparableBanachClosed (X : NonseparableBanachSpace) : Prop :=
  NormedAddCommGroup X.carrier ∧ ¬ SeparableSpace X.carrier

theorem nonseparable_banach_closed_from_evidence (X : NonseparableBanachSpace)
    (E : NonseparableBanachEvidence X) : NonseparableBanachClosed X := by
  exact And.intro E.normedAddCommGroupClosed E.nonseparableClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse