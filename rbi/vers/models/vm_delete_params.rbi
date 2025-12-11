# typed: strong

module Vers
  module Models
    class VmDeleteParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Vers::VmDeleteParams, Vers::Internal::AnyHash) }

      # If true, return an error immediately if the VM is still booting. Default: false
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :skip_wait_boot

      sig { params(skip_wait_boot: T::Boolean).void }
      attr_writer :skip_wait_boot

      sig do
        params(
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If true, return an error immediately if the VM is still booting. Default: false
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { skip_wait_boot: T::Boolean, request_options: Vers::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
