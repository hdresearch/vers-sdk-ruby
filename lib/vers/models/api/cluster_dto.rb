# frozen_string_literal: true

module Vers
  module Models
    module API
      class ClusterDto < Vers::Internal::Type::BaseModel
        # @!attribute id
        #   The cluster's ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute fs_size_mib
        #   The size of the cluster's backing file
        #
        #   @return [Integer]
        required :fs_size_mib, Integer

        # @!attribute root_vm_id
        #   The ID of the cluster's root VM.
        #
        #   @return [String]
        required :root_vm_id, String

        # @!attribute vm_count
        #   How many VMs are currently running on this cluster.
        #
        #   @return [Integer]
        required :vm_count, Integer

        # @!attribute vms
        #   The VMs that are children of the cluster, including the root VM.
        #
        #   @return [Array<Vers::Models::API::VmDto>]
        required :vms, -> { Vers::Internal::Type::ArrayOf[Vers::API::VmDto] }

        # @!attribute alias_
        #   Human-readable name assigned to the cluster.
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias, nil?: true

        # @!method initialize(id:, fs_size_mib:, root_vm_id:, vm_count:, vms:, alias_: nil)
        #   @param id [String] The cluster's ID.
        #
        #   @param fs_size_mib [Integer] The size of the cluster's backing file
        #
        #   @param root_vm_id [String] The ID of the cluster's root VM.
        #
        #   @param vm_count [Integer] How many VMs are currently running on this cluster.
        #
        #   @param vms [Array<Vers::Models::API::VmDto>] The VMs that are children of the cluster, including the root VM.
        #
        #   @param alias_ [String, nil] Human-readable name assigned to the cluster.
      end
    end
  end
end
