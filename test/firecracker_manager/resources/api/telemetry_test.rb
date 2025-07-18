# frozen_string_literal: true

require_relative "../../test_helper"

class FirecrackerManager::Test::Resources::API::TelemetryTest < FirecrackerManager::Test::ResourceTest
  def test_get_info
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.telemetry.get_info

    assert_pattern do
      response => FirecrackerManager::API::TelemetryDto
    end

    assert_pattern do
      response => {
        id: String,
        fs_mib_current: Integer,
        fs_mib_max: Integer,
        mem_mib_current: Integer,
        mem_mib_max: Integer,
        vcpu_current: Integer,
        vcpu_max: Integer,
        vm_network_count_in_use: Integer,
        vm_network_count_total: Integer
      }
    end
  end
end
