import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableBanachSpace where
  carrier : Type
  norm : carrier → ℝ
  isBanach : Prop
  isNonseparable : Prop

structure NonseparableBanachSpaceAdmittedObject where
  space : NonseparableBanachSpace
  isInfiniteDimensional : Prop
  separableSubspace : Prop
  subspaceDense : Prop
  conclusion : subspaceDense

structure NonseparableBanachSpaceEndgameState where
  object : NonseparableBanachSpaceAdmittedObject

def NonseparableBanachSpaceWitnessClosed (O : NonseparableBanachSpaceAdmittedObject) : Prop :=
  O.subspaceDense

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse
