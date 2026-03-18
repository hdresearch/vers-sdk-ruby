# typed: strong

module Vers
  module Models
    class CommitListParentsParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::CommitListParentsParams, Vers::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :commit_id

      sig do
        params(
          commit_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(commit_id:, request_options: {})
      end

      sig do
        override.returns(
          { commit_id: String, request_options: Vers::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
