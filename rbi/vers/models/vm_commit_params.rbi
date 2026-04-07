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

      # If provided, chelsea will use the requested commit UUID. Otherwise, it will
      # generate a UUID itself.
      sig { returns(T.nilable(String)) }
      attr_accessor :commit_id

      # Optional description for the commit.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional human-readable name for the commit. Defaults to auto-generated name if
      # not provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          vm_id: String,
          keep_paused: T::Boolean,
          skip_wait_boot: T::Boolean,
          commit_id: T.nilable(String),
          description: T.nilable(String),
          name: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        vm_id:,
        # If true, keep VM paused after commit
        keep_paused: nil,
        # If true, return an error immediately if the VM is still booting. Default: false
        skip_wait_boot: nil,
        # If provided, chelsea will use the requested commit UUID. Otherwise, it will
        # generate a UUID itself.
        commit_id: nil,
        # Optional description for the commit.
        description: nil,
        # Optional human-readable name for the commit. Defaults to auto-generated name if
        # not provided.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            vm_id: String,
            keep_paused: T::Boolean,
            skip_wait_boot: T::Boolean,
            commit_id: T.nilable(String),
            description: T.nilable(String),
            name: T.nilable(String),
            request_options: Vers::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
