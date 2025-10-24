# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Vm#restore_from_commit
      class VmRestoreFromCommitParams < Vers::Models::Orchestrator::VmFromCommitRequest
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
