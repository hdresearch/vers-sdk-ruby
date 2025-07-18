# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::API::HealthTest < Vers::Test::ResourceTest
  def test_check
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.health.check

    assert_pattern do
      response => String
    end
  end
end
