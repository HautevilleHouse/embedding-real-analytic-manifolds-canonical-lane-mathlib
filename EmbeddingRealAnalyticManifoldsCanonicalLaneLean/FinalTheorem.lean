import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingRealAnalyticManifoldsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.EmbeddingRealAnalyticManifoldsCanonicalLaneLean.EmbeddingBridgeLayer

namespace HautevilleHouse
namespace EmbeddingRealAnalyticManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WhitneyEmbeddingBridgeClosed defaultWhitneyEmbeddingCertificate

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact whitney_embedding_bridge_closed_checked

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EmbeddingRealAnalyticManifoldsCanonicalLaneLean
end HautevilleHouse