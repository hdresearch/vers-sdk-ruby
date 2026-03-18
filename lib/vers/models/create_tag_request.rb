# frozen_string_literal: true

module Vers
  module Models
    class CreateTagRequest < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The commit ID this tag should point to
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute tag_name
      #   The name of the tag (alphanumeric, hyphens, underscores, dots, 1-64 chars)
      #
      #   @return [String]
      required :tag_name, String

      # @!attribute description
      #   Optional description of what this tag represents
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(commit_id:, tag_name:, description: nil)
      #   Request body for POST /api/v1/commit_tags
      #
      #   @param commit_id [String] The commit ID this tag should point to
      #
      #   @param tag_name [String] The name of the tag (alphanumeric, hyphens, underscores, dots, 1-64 chars)
      #
      #   @param description [String, nil] Optional description of what this tag represents
    end
  end
end
