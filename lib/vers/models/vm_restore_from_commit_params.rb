# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#restore_from_commit
    class VmRestoreFromCommitParams < Vers::Models::VmFromCommitRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
