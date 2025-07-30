# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class VmPatchParams < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute alias_
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias, nil?: true

        # @!attribute state
        #
        #   @return [Symbol, FirecrackerManager::Models::API::VmPatchParams::State, nil]
        optional :state, enum: -> { FirecrackerManager::API::VmPatchParams::State }, nil?: true

        # @!method initialize(alias_: nil, state: nil)
        #   @param alias_ [String, nil]
        #   @param state [Symbol, FirecrackerManager::Models::API::VmPatchParams::State, nil]

        # @see FirecrackerManager::Models::API::VmPatchParams#state
        module State
          extend FirecrackerManager::Internal::Type::Enum

          RUNNING = :Running
          PAUSED = :Paused

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
