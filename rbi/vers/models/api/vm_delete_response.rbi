# typed: strong

module Vers
  module Models
    module API
      class VmDeleteResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::VmDeleteResponse, Vers::Internal::AnyHash)
          end

        # A struct containing information about an attempted VM deletion request. Reports
        # information in the event of a partial failure so billing can still be udpated
        # appropriately.
        sig { returns(Vers::API::VmDeleteResponse::Data) }
        attr_reader :data

        sig { params(data: Vers::API::VmDeleteResponse::Data::OrHash).void }
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol)
        end
        attr_accessor :operation_code

        sig { returns(String) }
        attr_accessor :operation_id

        # Unix epoch time (secs)
        sig { returns(Integer) }
        attr_accessor :time_start

        sig do
          params(
            data: Vers::API::VmDeleteResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              Vers::API::VmDeleteResponse::OperationCode::OrSymbol,
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
              data: Vers::API::VmDeleteResponse::Data,
              duration_ns: Integer,
              operation_code:
                Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol,
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
              T.any(Vers::API::VmDeleteResponse::Data, Vers::Internal::AnyHash)
            end

          sig { returns(T::Array[String]) }
          attr_accessor :deleted_ids

          sig { returns(T::Array[Vers::API::VmDeleteResponse::Data::Error]) }
          attr_accessor :errors

          # A struct containing information about an attempted VM deletion request. Reports
          # information in the event of a partial failure so billing can still be udpated
          # appropriately.
          sig do
            params(
              deleted_ids: T::Array[String],
              errors: T::Array[Vers::API::VmDeleteResponse::Data::Error::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(deleted_ids:, errors:)
          end

          sig do
            override.returns(
              {
                deleted_ids: T::Array[String],
                errors: T::Array[Vers::API::VmDeleteResponse::Data::Error]
              }
            )
          end
          def to_hash
          end

          class Error < Vers::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Vers::API::VmDeleteResponse::Data::Error,
                  Vers::Internal::AnyHash
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
          extend Vers::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Vers::API::VmDeleteResponse::OperationCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Vers::API::VmDeleteResponse::OperationCode::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
