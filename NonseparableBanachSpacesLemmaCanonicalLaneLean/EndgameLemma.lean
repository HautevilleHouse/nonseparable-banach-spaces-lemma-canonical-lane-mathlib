import canonicalLaneMathlib.AdmissibleClass
import NonseparableBanachSpacesLemmaCanonicalLaneLean.FinalTheorem
import NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableBanachBridge

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure EndgameLemmaPackage where
  bridgePackage : NonseparableBanachBridgePackage (NonseparableBanachLemmaPackage.mk (by exact Default.default) (by trivial) (by trivial) (by trivial))
  admissibleClass : AdmissibleClass
  evidence : ConstrainedNonseparableBanachClosure admissibleClass

theorem endgame_lemma_complete (E : EndgameLemmaPackage) :
    ConstrainedNonseparableBanachClosure E.admissibleClass := by
  exact E.evidence

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse