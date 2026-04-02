# typed: strong

module Vers
  module Models
    class VmAPI < Vers::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Vers::VmAPI, Vers::Internal::AnyHash) }

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :owner_id

      # The state of a VM
      sig { returns(Vers::VmAPI::State::TaggedSymbol) }
      attr_accessor :state

      sig { returns(String) }
      attr_accessor :vm_id

      sig do
        params(
          created_at: Time,
          owner_id: String,
          state: Vers::VmAPI::State::OrSymbol,
          vm_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        owner_id:,
        # The state of a VM
        state:,
        vm_id:
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            owner_id: String,
            state: Vers::VmAPI::State::TaggedSymbol,
            vm_id: String
          }
        )
      end
      def to_hash
      end

      # The state of a VM
      module State
        extend Vers::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Vers::VmAPI::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOTING = T.let(:booting, Vers::VmAPI::State::TaggedSymbol)
        RUNNING = T.let(:running, Vers::VmAPI::State::TaggedSymbol)
        PAUSED = T.let(:paused, Vers::VmAPI::State::TaggedSymbol)
        SLEEPING = T.let(:sleeping, Vers::VmAPI::State::TaggedSymbol)
        DEAD = T.let(:dead, Vers::VmAPI::State::TaggedSymbol)

        sig { override.returns(T::Array[Vers::VmAPI::State::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
