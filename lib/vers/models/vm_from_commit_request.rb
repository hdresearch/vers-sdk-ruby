# frozen_string_literal: true

module Vers
  module Models
    # Request body for POST /api/v1/vm/from_commit
    module VmFromCommitRequest
      extend Vers::Internal::Type::Union

      # The commit ID to restore from
      variant -> { Vers::VmFromCommitRequest::CommitID }

      # The tag name to restore from (legacy org-scoped tag)
      variant -> { Vers::VmFromCommitRequest::TagName }

      # A repository reference in "repo_name:tag_name" format
      variant -> { Vers::VmFromCommitRequest::Ref }

      class CommitID < Vers::Internal::Type::BaseModel
        # @!attribute commit_id
        #   The commit ID to restore from
        #
        #   @return [String]
        required :commit_id, String

        # @!method initialize(commit_id:)
        #   The commit ID to restore from
        #
        #   @param commit_id [String] The commit ID to restore from
      end

      class TagName < Vers::Internal::Type::BaseModel
        # @!attribute tag_name
        #   The tag name to restore from (legacy org-scoped tag)
        #
        #   @return [String]
        required :tag_name, String

        # @!method initialize(tag_name:)
        #   The tag name to restore from (legacy org-scoped tag)
        #
        #   @param tag_name [String] The tag name to restore from (legacy org-scoped tag)
      end

      class Ref < Vers::Internal::Type::BaseModel
        # @!attribute ref
        #   A repository reference in "repo_name:tag_name" format
        #
        #   @return [String]
        required :ref, String

        # @!method initialize(ref:)
        #   A repository reference in "repo_name:tag_name" format
        #
        #   @param ref [String] A repository reference in "repo_name:tag_name" format
      end

      # @!method self.variants
      #   @return [Array(Vers::Models::VmFromCommitRequest::CommitID, Vers::Models::VmFromCommitRequest::TagName, Vers::Models::VmFromCommitRequest::Ref)]
    end
  end
end
