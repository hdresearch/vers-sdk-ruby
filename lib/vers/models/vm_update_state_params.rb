# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#update_state
    class VmUpdateStateParams < Vers::Models::VmUpdateStateRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute skip_wait_boot
      #   If true, error immediately if the VM is not finished booting. Defaults to false
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean

      # @!method initialize(vm_id:, skip_wait_boot: nil, request_options: {})
      #   @param vm_id [String]
      #
      #   @param skip_wait_boot [Boolean] If true, error immediately if the VM is not finished booting. Defaults to false
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
