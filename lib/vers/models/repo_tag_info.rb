# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#get_tag
    class RepoTagInfo < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The commit ID this tag currently points to
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute created_at
      #   When the tag was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute reference
      #   Full reference in image_name:tag format
      #
      #   @return [String]
      required :reference, String

      # @!attribute tag_id
      #   The tag's unique identifier
      #
      #   @return [String]
      required :tag_id, String

      # @!attribute tag_name
      #   The tag name
      #
      #   @return [String]
      required :tag_name, String

      # @!attribute updated_at
      #   When the tag was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Optional description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(commit_id:, created_at:, reference:, tag_id:, tag_name:, updated_at:, description: nil)
      #   Tag information within a repository context
      #
      #   @param commit_id [String] The commit ID this tag currently points to
      #
      #   @param created_at [Time] When the tag was created
      #
      #   @param reference [String] Full reference in image_name:tag format
      #
      #   @param tag_id [String] The tag's unique identifier
      #
      #   @param tag_name [String] The tag name
      #
      #   @param updated_at [Time] When the tag was last updated
      #
      #   @param description [String, nil] Optional description
    end
  end
end
