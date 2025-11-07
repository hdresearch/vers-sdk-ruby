# typed: strong

module Vers
  module Models
    class NewVmResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::NewVmResponse, Vers::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :vm_id

      # Response body for new VM requests (new_root, from_commit, branch)
      sig { params(vm_id: String).returns(T.attached_class) }
      def self.new(vm_id:)
      end

      sig { override.returns({ vm_id: String }) }
      def to_hash
      end
    end
  end
end
