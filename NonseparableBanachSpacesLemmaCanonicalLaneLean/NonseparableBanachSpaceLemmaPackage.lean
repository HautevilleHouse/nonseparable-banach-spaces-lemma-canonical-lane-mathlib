import HautevilleHouse.NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableBanachSpaceAdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableBanachSpaceLemmaPackage where
  banachSpace : Type u
  normedGroup : NormedAddCommGroup banachSpace
  normedSpace : NormedSpace ℝ banachSpace
  nonseparable : ¬ SeparableSpace banachSpace
  keyLemma : Prop

structure NonseparableBanachSpaceLemmaEvidence (P : NonseparableBanachSpaceLemmaPackage) where
  nonseparableClosed : P.nonseparable
  keyLemmaClosed : P.keyLemma

def NonseparableBanachSpaceLemmaClosed (P : NonseparableBanachSpaceLemmaPackage) : Prop :=
  P.nonseparable ∧ P.keyLemma

theorem nonseparable_banach_space_lemma_closed_from_evidence
  (P : NonseparableBanachSpaceLemmaPackage) (E : NonseparableBanachSpaceLemmaEvidence P) :
  NonseparableBanachSpaceLemmaClosed P :=
  And.intro E.nonseparableClosed E.keyLemmaClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse