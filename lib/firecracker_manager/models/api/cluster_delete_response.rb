# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class ClusterDeleteResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute data
        #   A struct containing information about an attempted cluster deletion request.
        #   Reports information in the event of a partial failure so billing can still be
        #   udpated appropriately.
        #
        #   @return [FirecrackerManager::Models::API::ClusterDeleteResponse::Data]
        required :data, -> { FirecrackerManager::API::ClusterDeleteResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, FirecrackerManager::Models::API::ClusterDeleteResponse::OperationCode]
        required :operation_code, enum: -> { FirecrackerManager::API::ClusterDeleteResponse::OperationCode }

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
        #   Some parameter documentations has been truncated, see
        #   {FirecrackerManager::Models::API::ClusterDeleteResponse} for more details.
        #
        #   @param data [FirecrackerManager::Models::API::ClusterDeleteResponse::Data] A struct containing information about an attempted cluster deletion request. Rep
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, FirecrackerManager::Models::API::ClusterDeleteResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see FirecrackerManager::Models::API::ClusterDeleteResponse#data
        class Data < FirecrackerManager::Internal::Type::BaseModel
          # @!attribute cluster_id
          #
          #   @return [String]
          required :cluster_id, String

          # @!attribute vms
          #   A struct containing information about an attempted VM deletion request. Reports
          #   information in the event of a partial failure so billing can still be udpated
          #   appropriately.
          #
          #   @return [FirecrackerManager::Models::API::VmDeleteResponse]
          required :vms, -> { FirecrackerManager::API::VmDeleteResponse }

          # @!attribute fs_error
          #
          #   @return [String, nil]
          optional :fs_error, String, nil?: true

          # @!method initialize(cluster_id:, vms:, fs_error: nil)
          #   Some parameter documentations has been truncated, see
          #   {FirecrackerManager::Models::API::ClusterDeleteResponse::Data} for more details.
          #
          #   A struct containing information about an attempted cluster deletion request.
          #   Reports information in the event of a partial failure so billing can still be
          #   udpated appropriately.
          #
          #   @param cluster_id [String]
          #
          #   @param vms [FirecrackerManager::Models::API::VmDeleteResponse] A struct containing information about an attempted VM deletion request. Reports
          #
          #   @param fs_error [String, nil]
        end

        # @see FirecrackerManager::Models::API::ClusterDeleteResponse#operation_code
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
