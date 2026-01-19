# typed: strong

module Vers
  module Models
    class VmBranchParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Vers::VmBranchParams, Vers::Internal::AnyHash) }

      # Number of VMs to branch (optional; default 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      # If true, keep VM paused after commit. Only applicable when branching a VM ID.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :keep_paused

      sig { params(keep_paused: T::Boolean).void }
      attr_writer :keep_paused

      # If true, immediately return an error if VM is booting instead of waiting. Only
      # applicable when branching a VM ID.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :skip_wait_boot

      sig { params(skip_wait_boot: T::Boolean).void }
      attr_writer :skip_wait_boot

      sig do
        params(
          count: Integer,
          keep_paused: T::Boolean,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of VMs to branch (optional; default 1)
        count: nil,
        # If true, keep VM paused after commit. Only applicable when branching a VM ID.
        keep_paused: nil,
        # If true, immediately return an error if VM is booting instead of waiting. Only
        # applicable when branching a VM ID.
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            count: Integer,
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
