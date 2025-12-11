# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#commit
    class VmCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute keep_paused
      #   If true, keep VM paused after commit
      #
      #   @return [Boolean, nil]
      optional :keep_paused, Vers::Internal::Type::Boolean

      # @!attribute skip_wait_boot
      #   If true, return an error immediately if the VM is still booting. Default: false
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean

      # @!method initialize(keep_paused: nil, skip_wait_boot: nil, request_options: {})
      #   @param keep_paused [Boolean] If true, keep VM paused after commit
      #
      #   @param skip_wait_boot [Boolean] If true, return an error immediately if the VM is still booting. Default: false
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
