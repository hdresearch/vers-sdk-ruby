# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#branch
    class VmBranchParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_or_commit_id
      #
      #   @return [String]
      required :vm_or_commit_id, String

      # @!attribute count
      #   Number of VMs to branch (optional; default 1)
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!attribute keep_paused
      #   If true, keep VM paused after commit. Only applicable when branching a VM ID.
      #
      #   @return [Boolean, nil]
      optional :keep_paused, Vers::Internal::Type::Boolean

      # @!attribute skip_wait_boot
      #   If true, immediately return an error if VM is booting instead of waiting. Only
      #   applicable when branching a VM ID.
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean

      # @!method initialize(vm_or_commit_id:, count: nil, keep_paused: nil, skip_wait_boot: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::VmBranchParams} for more details.
      #
      #   @param vm_or_commit_id [String]
      #
      #   @param count [Integer] Number of VMs to branch (optional; default 1)
      #
      #   @param keep_paused [Boolean] If true, keep VM paused after commit. Only applicable when branching a VM ID.
      #
      #   @param skip_wait_boot [Boolean] If true, immediately return an error if VM is booting instead of waiting. Only a
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
