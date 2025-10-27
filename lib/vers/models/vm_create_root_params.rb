# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#create_root
    class VmCreateRootParams < Vers::Models::NewRootRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
