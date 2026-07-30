import HautevilleHouse.NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableCompactness

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableDecompositionPackage {P : NonseparableBanachSpaceLemmaPackage}
  {C : NonseparableCompactnessPackage P} where
  decompositionIntoCyclicSubspaces : Prop
  reductionToSeparableComponents : Prop

structure NonseparableDecompositionEvidence {P : NonseparableBanachSpaceLemmaPackage}
  {C : NonseparableCompactnessPackage P} (D : NonseparableDecompositionPackage C) where
  decompositionIntoCyclicSubspacesClosed : D.decompositionIntoCyclicSubspaces
  reductionToSeparableComponentsClosed : D.reductionToSeparableComponents

def NonseparableDecompositionClosed {P : NonseparableBanachSpaceLemmaPackage}
  {C : NonseparableCompactnessPackage P} (D : NonseparableDecompositionPackage C) : Prop :=
  D.decompositionIntoCyclicSubspaces ∧ D.reductionToSeparableComponents

theorem nonseparable_decomposition_closed_from_evidence
  {P : NonseparableBanachSpaceLemmaPackage} {C : NonseparableCompactnessPackage P}
  (D : NonseparableDecompositionPackage C) (E : NonseparableDecompositionEvidence D) :
  NonseparableDecompositionClosed D :=
  And.intro E.decompositionIntoCyclicSubspacesClosed E.reductionToSeparableComponentsClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse