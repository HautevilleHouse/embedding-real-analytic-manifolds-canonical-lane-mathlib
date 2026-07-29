import EmbeddingRealAnalyticManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingRealAnalyticManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end EmbeddingRealAnalyticManifoldsCanonicalLaneLean
end HautevilleHouse