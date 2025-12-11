# frozen_string_literal: true

module Vers
  module Models
    class VmAPI < Vers::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute owner_id
      #
      #   @return [String]
      required :owner_id, String

      # @!attribute state
      #   The state of a VM
      #
      #   @return [Symbol, Vers::Models::VmAPI::State]
      required :state, enum: -> { Vers::VmAPI::State }

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!method initialize(created_at:, owner_id:, state:, vm_id:)
      #   @param created_at [Time]
      #
      #   @param owner_id [String]
      #
      #   @param state [Symbol, Vers::Models::VmAPI::State] The state of a VM
      #
      #   @param vm_id [String]

      # The state of a VM
      #
      # @see Vers::Models::VmAPI#state
      module State
        extend Vers::Internal::Type::Enum

        BOOTING = :booting
        RUNNING = :running
        PAUSED = :paused

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
