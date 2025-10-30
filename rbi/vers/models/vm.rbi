# typed: strong

module Vers
  module Models
    class VmAPI < Vers::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Vers::VmAPI, Vers::Internal::AnyHash) }

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :owner_id

      sig { returns(String) }
      attr_accessor :vm_id

      sig { returns(T.nilable(String)) }
      attr_accessor :parent

      sig do
        params(
          created_at: Time,
          owner_id: String,
          vm_id: String,
          parent: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(created_at:, owner_id:, vm_id:, parent: nil)
      end

      sig do
        override.returns(
          {
            created_at: Time,
            owner_id: String,
            vm_id: String,
            parent: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
