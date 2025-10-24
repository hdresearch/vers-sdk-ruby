# typed: strong

module Vers
  module Models
    module Orchestrator
      class VmBranchResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::Orchestrator::VmBranchResponse, Vers::Internal::AnyHash)
          end

        # The ID of the newly-created VM, a (v4) UUID
        sig { returns(String) }
        attr_accessor :vm_id

        # Response body for POST /api/vm/{vm_id}/branch
        sig { params(vm_id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the newly-created VM, a (v4) UUID
          vm_id:
        )
        end

        sig { override.returns({ vm_id: String }) }
        def to_hash
        end
      end
    end
  end
end
