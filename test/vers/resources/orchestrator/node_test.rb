# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::Orchestrator::NodeTest < Vers::Test::ResourceTest
  def test_list_vms
    skip("Prism tests are disabled")

    response = @vers.orchestrator.node.list_vms("node_id")

    assert_pattern do
      response => Vers::Orchestrator::VmListAllResponse
    end

    assert_pattern do
      response => {
        vms: ^(Vers::Internal::Type::ArrayOf[Vers::Orchestrator::VmListAllResponse::Vm])
      }
    end
  end
end
