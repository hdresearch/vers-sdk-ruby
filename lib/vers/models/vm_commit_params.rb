# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#commit
    class VmCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
