# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      class VmFromCommitRequest < Vers::Internal::Type::BaseModel
        # @!attribute commit_id
        #
        #   @return [String]
        required :commit_id, String

        # @!method initialize(commit_id:)
        #   Request body for POST /api/vm/from_commit
        #
        #   @param commit_id [String]
      end
    end
  end
end
