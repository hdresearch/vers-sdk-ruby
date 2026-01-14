# typed: strong

module Vers
  module Models
    class NewVmsResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::NewVmsResponse, Vers::Internal::AnyHash) }

      sig { returns(T::Array[Vers::NewVmResponse]) }
      attr_accessor :vms

      sig do
        params(vms: T::Array[Vers::NewVmResponse::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(vms:)
      end

      sig { override.returns({ vms: T::Array[Vers::NewVmResponse] }) }
      def to_hash
      end
    end
  end
end
