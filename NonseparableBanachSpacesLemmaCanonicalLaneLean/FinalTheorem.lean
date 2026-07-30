import canonicalLaneMathlib.AdmissibleClass
import NonseparableBanachSpacesLemmaCanonicalLaneLean.BridgeLemmas
import NonseparableBanachSpacesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

def ConstrainedNonseparableBanachSpacesLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nonseparable_banach_spaces_lemma_endgame (A : AdmissibleClass) :
    ConstrainedNonseparableBanachSpacesLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse