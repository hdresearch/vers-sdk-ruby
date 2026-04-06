# typed: strong

module Vers
  module Models
    class CreateRepositoryRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::CreateRepositoryRequest, Vers::Internal::AnyHash)
        end

      # The name of the repository (alphanumeric, hyphens, underscores, dots, 1-64
      # chars)
      sig { returns(String) }
      attr_accessor :name

      # Optional description of the repository
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Request body for POST /api/v1/repositories
      sig do
        params(name: String, description: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # The name of the repository (alphanumeric, hyphens, underscores, dots, 1-64
        # chars)
        name:,
        # Optional description of the repository
        description: nil
      )
      end

      sig { override.returns({ name: String, description: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
