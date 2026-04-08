# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#exec_stream
    class VmExecStreamParams < Vers::Models::VmExecRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!method initialize(vm_id:, request_options: {})
      #   @param vm_id [String]
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
