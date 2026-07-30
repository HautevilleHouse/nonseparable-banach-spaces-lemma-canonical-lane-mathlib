import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure SubspaceDecomposition (X : NonseparableBanachSpace) where
  separableSubspace : Submodule ℝ X.carrier
  separable : SeparableSpace separableSubspace
  complementSubspace : Submodule ℝ X.carrier
  directSum : IsCompl separableSubspace complementSubspace
  complementNonseparable : ¬ SeparableSpace complementSubspace

def SubspaceDecompositionClosed (X : NonseparableBanachSpace) (D : SubspaceDecomposition X) : Prop :=
  D.complementNonseparable

theorem subspace_decomposition_complement_nonseparable (X : NonseparableBanachSpace) (D : SubspaceDecomposition X) :
    SubspaceDecompositionClosed X D := by
  exact D.complementNonseparable

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse