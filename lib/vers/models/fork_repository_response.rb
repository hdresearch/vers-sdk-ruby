# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#fork_
    class ForkRepositoryResponse < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The new commit in your org (snapshot of the forked VM)
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute reference
      #   Full reference: repo_name:tag_name
      #
      #   @return [String]
      required :reference, String

      # @!attribute repo_name
      #   The new repository name in your org
      #
      #   @return [String]
      required :repo_name, String

      # @!attribute tag_name
      #   The tag name pointing to the forked commit
      #
      #   @return [String]
      required :tag_name, String

      # @!attribute vm_id
      #   The new VM that was created from the fork
      #
      #   @return [String]
      required :vm_id, String

      # @!method initialize(commit_id:, reference:, repo_name:, tag_name:, vm_id:)
      #   Response body for POST /api/v1/repositories/fork
      #
      #   @param commit_id [String] The new commit in your org (snapshot of the forked VM)
      #
      #   @param reference [String] Full reference: repo_name:tag_name
      #
      #   @param repo_name [String] The new repository name in your org
      #
      #   @param tag_name [String] The tag name pointing to the forked commit
      #
      #   @param vm_id [String] The new VM that was created from the fork
    end
  end
end
