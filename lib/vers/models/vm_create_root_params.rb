# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#create_root
    class VmCreateRootParams < Vers::Models::NewRootRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute wait_boot
      #   If true, wait for the newly-created VM to finish booting before returning.
      #   Default: false.
      #
      #   @return [Boolean, nil]
      optional :wait_boot, Vers::Internal::Type::Boolean

      # @!method initialize(wait_boot: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::VmCreateRootParams} for more details.
      #
      #   @param wait_boot [Boolean] If true, wait for the newly-created VM to finish booting before returning. Defau
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
