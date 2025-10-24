# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      class VmUpdateStateRequest < Vers::Internal::Type::BaseModel
        # @!attribute state
        #   The requested state for the VM
        #
        #   @return [Symbol, Vers::Models::Orchestrator::VmUpdateStateRequest::State]
        required :state, enum: -> { Vers::Orchestrator::VmUpdateStateRequest::State }

        # @!method initialize(state:)
        #   Request body for PATCH /api/vm/{vm_id}/state
        #
        #   @param state [Symbol, Vers::Models::Orchestrator::VmUpdateStateRequest::State] The requested state for the VM

        # The requested state for the VM
        #
        # @see Vers::Models::Orchestrator::VmUpdateStateRequest#state
        module State
          extend Vers::Internal::Type::Enum

          PAUSED = :Paused
          RUNNING = :Running

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
