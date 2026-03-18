# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::CommitTags#list
    class ListTagsResponse < Vers::Internal::Type::BaseModel
      # @!attribute tags
      #   List of all tags in the user's organization
      #
      #   @return [Array<Vers::Models::TagInfo>]
      required :tags, -> { Vers::Internal::Type::ArrayOf[Vers::TagInfo] }

      # @!method initialize(tags:)
      #   Response body for GET /api/v1/commit_tags
      #
      #   @param tags [Array<Vers::Models::TagInfo>] List of all tags in the user's organization
    end
  end
end
