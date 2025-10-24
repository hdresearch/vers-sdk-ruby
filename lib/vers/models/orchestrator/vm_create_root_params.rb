# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Vm#create_root
      class VmCreateRootParams < Vers::Models::Orchestrator::NewRootRequest
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
