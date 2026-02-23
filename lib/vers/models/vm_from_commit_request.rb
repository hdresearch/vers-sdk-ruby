# frozen_string_literal: true

module Vers
  module Models
    # Request body for POST /api/v1/vm/from_commit
    module VmFromCommitRequest
      extend Vers::Internal::Type::Union

      # The commit ID to restore from (exactly one of commit_id or tag_name must be provided)
      variant -> { Vers::VmFromCommitRequest::CommitID }

      # The tag name to restore from (exactly one of commit_id or tag_name must be provided)
      variant -> { Vers::VmFromCommitRequest::TagName }

      class CommitID < Vers::Internal::Type::BaseModel
        # @!attribute commit_id
        #   The commit ID to restore from (exactly one of commit_id or tag_name must be
        #   provided)
        #
        #   @return [String]
        required :commit_id, String

        # @!method initialize(commit_id:)
        #   Some parameter documentations has been truncated, see
        #   {Vers::Models::VmFromCommitRequest::CommitID} for more details.
        #
        #   The commit ID to restore from (exactly one of commit_id or tag_name must be
        #   provided)
        #
        #   @param commit_id [String] The commit ID to restore from (exactly one of commit_id or tag_name must be prov
      end

      class TagName < Vers::Internal::Type::BaseModel
        # @!attribute tag_name
        #   The tag name to restore from (exactly one of commit_id or tag_name must be
        #   provided)
        #
        #   @return [String]
        required :tag_name, String

        # @!method initialize(tag_name:)
        #   Some parameter documentations has been truncated, see
        #   {Vers::Models::VmFromCommitRequest::TagName} for more details.
        #
        #   The tag name to restore from (exactly one of commit_id or tag_name must be
        #   provided)
        #
        #   @param tag_name [String] The tag name to restore from (exactly one of commit_id or tag_name must be provi
      end

      # @!method self.variants
      #   @return [Array(Vers::Models::VmFromCommitRequest::CommitID, Vers::Models::VmFromCommitRequest::TagName)]
    end
  end
end
