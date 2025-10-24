# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Node#list_vms
      class NodeListVmsParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
