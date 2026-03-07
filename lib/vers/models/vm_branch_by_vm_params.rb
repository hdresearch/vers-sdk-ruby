# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#branch_by_vm
    class VmBranchByVmParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute count
      #   Number of VMs to branch (optional; default 1)
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!attribute keep_paused
      #   If true, keep VM paused after commit
      #
      #   @return [Boolean, nil]
      optional :keep_paused, Vers::Internal::Type::Boolean

      # @!attribute skip_wait_boot
      #   If true, immediately return an error if VM is booting instead of waiting
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean

      # @!method initialize(vm_id:, count: nil, keep_paused: nil, skip_wait_boot: nil, request_options: {})
      #   @param vm_id [String]
      #
      #   @param count [Integer] Number of VMs to branch (optional; default 1)
      #
      #   @param keep_paused [Boolean] If true, keep VM paused after commit
      #
      #   @param skip_wait_boot [Boolean] If true, immediately return an error if VM is booting instead of waiting
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
