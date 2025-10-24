# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Node#list_vms
      class VmListAllResponse < Vers::Internal::Type::BaseModel
        # @!attribute vms
        #   A list of nodes, each of which is a "root VM" with one or more children
        #
        #   @return [Array<Vers::Models::Orchestrator::VmListAllResponse::Vm>]
        required :vms, -> { Vers::Internal::Type::ArrayOf[Vers::Orchestrator::VmListAllResponse::Vm] }

        # @!method initialize(vms:)
        #   Response body for GET /api/vm
        #
        #   @param vms [Array<Vers::Models::Orchestrator::VmListAllResponse::Vm>] A list of nodes, each of which is a "root VM" with one or more children

        class Vm < Vers::Internal::Type::BaseModel
          # @!attribute vm_id
          #   The VM ID, a (v4) UUID.
          #
          #   @return [String]
          required :vm_id, String

          # @!attribute parent_id
          #   The VM's parent ID
          #
          #   @return [String, nil]
          optional :parent_id, String, nil?: true

          # @!method initialize(vm_id:, parent_id: nil)
          #   Represents a tree node for a VM
          #
          #   @param vm_id [String] The VM ID, a (v4) UUID.
          #
          #   @param parent_id [String, nil] The VM's parent ID
        end
      end
    end
  end
end
