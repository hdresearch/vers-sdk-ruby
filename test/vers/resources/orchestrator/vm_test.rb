# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::Orchestrator::VmTest < Vers::Test::ResourceTest
  def test_delete
    skip("Prism tests are disabled")

    response = @vers.orchestrator.vm.delete("vm_id")

    assert_pattern do
      response => Vers::Orchestrator::VmDeleteResponse
    end

    assert_pattern do
      response => {
        deleted_ids: ^(Vers::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_branch
    skip("Prism tests are disabled")

    response = @vers.orchestrator.vm.branch("vm_id")

    assert_pattern do
      response => Vers::Orchestrator::NewVmResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_commit
    skip("Prism tests are disabled")

    response = @vers.orchestrator.vm.commit("vm_id")

    assert_pattern do
      response => Vers::Orchestrator::VmCommitResponse
    end

    assert_pattern do
      response => {
        commit_id: String,
        host_architecture: String
      }
    end
  end

  def test_create_root_required_params
    skip("Prism tests are disabled")

    response = @vers.orchestrator.vm.create_root(vm_config: {})

    assert_pattern do
      response => Vers::Orchestrator::NewVmResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_restore_from_commit_required_params
    skip("Prism tests are disabled")

    response = @vers.orchestrator.vm.restore_from_commit(commit_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Vers::Orchestrator::NewVmResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_update_state_required_params
    skip("Prism tests are disabled")

    response = @vers.orchestrator.vm.update_state("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", state: :Paused)

    assert_pattern do
      response => nil
    end
  end
end
