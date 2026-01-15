# frozen_string_literal: true

require_relative "../test_helper"

class Vers::Test::Resources::VmTest < Vers::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vers.vm.list

    assert_pattern do
      response => ^(Vers::Internal::Type::ArrayOf[Vers::VmAPI])
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @vers.vm.delete("vm_id")

    assert_pattern do
      response => Vers::VmDeleteResponse
    end

    assert_pattern do
      response => {
        vm_id: String
      }
    end
  end

  def test_commit
    skip("Prism tests are disabled")

    response = @vers.vm.commit("vm_id")

    assert_pattern do
      response => Vers::VmCommitResponse
    end

    assert_pattern do
      response => {
        commit_id: String
      }
    end
  end

  def test_create_root_required_params
    skip("Prism tests are disabled")

    response = @vers.vm.create_root(vm_config: {})

    assert_pattern do
      response => Vers::NewVmResponse
    end

    assert_pattern do
      response => {
        vm_id: String
      }
    end
  end

  def test_get_ssh_key
    skip("Prism tests are disabled")

    response = @vers.vm.get_ssh_key("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Vers::VmSSHKeyResponse
    end

    assert_pattern do
      response => {
        ssh_port: Integer,
        ssh_private_key: String
      }
    end
  end

  def test_restore_from_commit_required_params
    skip("Prism tests are disabled")

    response = @vers.vm.restore_from_commit(commit_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Vers::NewVmResponse
    end

    assert_pattern do
      response => {
        vm_id: String
      }
    end
  end

  def test_status
    skip("Prism tests are disabled")

    response = @vers.vm.status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Vers::VmAPI
    end

    assert_pattern do
      response => {
        created_at: Time,
        owner_id: String,
        state: Vers::VmAPI::State,
        vm_id: String
      }
    end
  end

  def test_update_state_required_params
    skip("Prism tests are disabled")

    response = @vers.vm.update_state("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", state: :Paused)

    assert_pattern do
      response => nil
    end
  end
end
