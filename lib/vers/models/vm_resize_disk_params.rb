# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#resize_disk
    class VmResizeDiskParams < Vers::Models::VmResizeDiskRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute skip_wait_boot
      #   If true, return an error immediately if the VM is still booting. Default: false
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean

      # @!method initialize(vm_id:, skip_wait_boot: nil, request_options: {})
      #   @param vm_id [String]
      #
      #   @param skip_wait_boot [Boolean] If true, return an error immediately if the VM is still booting. Default: false
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
