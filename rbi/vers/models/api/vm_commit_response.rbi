# typed: strong

module Vers
  module Models
    module API
      class VmCommitResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::VmCommitResponse, Vers::Internal::AnyHash)
          end

        sig { returns(Vers::API::VmCommitResponse::Data) }
        attr_reader :data

        sig { params(data: Vers::API::VmCommitResponse::Data::OrHash).void }
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(Vers::API::VmCommitResponse::OperationCode::TaggedSymbol)
        end
        attr_accessor :operation_code

        sig { returns(String) }
        attr_accessor :operation_id

        # Unix epoch time (secs)
        sig { returns(Integer) }
        attr_accessor :time_start

        sig do
          params(
            data: Vers::API::VmCommitResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              Vers::API::VmCommitResponse::OperationCode::OrSymbol,
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
              data: Vers::API::VmCommitResponse::Data,
              duration_ns: Integer,
              operation_code:
                Vers::API::VmCommitResponse::OperationCode::TaggedSymbol,
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
              T.any(Vers::API::VmCommitResponse::Data, Vers::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :cluster_id

          sig { returns(String) }
          attr_accessor :commit_id

          sig { returns(String) }
          attr_accessor :host_architecture

          sig do
            params(
              cluster_id: String,
              commit_id: String,
              host_architecture: String
            ).returns(T.attached_class)
          end
          def self.new(cluster_id:, commit_id:, host_architecture:)
          end

          sig do
            override.returns(
              {
                cluster_id: String,
                commit_id: String,
                host_architecture: String
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
              T.all(Symbol, Vers::API::VmCommitResponse::OperationCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              Vers::API::VmCommitResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Vers::API::VmCommitResponse::OperationCode::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
