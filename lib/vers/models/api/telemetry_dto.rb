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

        # @!attribute cpu_cores_available
        #
        #   @return [Integer]
        required :cpu_cores_available, Integer

        # @!attribute cpu_cores_margin
        #
        #   @return [Integer]
        required :cpu_cores_margin, Integer

        # @!attribute cpu_cores_total
        #
        #   @return [Integer]
        required :cpu_cores_total, Integer

        # @!attribute cpu_cores_used
        #
        #   @return [Integer]
        required :cpu_cores_used, Integer

        # @!attribute disk_data_mib_available
        #
        #   @return [Integer]
        required :disk_data_mib_available, Integer

        # @!attribute disk_data_mib_total
        #
        #   @return [Integer]
        required :disk_data_mib_total, Integer

        # @!attribute disk_vm_mib_available
        #
        #   @return [Integer]
        required :disk_vm_mib_available, Integer

        # @!attribute disk_vm_mib_total
        #
        #   @return [Integer]
        required :disk_vm_mib_total, Integer

        # @!attribute memory_mib_available
        #
        #   @return [Integer]
        required :memory_mib_available, Integer

        # @!attribute memory_mib_margin
        #
        #   @return [Integer]
        required :memory_mib_margin, Integer

        # @!attribute memory_mib_total
        #
        #   @return [Integer]
        required :memory_mib_total, Integer

        # @!attribute memory_mib_used
        #
        #   @return [Integer]
        required :memory_mib_used, Integer

        # @!attribute vm_network_count_in_use
        #
        #   @return [Integer]
        required :vm_network_count_in_use, Integer

        # @!attribute vm_network_count_total
        #
        #   @return [Integer]
        required :vm_network_count_total, Integer

        # @!method initialize(id:, cpu_cores_available:, cpu_cores_margin:, cpu_cores_total:, cpu_cores_used:, disk_data_mib_available:, disk_data_mib_total:, disk_vm_mib_available:, disk_vm_mib_total:, memory_mib_available:, memory_mib_margin:, memory_mib_total:, memory_mib_used:, vm_network_count_in_use:, vm_network_count_total:)
        #   @param id [String]
        #   @param cpu_cores_available [Integer]
        #   @param cpu_cores_margin [Integer]
        #   @param cpu_cores_total [Integer]
        #   @param cpu_cores_used [Integer]
        #   @param disk_data_mib_available [Integer]
        #   @param disk_data_mib_total [Integer]
        #   @param disk_vm_mib_available [Integer]
        #   @param disk_vm_mib_total [Integer]
        #   @param memory_mib_available [Integer]
        #   @param memory_mib_margin [Integer]
        #   @param memory_mib_total [Integer]
        #   @param memory_mib_used [Integer]
        #   @param vm_network_count_in_use [Integer]
        #   @param vm_network_count_total [Integer]
      end
    end
  end
end
