# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Vm#delete
      class VmDeleteResponse < Vers::Internal::Type::BaseModel
        # @!attribute deleted_ids
        #
        #   @return [Array<String>]
        required :deleted_ids, Vers::Internal::Type::ArrayOf[String]

        # @!method initialize(deleted_ids:)
        #   Response body for DELETE /api/vm/{vm_id}
        #
        #   @param deleted_ids [Array<String>]
      end
    end
  end
end
