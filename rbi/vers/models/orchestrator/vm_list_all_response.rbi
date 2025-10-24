# typed: strong

module Vers
  module Models
    module Orchestrator
      class VmListAllResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Vers::Orchestrator::VmListAllResponse,
              Vers::Internal::AnyHash
            )
          end

        # A list of nodes, each of which is a "root VM" with one or more children
        sig { returns(T::Array[Vers::Orchestrator::VmListAllResponse::Vm]) }
        attr_accessor :vms

        # Response body for GET /api/vm
        sig do
          params(
            vms: T::Array[Vers::Orchestrator::VmListAllResponse::Vm::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of nodes, each of which is a "root VM" with one or more children
          vms:
        )
        end

        sig do
          override.returns(
            { vms: T::Array[Vers::Orchestrator::VmListAllResponse::Vm] }
          )
        end
        def to_hash
        end

        class Vm < Vers::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Vers::Orchestrator::VmListAllResponse::Vm,
                Vers::Internal::AnyHash
              )
            end

          # The VM ID, a (v4) UUID.
          sig { returns(String) }
          attr_accessor :vm_id

          # The VM's parent ID
          sig { returns(T.nilable(String)) }
          attr_accessor :parent_id

          # Represents a tree node for a VM
          sig do
            params(vm_id: String, parent_id: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # The VM ID, a (v4) UUID.
            vm_id:,
            # The VM's parent ID
            parent_id: nil
          )
          end

          sig do
            override.returns({ vm_id: String, parent_id: T.nilable(String) })
          end
          def to_hash
          end
        end
      end
    end
  end
end
