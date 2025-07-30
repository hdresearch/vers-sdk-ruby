# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class VmCommitResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [FirecrackerManager::Models::API::VmCommitResponse::Data]
        required :data, -> { FirecrackerManager::API::VmCommitResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, FirecrackerManager::Models::API::VmCommitResponse::OperationCode]
        required :operation_code, enum: -> { FirecrackerManager::API::VmCommitResponse::OperationCode }

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
        #   @param data [FirecrackerManager::Models::API::VmCommitResponse::Data]
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, FirecrackerManager::Models::API::VmCommitResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see FirecrackerManager::Models::API::VmCommitResponse#data
        class Data < FirecrackerManager::Internal::Type::BaseModel
          # @!attribute cluster_id
          #
          #   @return [String]
          required :cluster_id, String

          # @!attribute commit_id
          #
          #   @return [String]
          required :commit_id, String

          # @!attribute host_architecture
          #
          #   @return [String]
          required :host_architecture, String

          # @!method initialize(cluster_id:, commit_id:, host_architecture:)
          #   @param cluster_id [String]
          #   @param commit_id [String]
          #   @param host_architecture [String]
        end

        # @see FirecrackerManager::Models::API::VmCommitResponse#operation_code
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
