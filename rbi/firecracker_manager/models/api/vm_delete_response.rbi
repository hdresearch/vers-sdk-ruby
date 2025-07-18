# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmDeleteResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmDeleteResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        # A struct containing information about an attempted VM deletion request. Reports
        # information in the event of a partial failure so billing can still be udpated
        # appropriately.
        sig { returns(FirecrackerManager::API::VmDeleteResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: FirecrackerManager::API::VmDeleteResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
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
            data: FirecrackerManager::API::VmDeleteResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              FirecrackerManager::API::VmDeleteResponse::OperationCode::OrSymbol,
            operation_id: String,
            time_start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A struct containing information about an attempted VM deletion request. Reports
          # information in the event of a partial failure so billing can still be udpated
          # appropriately.
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
              data: FirecrackerManager::API::VmDeleteResponse::Data,
              duration_ns: Integer,
              operation_code:
                FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol,
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
                FirecrackerManager::API::VmDeleteResponse::Data,
                FirecrackerManager::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :deleted_ids

          sig do
            returns(
              T::Array[FirecrackerManager::API::VmDeleteResponse::Data::Error]
            )
          end
          attr_accessor :errors

          # A struct containing information about an attempted VM deletion request. Reports
          # information in the event of a partial failure so billing can still be udpated
          # appropriately.
          sig do
            params(
              deleted_ids: T::Array[String],
              errors:
                T::Array[
                  FirecrackerManager::API::VmDeleteResponse::Data::Error::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(deleted_ids:, errors:)
          end

          sig do
            override.returns(
              {
                deleted_ids: T::Array[String],
                errors:
                  T::Array[
                    FirecrackerManager::API::VmDeleteResponse::Data::Error
                  ]
              }
            )
          end
          def to_hash
          end

          class Error < FirecrackerManager::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FirecrackerManager::API::VmDeleteResponse::Data::Error,
                  FirecrackerManager::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :error

            # Contains a VM ID and the reason that it could not be deleted.
            sig { params(id: String, error: String).returns(T.attached_class) }
            def self.new(id:, error:)
            end

            sig { override.returns({ id: String, error: String }) }
            def to_hash
            end
          end
        end

        module OperationCode
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FirecrackerManager::API::VmDeleteResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::API::VmDeleteResponse::OperationCode::TaggedSymbol
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
