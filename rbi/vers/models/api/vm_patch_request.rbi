# typed: strong

module Vers
  module Models
    module API
      class VmPatchRequest < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::VmPatchRequest, Vers::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :alias_

        sig { returns(T.nilable(Vers::API::VmPatchRequest::State::OrSymbol)) }
        attr_accessor :state

        sig do
          params(
            alias_: T.nilable(String),
            state: T.nilable(Vers::API::VmPatchRequest::State::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(alias_: nil, state: nil)
        end

        sig do
          override.returns(
            {
              alias_: T.nilable(String),
              state: T.nilable(Vers::API::VmPatchRequest::State::OrSymbol)
            }
          )
        end
        def to_hash
        end

        module State
          extend Vers::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Vers::API::VmPatchRequest::State) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(:Running, Vers::API::VmPatchRequest::State::TaggedSymbol)
          PAUSED =
            T.let(:Paused, Vers::API::VmPatchRequest::State::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Vers::API::VmPatchRequest::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
