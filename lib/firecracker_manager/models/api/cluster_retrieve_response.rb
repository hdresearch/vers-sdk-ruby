# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Cluster#retrieve
      class ClusterRetrieveResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [FirecrackerManager::Models::API::ClusterRetrieveResponse::Data]
        required :data, -> { FirecrackerManager::Models::API::ClusterRetrieveResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, FirecrackerManager::Models::API::ClusterRetrieveResponse::OperationCode]
        required :operation_code,
                 enum: -> { FirecrackerManager::Models::API::ClusterRetrieveResponse::OperationCode }

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
        #   @param data [FirecrackerManager::Models::API::ClusterRetrieveResponse::Data]
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, FirecrackerManager::Models::API::ClusterRetrieveResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see FirecrackerManager::Models::API::ClusterRetrieveResponse#data
        class Data < FirecrackerManager::Internal::Type::BaseModel
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
          #   @return [Array<FirecrackerManager::Models::API::VmDto>]
          required :vms, -> { FirecrackerManager::Internal::Type::ArrayOf[FirecrackerManager::API::VmDto] }

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
          #   @param vms [Array<FirecrackerManager::Models::API::VmDto>] The VMs that are children of the cluster, including the root VM.
          #
          #   @param alias_ [String, nil] Human-readable name assigned to the cluster.
        end

        # @see FirecrackerManager::Models::API::ClusterRetrieveResponse#operation_code
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
