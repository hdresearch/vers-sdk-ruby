# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class VmPatchRequest < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute alias_
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias, nil?: true

        # @!attribute state
        #
        #   @return [Symbol, FirecrackerManager::Models::API::VmPatchRequest::State, nil]
        optional :state, enum: -> { FirecrackerManager::API::VmPatchRequest::State }, nil?: true

        # @!method initialize(alias_: nil, state: nil)
        #   @param alias_ [String, nil]
        #   @param state [Symbol, FirecrackerManager::Models::API::VmPatchRequest::State, nil]

        # @see FirecrackerManager::Models::API::VmPatchRequest#state
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
