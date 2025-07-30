# typed: strong

module FirecrackerManager
  module Models
    module API
      class RootfListResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::Models::API::RootfListResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig do
          returns(FirecrackerManager::Models::API::RootfListResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              FirecrackerManager::Models::API::RootfListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
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
              FirecrackerManager::Models::API::RootfListResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::OrSymbol,
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
              data: FirecrackerManager::Models::API::RootfListResponse::Data,
              duration_ns: Integer,
              operation_code:
                FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol,
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
                FirecrackerManager::Models::API::RootfListResponse::Data,
                FirecrackerManager::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :rootfs_names

          sig do
            params(rootfs_names: T::Array[String]).returns(T.attached_class)
          end
          def self.new(rootfs_names:)
          end

          sig { override.returns({ rootfs_names: T::Array[String] }) }
          def to_hash
          end
        end

        module OperationCode
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FirecrackerManager::Models::API::RootfListResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::Models::API::RootfListResponse::OperationCode::TaggedSymbol
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
