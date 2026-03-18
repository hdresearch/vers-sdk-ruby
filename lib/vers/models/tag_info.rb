# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::CommitTags#get
    class TagInfo < Vers::Internal::Type::BaseModel
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

      # @!attribute tag_id
      #   The tag's unique identifier
      #
      #   @return [String]
      required :tag_id, String

      # @!attribute tag_name
      #   The name of the tag
      #
      #   @return [String]
      required :tag_name, String

      # @!attribute updated_at
      #   When the tag was last updated (moved to different commit or description changed)
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Optional description of what this tag represents
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(commit_id:, created_at:, tag_id:, tag_name:, updated_at:, description: nil)
      #   Some parameter documentations has been truncated, see {Vers::Models::TagInfo}
      #   for more details.
      #
      #   Tag information returned in list and get operations
      #
      #   @param commit_id [String] The commit ID this tag currently points to
      #
      #   @param created_at [Time] When the tag was created
      #
      #   @param tag_id [String] The tag's unique identifier
      #
      #   @param tag_name [String] The name of the tag
      #
      #   @param updated_at [Time] When the tag was last updated (moved to different commit or description changed)
      #
      #   @param description [String, nil] Optional description of what this tag represents
    end
  end
end
