# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Vm#branch
      class VmBranchResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [FirecrackerManager::Models::API::VmBranchResponse::Data]
        required :data, -> { FirecrackerManager::Models::API::VmBranchResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, FirecrackerManager::Models::API::VmBranchResponse::OperationCode]
        required :operation_code, enum: -> { FirecrackerManager::Models::API::VmBranchResponse::OperationCode }

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
        #   @param data [FirecrackerManager::Models::API::VmBranchResponse::Data]
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, FirecrackerManager::Models::API::VmBranchResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see FirecrackerManager::Models::API::VmBranchResponse#data
        class Data < FirecrackerManager::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the VM.
          #
          #   @return [String]
          required :id, String

          # @!attribute children
          #   The IDs of direct children branched from this VM.
          #
          #   @return [Array<String>]
          required :children, FirecrackerManager::Internal::Type::ArrayOf[String]

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
          #   @return [FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo]
          required :network_info, -> { FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo }

          # @!attribute state
          #   Whether the VM is running, paused, or not started.
          #
          #   @return [Symbol, FirecrackerManager::Models::API::VmBranchResponse::Data::State]
          required :state, enum: -> { FirecrackerManager::Models::API::VmBranchResponse::Data::State }

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
          #   @param network_info [FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo] The VM's network configuration
          #
          #   @param state [Symbol, FirecrackerManager::Models::API::VmBranchResponse::Data::State] Whether the VM is running, paused, or not started.
          #
          #   @param vcpu_count [Integer] How many vCPUs were allocated to this VM
          #
          #   @param alias_ [String, nil] Human-readable name assigned to the VM.
          #
          #   @param parent_id [String, nil] The parent VM's ID, if present. If None, then this VM is a root VM.

          # @see FirecrackerManager::Models::API::VmBranchResponse::Data#network_info
          class NetworkInfo < FirecrackerManager::Internal::Type::BaseModel
            # @!attribute guest_ip
            #
            #   @return [String]
            required :guest_ip, String

            # @!attribute guest_mac
            #
            #   @return [String]
            required :guest_mac, String

            # @!attribute ssh_port
            #
            #   @return [Integer]
            required :ssh_port, Integer

            # @!attribute tap0_ip
            #
            #   @return [String]
            required :tap0_ip, String

            # @!attribute tap0_name
            #
            #   @return [String]
            required :tap0_name, String

            # @!attribute vm_namespace
            #
            #   @return [String]
            required :vm_namespace, String

            # @!method initialize(guest_ip:, guest_mac:, ssh_port:, tap0_ip:, tap0_name:, vm_namespace:)
            #   The VM's network configuration
            #
            #   @param guest_ip [String]
            #   @param guest_mac [String]
            #   @param ssh_port [Integer]
            #   @param tap0_ip [String]
            #   @param tap0_name [String]
            #   @param vm_namespace [String]
          end

          # Whether the VM is running, paused, or not started.
          #
          # @see FirecrackerManager::Models::API::VmBranchResponse::Data#state
          module State
            extend FirecrackerManager::Internal::Type::Enum

            NOT_STARTED = :"Not started"
            RUNNING = :Running
            PAUSED = :Paused

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see FirecrackerManager::Models::API::VmBranchResponse#operation_code
        module OperationCode
          extend FirecrackerManager::Internal::Type::Enum

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
