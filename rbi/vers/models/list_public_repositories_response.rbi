# typed: strong

module Vers
  module Models
    class ListPublicRepositoriesResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::ListPublicRepositoriesResponse, Vers::Internal::AnyHash)
        end

      sig { returns(T::Array[Vers::PublicRepositoryInfo]) }
      attr_accessor :repositories

      # Response body for GET /api/v1/public/repositories
      sig do
        params(
          repositories: T::Array[Vers::PublicRepositoryInfo::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(repositories:)
      end

      sig do
        override.returns({ repositories: T::Array[Vers::PublicRepositoryInfo] })
      end
      def to_hash
      end
    end
  end
end
