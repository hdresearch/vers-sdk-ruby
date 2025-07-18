# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Cluster#get_ssh_key
      class ClusterGetSSHKeyResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [String]
        required :data, String

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode]
        required :operation_code,
                 enum: -> { FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode }

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
        #   @param data [String]
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see FirecrackerManager::Models::API::ClusterGetSSHKeyResponse#operation_code
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
