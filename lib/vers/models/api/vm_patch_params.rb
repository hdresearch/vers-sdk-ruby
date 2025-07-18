# frozen_string_literal: true

module Vers
  module Models
    module API
      class VmPatchParams < Vers::Internal::Type::BaseModel
        # @!attribute alias_
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias, nil?: true

        # @!attribute state
        #
        #   @return [Symbol, Vers::Models::API::VmPatchParams::State, nil]
        optional :state, enum: -> { Vers::API::VmPatchParams::State }, nil?: true

        # @!method initialize(alias_: nil, state: nil)
        #   @param alias_ [String, nil]
        #   @param state [Symbol, Vers::Models::API::VmPatchParams::State, nil]

        # @see Vers::Models::API::VmPatchParams#state
        module State
          extend Vers::Internal::Type::Enum

          RUNNING = :Running
          PAUSED = :Paused

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
