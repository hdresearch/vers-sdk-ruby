# typed: strong

module Vers
  module Models
    class VmDeleteResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmDeleteResponse, Vers::Internal::AnyHash) }

      sig { returns(T::Array[String]) }
      attr_accessor :deleted_ids

      # Response body for DELETE /api/vm/{vm_id}
      sig { params(deleted_ids: T::Array[String]).returns(T.attached_class) }
      def self.new(deleted_ids:)
      end

      sig { override.returns({ deleted_ids: T::Array[String] }) }
      def to_hash
      end
    end
  end
end
