# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::API::TelemetryTest < Vers::Test::ResourceTest
  def test_get_info
    skip("Prism tests are disabled")

    response = @vers.api.telemetry.get_info

    assert_pattern do
      response => Vers::API::TelemetryDto
    end

    assert_pattern do
      response => {
        id: String,
        cpu_cores_available: Integer,
        cpu_cores_margin: Integer,
        cpu_cores_total: Integer,
        cpu_cores_used: Integer,
        disk_data_mib_available: Integer,
        disk_data_mib_total: Integer,
        disk_vm_mib_available: Integer,
        disk_vm_mib_total: Integer,
        memory_mib_available: Integer,
        memory_mib_margin: Integer,
        memory_mib_total: Integer,
        memory_mib_used: Integer,
        vm_network_count_in_use: Integer,
        vm_network_count_total: Integer
      }
    end
  end
end
