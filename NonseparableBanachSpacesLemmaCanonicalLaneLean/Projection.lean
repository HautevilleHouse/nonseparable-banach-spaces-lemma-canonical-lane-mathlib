import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def nonseparableBanachSpaceProjection : Projection NonseparableBanachSpaceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem nonseparable_banach_space_projection_idempotent (x : NonseparableBanachSpaceEndgameState) :
    nonseparableBanachSpaceProjection.toFun (nonseparableBanachSpaceProjection.toFun x) = nonseparableBanachSpaceProjection.toFun x := by
  exact nonseparableBanachSpaceProjection.idempotent x

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse
