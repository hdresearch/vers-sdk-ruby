# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Vm#delete
      class VmDeleteParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!attribute recursive
        #   Delete children recursively
        #
        #   @return [Boolean]
        required :recursive, Vers::Internal::Type::Boolean

        # @!method initialize(recursive:, request_options: {})
        #   @param recursive [Boolean] Delete children recursively
        #
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
