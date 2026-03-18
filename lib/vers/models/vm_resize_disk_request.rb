# frozen_string_literal: true

module Vers
  module Models
    class VmResizeDiskRequest < Vers::Internal::Type::BaseModel
      # @!attribute fs_size_mib
      #   The new disk size in MiB. Must be strictly greater than the current size.
      #
      #   @return [Integer]
      required :fs_size_mib, Integer

      # @!method initialize(fs_size_mib:)
      #   Request body for PATCH /api/vm/{vm_id}/disk
      #
      #   @param fs_size_mib [Integer] The new disk size in MiB. Must be strictly greater than the current size.
    end
  end
end
