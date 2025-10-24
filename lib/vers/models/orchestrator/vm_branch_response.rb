# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      class VmBranchResponse < Vers::Internal::Type::BaseModel
        # @!attribute vm_id
        #   The ID of the newly-created VM, a (v4) UUID
        #
        #   @return [String]
        required :vm_id, String

        # @!method initialize(vm_id:)
        #   Response body for POST /api/vm/{vm_id}/branch
        #
        #   @param vm_id [String] The ID of the newly-created VM, a (v4) UUID
      end
    end
  end
end
