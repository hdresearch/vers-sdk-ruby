# typed: strong

module Vers
  module Models
    class VmMetadataResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::VmMetadataResponse, Vers::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :ip

      sig { returns(String) }
      attr_accessor :owner_id

      # The state of a VM
      sig { returns(Vers::VmMetadataResponse::State::TaggedSymbol) }
      attr_accessor :state

      sig { returns(String) }
      attr_accessor :vm_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      sig { returns(T.nilable(String)) }
      attr_accessor :grandparent_vm_id

      sig { returns(T.nilable(String)) }
      attr_accessor :parent_commit_id

      # Response for GET /api/v1/vm/{vm_id}/metadata
      sig do
        params(
          created_at: Time,
          ip: String,
          owner_id: String,
          state: Vers::VmMetadataResponse::State::OrSymbol,
          vm_id: String,
          deleted_at: T.nilable(Time),
          grandparent_vm_id: T.nilable(String),
          parent_commit_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        ip:,
        owner_id:,
        # The state of a VM
        state:,
        vm_id:,
        deleted_at: nil,
        grandparent_vm_id: nil,
        parent_commit_id: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            ip: String,
            owner_id: String,
            state: Vers::VmMetadataResponse::State::TaggedSymbol,
            vm_id: String,
            deleted_at: T.nilable(Time),
            grandparent_vm_id: T.nilable(String),
            parent_commit_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The state of a VM
      module State
        extend Vers::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Vers::VmMetadataResponse::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOTING = T.let(:booting, Vers::VmMetadataResponse::State::TaggedSymbol)
        RUNNING = T.let(:running, Vers::VmMetadataResponse::State::TaggedSymbol)
        PAUSED = T.let(:paused, Vers::VmMetadataResponse::State::TaggedSymbol)
        SLEEPING =
          T.let(:sleeping, Vers::VmMetadataResponse::State::TaggedSymbol)
        DEAD = T.let(:dead, Vers::VmMetadataResponse::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Vers::VmMetadataResponse::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
