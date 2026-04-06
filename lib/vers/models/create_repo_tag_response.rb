# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#create_tag
    class CreateRepoTagResponse < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The commit ID this tag points to
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute reference
      #   Full reference in image_name:tag format
      #
      #   @return [String]
      required :reference, String

      # @!attribute tag_id
      #   The ID of the newly created tag
      #
      #   @return [String]
      required :tag_id, String

      # @!method initialize(commit_id:, reference:, tag_id:)
      #   Response body for POST /api/v1/repositories/{repo_name}/tags
      #
      #   @param commit_id [String] The commit ID this tag points to
      #
      #   @param reference [String] Full reference in image_name:tag format
      #
      #   @param tag_id [String] The ID of the newly created tag
    end
  end
end
