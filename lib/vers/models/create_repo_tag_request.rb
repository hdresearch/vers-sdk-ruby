# frozen_string_literal: true

module Vers
  module Models
    class CreateRepoTagRequest < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The commit ID this tag should point to
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute tag_name
      #   The tag name (e.g. "latest", "v1.0")
      #
      #   @return [String]
      required :tag_name, String

      # @!attribute description
      #   Optional description of what this tag represents
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(commit_id:, tag_name:, description: nil)
      #   Request body for creating a tag within a repository: POST
      #   /api/v1/repositories/{repo_name}/tags
      #
      #   @param commit_id [String] The commit ID this tag should point to
      #
      #   @param tag_name [String] The tag name (e.g. "latest", "v1.0")
      #
      #   @param description [String, nil] Optional description of what this tag represents
    end
  end
end
