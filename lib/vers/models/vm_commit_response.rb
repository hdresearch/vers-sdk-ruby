# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#commit
    class VmCommitResponse < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #   The UUID of the newly-created commit
      #
      #   @return [String]
      required :commit_id, String

      # @!method initialize(commit_id:)
      #   The response body for POST /api/vm/{vm_id}/commit
      #
      #   @param commit_id [String] The UUID of the newly-created commit
    end
  end
end
