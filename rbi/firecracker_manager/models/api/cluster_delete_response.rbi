# typed: strong

module FirecrackerManager
  module Models
    module API
      class ClusterDeleteResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::ClusterDeleteResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        # A struct containing information about an attempted cluster deletion request.
        # Reports information in the event of a partial failure so billing can still be
        # udpated appropriately.
        sig { returns(FirecrackerManager::API::ClusterDeleteResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: FirecrackerManager::API::ClusterDeleteResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
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
            data: FirecrackerManager::API::ClusterDeleteResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::OrSymbol,
            operation_id: String,
            time_start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A struct containing information about an attempted cluster deletion request.
          # Reports information in the event of a partial failure so billing can still be
          # udpated appropriately.
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
              data: FirecrackerManager::API::ClusterDeleteResponse::Data,
              duration_ns: Integer,
              operation_code:
                FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol,
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
                FirecrackerManager::API::ClusterDeleteResponse::Data,
                FirecrackerManager::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :cluster_id

          # A struct containing information about an attempted VM deletion request. Reports
          # information in the event of a partial failure so billing can still be udpated
          # appropriately.
          sig { returns(FirecrackerManager::API::VmDeleteResponse) }
          attr_reader :vms

          sig do
            params(vms: FirecrackerManager::API::VmDeleteResponse::OrHash).void
          end
          attr_writer :vms

          sig { returns(T.nilable(String)) }
          attr_accessor :fs_error

          # A struct containing information about an attempted cluster deletion request.
          # Reports information in the event of a partial failure so billing can still be
          # udpated appropriately.
          sig do
            params(
              cluster_id: String,
              vms: FirecrackerManager::API::VmDeleteResponse::OrHash,
              fs_error: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            cluster_id:,
            # A struct containing information about an attempted VM deletion request. Reports
            # information in the event of a partial failure so billing can still be udpated
            # appropriately.
            vms:,
            fs_error: nil
          )
          end

          sig do
            override.returns(
              {
                cluster_id: String,
                vms: FirecrackerManager::API::VmDeleteResponse,
                fs_error: T.nilable(String)
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
                FirecrackerManager::API::ClusterDeleteResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
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
