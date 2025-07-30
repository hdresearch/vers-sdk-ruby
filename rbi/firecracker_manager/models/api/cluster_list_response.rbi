# typed: strong

module FirecrackerManager
  module Models
    module API
      class ClusterListResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::Models::API::ClusterListResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[FirecrackerManager::Models::API::ClusterListResponse::Data]
          )
        end
        attr_accessor :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
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
            data:
              T::Array[
                FirecrackerManager::Models::API::ClusterListResponse::Data::OrHash
              ],
            duration_ns: Integer,
            operation_code:
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::OrSymbol,
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
              data:
                T::Array[
                  FirecrackerManager::Models::API::ClusterListResponse::Data
                ],
              duration_ns: Integer,
              operation_code:
                FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol,
              operation_id: String,
              time_start: Integer
            }
          )
        end
        def to_hash
        end

        class Data < FirecrackerManager::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FirecrackerManager::Models::API::ClusterListResponse::Data,
                FirecrackerManager::Internal::AnyHash
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
          sig { returns(T::Array[FirecrackerManager::API::VmDto]) }
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
              vms: T::Array[FirecrackerManager::API::VmDto::OrHash],
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
                vms: T::Array[FirecrackerManager::API::VmDto],
                alias_: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        module OperationCode
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FirecrackerManager::Models::API::ClusterListResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::Models::API::ClusterListResponse::OperationCode::TaggedSymbol
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
