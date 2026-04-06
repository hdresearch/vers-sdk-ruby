# typed: strong

module Vers
  module Models
    class ListRepositoriesResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::ListRepositoriesResponse, Vers::Internal::AnyHash)
        end

      # List of all repositories in the user's organization
      sig { returns(T::Array[Vers::RepositoryInfo]) }
      attr_accessor :repositories

      # Response body for GET /api/v1/repositories
      sig do
        params(repositories: T::Array[Vers::RepositoryInfo::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of all repositories in the user's organization
        repositories:
      )
      end

      sig { override.returns({ repositories: T::Array[Vers::RepositoryInfo] }) }
      def to_hash
      end
    end
  end
end
