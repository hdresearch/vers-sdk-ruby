# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::CommitTags#create
    class CreateTagResponse < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The commit ID this tag points to
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute tag_id
      #   The ID of the newly created tag
      #
      #   @return [String]
      required :tag_id, String

      # @!attribute tag_name
      #   The name of the tag
      #
      #   @return [String]
      required :tag_name, String

      # @!method initialize(commit_id:, tag_id:, tag_name:)
      #   Response body for POST /api/v1/commit_tags
      #
      #   @param commit_id [String] The commit ID this tag points to
      #
      #   @param tag_id [String] The ID of the newly created tag
      #
      #   @param tag_name [String] The name of the tag
    end
  end
end
