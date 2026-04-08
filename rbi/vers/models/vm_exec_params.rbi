# typed: strong

module Vers
  module Models
    class VmExecParams < Vers::Models::VmExecRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Vers::VmExecParams, Vers::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :vm_id

      sig do
        params(
          vm_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(vm_id:, request_options: {})
      end

      sig do
        override.returns(
          { vm_id: String, request_options: Vers::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
