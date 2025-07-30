# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmPatchParams < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmPatchParams,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :alias_

        sig do
          returns(
            T.nilable(FirecrackerManager::API::VmPatchParams::State::OrSymbol)
          )
        end
        attr_accessor :state

        sig do
          params(
            alias_: T.nilable(String),
            state:
              T.nilable(FirecrackerManager::API::VmPatchParams::State::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(alias_: nil, state: nil)
        end

        sig do
          override.returns(
            {
              alias_: T.nilable(String),
              state:
                T.nilable(
                  FirecrackerManager::API::VmPatchParams::State::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        module State
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FirecrackerManager::API::VmPatchParams::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(
              :Running,
              FirecrackerManager::API::VmPatchParams::State::TaggedSymbol
            )
          PAUSED =
            T.let(
              :Paused,
              FirecrackerManager::API::VmPatchParams::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::API::VmPatchParams::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
