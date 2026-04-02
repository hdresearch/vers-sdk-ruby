# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#get_metadata
    class VmMetadataResponse < Vers::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute ip
      #
      #   @return [String]
      required :ip, String

      # @!attribute owner_id
      #
      #   @return [String]
      required :owner_id, String

      # @!attribute state
      #   The state of a VM
      #
      #   @return [Symbol, Vers::Models::VmMetadataResponse::State]
      required :state, enum: -> { Vers::VmMetadataResponse::State }

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute deleted_at
      #
      #   @return [Time, nil]
      optional :deleted_at, Time, nil?: true

      # @!attribute grandparent_vm_id
      #
      #   @return [String, nil]
      optional :grandparent_vm_id, String, nil?: true

      # @!attribute parent_commit_id
      #
      #   @return [String, nil]
      optional :parent_commit_id, String, nil?: true

      # @!method initialize(created_at:, ip:, owner_id:, state:, vm_id:, deleted_at: nil, grandparent_vm_id: nil, parent_commit_id: nil)
      #   Response for GET /api/v1/vm/{vm_id}/metadata
      #
      #   @param created_at [Time]
      #
      #   @param ip [String]
      #
      #   @param owner_id [String]
      #
      #   @param state [Symbol, Vers::Models::VmMetadataResponse::State] The state of a VM
      #
      #   @param vm_id [String]
      #
      #   @param deleted_at [Time, nil]
      #
      #   @param grandparent_vm_id [String, nil]
      #
      #   @param parent_commit_id [String, nil]

      # The state of a VM
      #
      # @see Vers::Models::VmMetadataResponse#state
      module State
        extend Vers::Internal::Type::Enum

        BOOTING = :booting
        RUNNING = :running
        PAUSED = :paused
        SLEEPING = :sleeping
        DEAD = :dead

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
