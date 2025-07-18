# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Telemetry#get_info
      class TelemetryDto < Vers::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute fs_mib_current
        #
        #   @return [Integer]
        required :fs_mib_current, Integer

        # @!attribute fs_mib_max
        #
        #   @return [Integer]
        required :fs_mib_max, Integer

        # @!attribute mem_mib_current
        #
        #   @return [Integer]
        required :mem_mib_current, Integer

        # @!attribute mem_mib_max
        #
        #   @return [Integer]
        required :mem_mib_max, Integer

        # @!attribute vcpu_current
        #
        #   @return [Integer]
        required :vcpu_current, Integer

        # @!attribute vcpu_max
        #
        #   @return [Integer]
        required :vcpu_max, Integer

        # @!attribute vm_network_count_in_use
        #
        #   @return [Integer]
        required :vm_network_count_in_use, Integer

        # @!attribute vm_network_count_total
        #
        #   @return [Integer]
        required :vm_network_count_total, Integer

        # @!method initialize(id:, fs_mib_current:, fs_mib_max:, mem_mib_current:, mem_mib_max:, vcpu_current:, vcpu_max:, vm_network_count_in_use:, vm_network_count_total:)
        #   @param id [String]
        #   @param fs_mib_current [Integer]
        #   @param fs_mib_max [Integer]
        #   @param mem_mib_current [Integer]
        #   @param mem_mib_max [Integer]
        #   @param vcpu_current [Integer]
        #   @param vcpu_max [Integer]
        #   @param vm_network_count_in_use [Integer]
        #   @param vm_network_count_total [Integer]
      end
    end
  end
end
