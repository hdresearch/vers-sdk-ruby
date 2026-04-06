# frozen_string_literal: true

module Vers
  module Models
    class UpdateRepoTagRequest < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   Optional new commit ID to move the tag to
      #
      #   @return [String, nil]
      optional :commit_id, String, nil?: true

      # @!attribute description
      #   Optional new description for the tag. Send `null` to clear.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(commit_id: nil, description: nil)
      #   Request body for PATCH /api/v1/repositories/{repo_name}/tags/{tag_name}
      #
      #   @param commit_id [String, nil] Optional new commit ID to move the tag to
      #
      #   @param description [String, nil] Optional new description for the tag. Send `null` to clear.
    end
  end
end
