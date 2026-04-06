# typed: strong

module Vers
  module Models
    class RepositoryListTagsParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::RepositoryListTagsParams, Vers::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :repo_name

      sig do
        params(
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(repo_name:, request_options: {})
      end

      sig do
        override.returns(
          { repo_name: String, request_options: Vers::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
