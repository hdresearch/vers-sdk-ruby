# typed: strong

module Vers
  module Models
    class VmCreateRootParams < Vers::Models::NewRootRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::VmCreateRootParams, Vers::Internal::AnyHash)
        end

      # If true, wait for the newly-created VM to finish booting before returning.
      # Default: false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :wait_boot

      sig { params(wait_boot: T::Boolean).void }
      attr_writer :wait_boot

      sig do
        params(
          wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If true, wait for the newly-created VM to finish booting before returning.
        # Default: false.
        wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { wait_boot: T::Boolean, request_options: Vers::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
