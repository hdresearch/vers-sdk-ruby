# typed: strong

module Vers
  module Models
    class VmCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Vers::VmCommitParams, Vers::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :vm_id

      # If true, keep VM paused after commit
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :keep_paused

      sig { params(keep_paused: T::Boolean).void }
      attr_writer :keep_paused

      # If true, return an error immediately if the VM is still booting. Default: false
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :skip_wait_boot

      sig { params(skip_wait_boot: T::Boolean).void }
      attr_writer :skip_wait_boot

      sig do
        params(
          vm_id: String,
          keep_paused: T::Boolean,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        vm_id:,
        # If true, keep VM paused after commit
        keep_paused: nil,
        # If true, return an error immediately if the VM is still booting. Default: false
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            vm_id: String,
            keep_paused: T::Boolean,
            skip_wait_boot: T::Boolean,
            request_options: Vers::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
