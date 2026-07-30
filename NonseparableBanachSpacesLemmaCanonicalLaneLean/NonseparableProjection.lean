import HautevilleHouse.NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableBanachSpaceAdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableEndgameState where
  object : NonseparableAdmittedObject

def nonseparableProjection : Projection NonseparableEndgameState :=
  { toFun := id
    idempotent := by intro x; rfl
  }

theorem nonseparable_projection_idempotent (x : NonseparableEndgameState) :
    nonseparableProjection.toFun (nonseparableProjection.toFun x) = nonseparableProjection.toFun x :=
  nonseparableProjection.idempotent x

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse