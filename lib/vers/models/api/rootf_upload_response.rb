# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Rootfs#upload
      class RootfUploadResponse < Vers::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Vers::Models::API::RootfUploadResponse::Data]
        required :data, -> { Vers::Models::API::RootfUploadResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, Vers::Models::API::RootfUploadResponse::OperationCode]
        required :operation_code, enum: -> { Vers::Models::API::RootfUploadResponse::OperationCode }

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
        #   @param data [Vers::Models::API::RootfUploadResponse::Data]
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, Vers::Models::API::RootfUploadResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see Vers::Models::API::RootfUploadResponse#data
        class Data < Vers::Internal::Type::BaseModel
          # @!attribute rootfs_name
          #
          #   @return [String]
          required :rootfs_name, String

          # @!method initialize(rootfs_name:)
          #   @param rootfs_name [String]
        end

        # @see Vers::Models::API::RootfUploadResponse#operation_code
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
