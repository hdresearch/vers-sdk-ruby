# typed: strong

module Vers
  module Models
    class VmDeleteResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmDeleteResponse, Vers::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :vm_id

      # Response body for DELETE /api/vm/{vm_id}
      sig { params(vm_id: String).returns(T.attached_class) }
      def self.new(vm_id:)
      end

      sig { override.returns({ vm_id: String }) }
      def to_hash
      end
    end
  end
end
