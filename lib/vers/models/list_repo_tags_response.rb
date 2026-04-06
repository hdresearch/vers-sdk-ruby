# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#list_tags
    class ListRepoTagsResponse < Vers::Internal::Type::BaseModel
      # @!attribute repository
      #   The repository name
      #
      #   @return [String]
      required :repository, String

      # @!attribute tags
      #   List of tags in this repository
      #
      #   @return [Array<Vers::Models::RepoTagInfo>]
      required :tags, -> { Vers::Internal::Type::ArrayOf[Vers::RepoTagInfo] }

      # @!method initialize(repository:, tags:)
      #   Response body for GET /api/v1/repositories/{repo_name}/tags
      #
      #   @param repository [String] The repository name
      #
      #   @param tags [Array<Vers::Models::RepoTagInfo>] List of tags in this repository
    end
  end
end
