# typed: strong

module FirecrackerManager
  module Models
    module API
      class ClusterGetSSHKeyResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
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
            data: String,
            duration_ns: Integer,
            operation_code:
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::OrSymbol,
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
              data: String,
              duration_ns: Integer,
              operation_code:
                FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol,
              operation_id: String,
              time_start: Integer
            }
          )
        end
        def to_hash
        end

        module OperationCode
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::Models::API::ClusterGetSSHKeyResponse::OperationCode::TaggedSymbol
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
