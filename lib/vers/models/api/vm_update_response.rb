# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Vm#update
      class VmUpdateResponse < Vers::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Vers::Models::API::VmUpdateResponse::Data]
        required :data, -> { Vers::Models::API::VmUpdateResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, Vers::Models::API::VmUpdateResponse::OperationCode]
        required :operation_code, enum: -> { Vers::Models::API::VmUpdateResponse::OperationCode }

        # @!attribute operation_id
        #
        #   @return [String]
        required :operation_id, String

        # @!attribute time_start
        #   Unix epoch time (secs)
        #
        #   @return [Integer]
        required :time_start, Integer

        # @!method initialize(data:, duration_ns:, operation_code:, operation_id:, time_start:)
        #   @param data [Vers::Models::API::VmUpdateResponse::Data]
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, Vers::Models::API::VmUpdateResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see Vers::Models::API::VmUpdateResponse#data
        class Data < Vers::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the VM.
          #
          #   @return [String]
          required :id, String

          # @!attribute children
          #   The IDs of direct children branched from this VM.
          #
          #   @return [Array<String>]
          required :children, Vers::Internal::Type::ArrayOf[String]

          # @!attribute cluster_id
          #   The VM's cluster ID
          #
          #   @return [String]
          required :cluster_id, String

          # @!attribute fs_size_mib
          #   What is the size of the "disk" allocated to this VM
          #
          #   @return [Integer]
          required :fs_size_mib, Integer

          # @!attribute ip_address
          #   The VM's local IP address on the VM subnet
          #
          #   @return [String]
          required :ip_address, String

          # @!attribute mem_size_mib
          #   How much RAM is allocated to this VM
          #
          #   @return [Integer]
          required :mem_size_mib, Integer

          # @!attribute network_info
          #   The VM's network configuration
          #
          #   @return [Vers::Models::API::VmNetworkInfoDto]
          required :network_info, -> { Vers::API::VmNetworkInfoDto }

          # @!attribute state
          #   Whether the VM is running, paused, or not started.
          #
          #   @return [Symbol, Vers::Models::API::VmUpdateResponse::Data::State]
          required :state, enum: -> { Vers::Models::API::VmUpdateResponse::Data::State }

          # @!attribute vcpu_count
          #   How many vCPUs were allocated to this VM
          #
          #   @return [Integer]
          required :vcpu_count, Integer

          # @!attribute alias_
          #   Human-readable name assigned to the VM.
          #
          #   @return [String, nil]
          optional :alias_, String, api_name: :alias, nil?: true

          # @!attribute parent_id
          #   The parent VM's ID, if present. If None, then this VM is a root VM.
          #
          #   @return [String, nil]
          optional :parent_id, String, nil?: true

          # @!method initialize(id:, children:, cluster_id:, fs_size_mib:, ip_address:, mem_size_mib:, network_info:, state:, vcpu_count:, alias_: nil, parent_id: nil)
          #   @param id [String] The ID of the VM.
          #
          #   @param children [Array<String>] The IDs of direct children branched from this VM.
          #
          #   @param cluster_id [String] The VM's cluster ID
          #
          #   @param fs_size_mib [Integer] What is the size of the "disk" allocated to this VM
          #
          #   @param ip_address [String] The VM's local IP address on the VM subnet
          #
          #   @param mem_size_mib [Integer] How much RAM is allocated to this VM
          #
          #   @param network_info [Vers::Models::API::VmNetworkInfoDto] The VM's network configuration
          #
          #   @param state [Symbol, Vers::Models::API::VmUpdateResponse::Data::State] Whether the VM is running, paused, or not started.
          #
          #   @param vcpu_count [Integer] How many vCPUs were allocated to this VM
          #
          #   @param alias_ [String, nil] Human-readable name assigned to the VM.
          #
          #   @param parent_id [String, nil] The parent VM's ID, if present. If None, then this VM is a root VM.

          # Whether the VM is running, paused, or not started.
          #
          # @see Vers::Models::API::VmUpdateResponse::Data#state
          module State
            extend Vers::Internal::Type::Enum

            NOT_STARTED = :"Not started"
            RUNNING = :Running
            PAUSED = :Paused

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Vers::Models::API::VmUpdateResponse#operation_code
        module OperationCode
          extend Vers::Internal::Type::Enum

          LIST_CLUSTERS = :list_clusters
          GET_CLUSTER = :get_cluster
          CREATE_CLUSTER = :create_cluster
          DELETE_CLUSTER = :delete_cluster
          UPDATE_CLUSTER = :update_cluster
          GET_CLUSTER_SSH_KEY = :get_cluster_ssh_key
          LIST_VMS = :list_vms
          GET_VM = :get_vm
          UPDATE_VM = :update_vm
          BRANCH_VM = :branch_vm
          COMMIT_VM = :commit_vm
          DELETE_VM = :delete_vm
          GET_VM_SSH_KEY = :get_vm_ssh_key
          UPLOAD_ROOTFS = :upload_rootfs
          DELETE_ROOTFS = :delete_rootfs
          LIST_ROOTFS = :list_rootfs

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
