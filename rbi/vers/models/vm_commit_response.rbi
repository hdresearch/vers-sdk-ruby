# typed: strong

module Vers
  module Models
    class VmCommitResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::Models::VmCommitResponse, Vers::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :commit_id

      # A summary of a commit, appropriate for displaying on the frontend
      sig { params(commit_id: String).returns(T.attached_class) }
      def self.new(commit_id:)
      end

      sig { override.returns({ commit_id: String }) }
      def to_hash
      end
    end
  end
end
