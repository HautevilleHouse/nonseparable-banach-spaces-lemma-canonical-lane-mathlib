import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableBanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  nonseparable : ¬ SeparableSpace carrier

structure NonseparableBanachSpaceLemmaPackage where
  space : NonseparableBanachSpace
  subspace : Submodule ℝ (space.carrier)
  closedSubspace : IsClosed (subspace : Set (space.carrier))
  lewismarkerCondition : Prop
  closedRange : Prop

structure NonseparableBanachSpaceLemmaEvidence (P : NonseparableBanachSpaceLemmaPackage) where
  lewismarkerConditionClosed : P.lewismarkerCondition
  closedRangeClosed : P.closedRange

def NonseparableBanachSpaceLemmaClosed (P : NonseparableBanachSpaceLemmaPackage) : Prop :=
  P.lewismarkerCondition ∧ P.closedRange

theorem nonseparable_banach_space_lemma_closed_from_evidence
    (P : NonseparableBanachSpaceLemmaPackage) (E : NonseparableBanachSpaceLemmaEvidence P) :
    NonseparableBanachSpaceLemmaClosed P := by
  exact And.intro E.lewismarkerConditionClosed E.closedRangeClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse