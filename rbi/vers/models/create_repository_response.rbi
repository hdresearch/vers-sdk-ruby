# typed: strong

module Vers
  module Models
    class CreateRepositoryResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::CreateRepositoryResponse, Vers::Internal::AnyHash)
        end

      # The name of the repository
      sig { returns(String) }
      attr_accessor :name

      # The ID of the newly created repository
      sig { returns(String) }
      attr_accessor :repo_id

      # Response body for POST /api/v1/repositories
      sig { params(name: String, repo_id: String).returns(T.attached_class) }
      def self.new(
        # The name of the repository
        name:,
        # The ID of the newly created repository
        repo_id:
      )
      end

      sig { override.returns({ name: String, repo_id: String }) }
      def to_hash
      end
    end
  end
end
