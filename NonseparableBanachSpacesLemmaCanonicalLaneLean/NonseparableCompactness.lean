import HautevilleHouse.NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableBanachSpaceLemmaPackage

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableCompactnessPackage {P : NonseparableBanachSpaceLemmaPackage} where
  compactEmbedding : Prop
  separableQuotient : Prop
  compactnessTransfer : Prop

structure NonseparableCompactnessEvidence {P : NonseparableBanachSpaceLemmaPackage}
  (C : NonseparableCompactnessPackage P) where
  compactEmbeddingClosed : C.compactEmbedding
  separableQuotientClosed : C.separableQuotient
  compactnessTransferClosed : C.compactnessTransfer

def NonseparableCompactnessClosed {P : NonseparableBanachSpaceLemmaPackage}
  (C : NonseparableCompactnessPackage P) : Prop :=
  C.compactEmbedding ∧ C.separableQuotient ∧ C.compactnessTransfer

theorem nonseparable_compactness_closed_from_evidence
  {P : NonseparableBanachSpaceLemmaPackage} (C : NonseparableCompactnessPackage P)
  (E : NonseparableCompactnessEvidence C) : NonseparableCompactnessClosed C :=
  And.intro E.compactEmbeddingClosed
    (And.intro E.separableQuotientClosed E.compactnessTransferClosed)

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse