# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Vm#branch
      class NewVmResponse < Vers::Internal::Type::BaseModel
        # @!attribute id
        #   The VM ID, a (v4) UUID
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String] The VM ID, a (v4) UUID
      end
    end
  end
end
