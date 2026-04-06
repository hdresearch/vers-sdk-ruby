# typed: strong

module Vers
  module Models
    class ListRepoTagsResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::ListRepoTagsResponse, Vers::Internal::AnyHash)
        end

      # The repository name
      sig { returns(String) }
      attr_accessor :repository

      # List of tags in this repository
      sig { returns(T::Array[Vers::RepoTagInfo]) }
      attr_accessor :tags

      # Response body for GET /api/v1/repositories/{repo_name}/tags
      sig do
        params(
          repository: String,
          tags: T::Array[Vers::RepoTagInfo::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The repository name
        repository:,
        # List of tags in this repository
        tags:
      )
      end

      sig do
        override.returns(
          { repository: String, tags: T::Array[Vers::RepoTagInfo] }
        )
      end
      def to_hash
      end
    end
  end
end
