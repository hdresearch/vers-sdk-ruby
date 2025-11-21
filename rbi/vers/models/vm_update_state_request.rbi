# typed: strong

module Vers
  module Models
    class VmUpdateStateRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::VmUpdateStateRequest, Vers::Internal::AnyHash)
        end

      # The requested state for the VM
      sig { returns(Vers::VmUpdateStateRequest::State::OrSymbol) }
      attr_accessor :state

      # Request body for PATCH /api/vm/{vm_id}/state
      sig do
        params(state: Vers::VmUpdateStateRequest::State::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The requested state for the VM
        state:
      )
      end

      sig do
        override.returns({ state: Vers::VmUpdateStateRequest::State::OrSymbol })
      end
      def to_hash
      end

      # The requested state for the VM
      module State
        extend Vers::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Vers::VmUpdateStateRequest::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAUSED = T.let(:Paused, Vers::VmUpdateStateRequest::State::TaggedSymbol)
        RUNNING =
          T.let(:Running, Vers::VmUpdateStateRequest::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Vers::VmUpdateStateRequest::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
