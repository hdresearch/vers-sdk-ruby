# typed: strong

module Vers
  module Models
    module API
      class RootfUploadResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Vers::Models::API::RootfUploadResponse,
              Vers::Internal::AnyHash
            )
          end

        sig { returns(Vers::Models::API::RootfUploadResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Vers::Models::API::RootfUploadResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
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
            data: Vers::Models::API::RootfUploadResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              Vers::Models::API::RootfUploadResponse::OperationCode::OrSymbol,
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
              data: Vers::Models::API::RootfUploadResponse::Data,
              duration_ns: Integer,
              operation_code:
                Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol,
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
                Vers::Models::API::RootfUploadResponse::Data,
                Vers::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :rootfs_name

          sig { params(rootfs_name: String).returns(T.attached_class) }
          def self.new(rootfs_name:)
          end

          sig { override.returns({ rootfs_name: String }) }
          def to_hash
          end
        end

        module OperationCode
          extend Vers::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Vers::Models::API::RootfUploadResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Vers::Models::API::RootfUploadResponse::OperationCode::TaggedSymbol
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
