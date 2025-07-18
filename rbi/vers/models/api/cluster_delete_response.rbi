# typed: strong

module Vers
  module Models
    module API
      class ClusterDeleteResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::ClusterDeleteResponse, Vers::Internal::AnyHash)
          end

        # A struct containing information about an attempted cluster deletion request.
        # Reports information in the event of a partial failure so billing can still be
        # udpated appropriately.
        sig { returns(Vers::API::ClusterDeleteResponse::Data) }
        attr_reader :data

        sig do
          params(data: Vers::API::ClusterDeleteResponse::Data::OrHash).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol)
        end
        attr_accessor :operation_code

        sig { returns(String) }
        attr_accessor :operation_id

        # Unix epoch time (secs)
        sig { returns(Integer) }
        attr_accessor :time_start

        sig do
          params(
            data: Vers::API::ClusterDeleteResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              Vers::API::ClusterDeleteResponse::OperationCode::OrSymbol,
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
              data: Vers::API::ClusterDeleteResponse::Data,
              duration_ns: Integer,
              operation_code:
                Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol,
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
                Vers::API::ClusterDeleteResponse::Data,
                Vers::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :cluster_id

          # A struct containing information about an attempted VM deletion request. Reports
          # information in the event of a partial failure so billing can still be udpated
          # appropriately.
          sig { returns(Vers::API::VmDeleteResponse) }
          attr_reader :vms

          sig { params(vms: Vers::API::VmDeleteResponse::OrHash).void }
          attr_writer :vms

          sig { returns(T.nilable(String)) }
          attr_accessor :fs_error

          # A struct containing information about an attempted cluster deletion request.
          # Reports information in the event of a partial failure so billing can still be
          # udpated appropriately.
          sig do
            params(
              cluster_id: String,
              vms: Vers::API::VmDeleteResponse::OrHash,
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
                vms: Vers::API::VmDeleteResponse,
                fs_error: T.nilable(String)
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
              T.all(Symbol, Vers::API::ClusterDeleteResponse::OperationCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Vers::API::ClusterDeleteResponse::OperationCode::TaggedSymbol
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
