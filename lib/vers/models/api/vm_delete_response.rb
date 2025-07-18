# frozen_string_literal: true

module Vers
  module Models
    module API
      class VmDeleteResponse < Vers::Internal::Type::BaseModel
        # @!attribute data
        #   A struct containing information about an attempted VM deletion request. Reports
        #   information in the event of a partial failure so billing can still be udpated
        #   appropriately.
        #
        #   @return [Vers::Models::API::VmDeleteResponse::Data]
        required :data, -> { Vers::API::VmDeleteResponse::Data }

        # @!attribute duration_ns
        #
        #   @return [Integer]
        required :duration_ns, Integer

        # @!attribute operation_code
        #
        #   @return [Symbol, Vers::Models::API::VmDeleteResponse::OperationCode]
        required :operation_code, enum: -> { Vers::API::VmDeleteResponse::OperationCode }

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
        #   {Vers::Models::API::VmDeleteResponse} for more details.
        #
        #   @param data [Vers::Models::API::VmDeleteResponse::Data] A struct containing information about an attempted VM deletion request. Reports
        #
        #   @param duration_ns [Integer]
        #
        #   @param operation_code [Symbol, Vers::Models::API::VmDeleteResponse::OperationCode]
        #
        #   @param operation_id [String]
        #
        #   @param time_start [Integer] Unix epoch time (secs)

        # @see Vers::Models::API::VmDeleteResponse#data
        class Data < Vers::Internal::Type::BaseModel
          # @!attribute deleted_ids
          #
          #   @return [Array<String>]
          required :deleted_ids, Vers::Internal::Type::ArrayOf[String]

          # @!attribute errors
          #
          #   @return [Array<Vers::Models::API::VmDeleteResponse::Data::Error>]
          required :errors, -> { Vers::Internal::Type::ArrayOf[Vers::API::VmDeleteResponse::Data::Error] }

          # @!method initialize(deleted_ids:, errors:)
          #   A struct containing information about an attempted VM deletion request. Reports
          #   information in the event of a partial failure so billing can still be udpated
          #   appropriately.
          #
          #   @param deleted_ids [Array<String>]
          #   @param errors [Array<Vers::Models::API::VmDeleteResponse::Data::Error>]

          class Error < Vers::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute error
            #
            #   @return [String]
            required :error, String

            # @!method initialize(id:, error:)
            #   Contains a VM ID and the reason that it could not be deleted.
            #
            #   @param id [String]
            #   @param error [String]
          end
        end

        # @see Vers::Models::API::VmDeleteResponse#operation_code
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
