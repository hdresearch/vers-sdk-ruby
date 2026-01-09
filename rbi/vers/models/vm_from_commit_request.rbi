# typed: strong

module Vers
  module Models
    class VmFromCommitRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::VmFromCommitRequest, Vers::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :commit_id

      # Request body for POST /api/v1/vm/from_commit
      sig { params(commit_id: String).returns(T.attached_class) }
      def self.new(commit_id:)
      end

      sig { override.returns({ commit_id: String }) }
      def to_hash
      end
    end
  end
end
