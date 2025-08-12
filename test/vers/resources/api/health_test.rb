# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::API::HealthTest < Vers::Test::ResourceTest
  def test_check
    skip("Prism tests are disabled")

    response = @vers.api.health.check

    assert_pattern do
      response => String
    end
  end
end
