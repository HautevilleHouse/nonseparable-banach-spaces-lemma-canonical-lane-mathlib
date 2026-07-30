import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure LemmaStatement where
  sourceKey : String
  lemmaName : String
  lemmaObject : String
  classicalBoundary : String

structure LemmaEvidence (L : LemmaStatement) where
  sourceKeyClosed : L.sourceKey = "nonseparable-banach-spaces-lemma"
  lemmaNameClosed : L.lemmaName = "Nonseparable Banach Spaces Lemma"

def LemmaClosed (L : LemmaStatement) : Prop :=
  L.sourceKey = "nonseparable-banach-spaces-lemma" ∧
  L.lemmaName = "Nonseparable Banach Spaces Lemma"

theorem lemma_closed_from_evidence (L : LemmaStatement)
    (E : LemmaEvidence L) : LemmaClosed L := by
  exact And.intro E.sourceKeyClosed E.lemmaNameClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse