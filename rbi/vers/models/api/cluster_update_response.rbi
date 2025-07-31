# typed: strong

module Vers
  module Models
    module API
      class ClusterUpdateResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Vers::Models::API::ClusterUpdateResponse,
              Vers::Internal::AnyHash
            )
          end

        sig { returns(Vers::Models::API::ClusterUpdateResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Vers::Models::API::ClusterUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
          )
        end
        attr_accessor :operation_code

        sig { returns(String) }
        attr_accessor :operation_id

        # Unix epoch time (secs)
        sig { returns(Integer) }
        attr_accessor :time_start

        sig do
          params(
            data: Vers::Models::API::ClusterUpdateResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              Vers::Models::API::ClusterUpdateResponse::OperationCode::OrSymbol,
            operation_id: String,
            time_start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          duration_ns:,
          operation_code:,
          operation_id:,
          # Unix epoch time (secs)
          time_start:
        )
        end

        sig do
          override.returns(
            {
              data: Vers::Models::API::ClusterUpdateResponse::Data,
              duration_ns: Integer,
              operation_code:
                Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol,
              operation_id: String,
              time_start: Integer
            }
          )
        end
        def to_hash
        end

        class Data < Vers::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Vers::Models::API::ClusterUpdateResponse::Data,
                Vers::Internal::AnyHash
              )
            end

          # The cluster's ID.
          sig { returns(String) }
          attr_accessor :id

          # The size of the cluster's backing file
          sig { returns(Integer) }
          attr_accessor :fs_size_mib

          # The ID of the cluster's root VM.
          sig { returns(String) }
          attr_accessor :root_vm_id

          # How many VMs are currently running on this cluster.
          sig { returns(Integer) }
          attr_accessor :vm_count

          # The VMs that are children of the cluster, including the root VM.
          sig { returns(T::Array[Vers::API::VmDto]) }
          attr_accessor :vms

          # Human-readable name assigned to the cluster.
          sig { returns(T.nilable(String)) }
          attr_accessor :alias_

          sig do
            params(
              id: String,
              fs_size_mib: Integer,
              root_vm_id: String,
              vm_count: Integer,
              vms: T::Array[Vers::API::VmDto::OrHash],
              alias_: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The cluster's ID.
            id:,
            # The size of the cluster's backing file
            fs_size_mib:,
            # The ID of the cluster's root VM.
            root_vm_id:,
            # How many VMs are currently running on this cluster.
            vm_count:,
            # The VMs that are children of the cluster, including the root VM.
            vms:,
            # Human-readable name assigned to the cluster.
            alias_: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                fs_size_mib: Integer,
                root_vm_id: String,
                vm_count: Integer,
                vms: T::Array[Vers::API::VmDto],
                alias_: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        module OperationCode
          extend Vers::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Vers::Models::API::ClusterUpdateResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Vers::Models::API::ClusterUpdateResponse::OperationCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
