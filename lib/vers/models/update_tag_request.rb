# frozen_string_literal: true

module Vers
  module Models
    class UpdateTagRequest < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   Optional new commit ID to move the tag to
      #
      #   @return [String, nil]
      optional :commit_id, String, nil?: true

      # @!attribute description
      #   Optional new description for the tag. Send `null` to clear an existing
      #   description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(commit_id: nil, description: nil)
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::UpdateTagRequest} for more details.
      #
      #   Request body for PATCH /api/v1/commit_tags/{tag_name}
      #
      #   For `description`:
      #
      #   - Field absent from JSON → don't change the description
      #   - Field present as `null` → clear the description
      #   - Field present as `"text"` → set the description to "text"
      #
      #   @param commit_id [String, nil] Optional new commit ID to move the tag to
      #
      #   @param description [String, nil] Optional new description for the tag. Send `null` to clear an existing descripti
    end
  end
end
