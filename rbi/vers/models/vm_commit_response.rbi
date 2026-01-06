# typed: strong

module Vers
  module Models
    class VmCommitResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmCommitResponse, Vers::Internal::AnyHash) }

      # The UUID of the newly-created commit
      sig { returns(String) }
      attr_accessor :commit_id

      # The response body for POST /api/vm/{vm_id}/commit
      sig { params(commit_id: String).returns(T.attached_class) }
      def self.new(
        # The UUID of the newly-created commit
        commit_id:
      )
      end

      sig { override.returns({ commit_id: String }) }
      def to_hash
      end
    end
  end
end
