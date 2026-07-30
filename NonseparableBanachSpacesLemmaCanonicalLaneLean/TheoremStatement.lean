import NonseparableBanachSpacesLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  complete : Bool

definition BanachSpaceComplete (B : BanachSpace) : Prop := B.complete

definition BanachSpaceSeparable (B : BanachSpace) : Prop := ∃ s : Set B.carrier, Set.Countable s ∧ Dense s

structure BanachAdmittedObject where
  space : BanachSpace
  nonseparable : ¬ BanachSpaceSeparable space
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

definition BanachWitnessClosed (O : BanachAdmittedObject) : Prop := O.lemmaConclusion

definition sourceRepository : String := "nonseparable-banach-spaces-lemma-canonical-lane"
definition sourceDescription : String := "Nonseparable Banach Spaces Lemma"
definition sourceTheoremBoundary : String := "classical boundary"

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse
