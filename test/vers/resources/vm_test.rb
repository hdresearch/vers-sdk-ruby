# frozen_string_literal: true

require_relative "../test_helper"

class Vers::Test::Resources::VmTest < Vers::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @vers.vm.list

    assert_pattern do
      response => ^(Vers::Internal::Type::ArrayOf[Vers::VmAPI])
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

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

  def test_branch
    skip("Mock server tests are disabled")

    response = @vers.vm.branch("vm_or_commit_id")

    assert_pattern do
      response => Vers::NewVmsResponse
    end

    assert_pattern do
      response => {
        vms: ^(Vers::Internal::Type::ArrayOf[Vers::NewVmResponse])
      }
    end
  end

  def test_branch_by_commit
    skip("Mock server tests are disabled")

    response = @vers.vm.branch_by_commit("commit_id")

    assert_pattern do
      response => Vers::NewVmsResponse
    end

    assert_pattern do
      response => {
        vms: ^(Vers::Internal::Type::ArrayOf[Vers::NewVmResponse])
      }
    end
  end

  def test_branch_by_tag
    skip("Mock server tests are disabled")

    response = @vers.vm.branch_by_tag("tag_name")

    assert_pattern do
      response => Vers::NewVmsResponse
    end

    assert_pattern do
      response => {
        vms: ^(Vers::Internal::Type::ArrayOf[Vers::NewVmResponse])
      }
    end
  end

  def test_branch_by_vm
    skip("Mock server tests are disabled")

    response = @vers.vm.branch_by_vm("vm_id")

    assert_pattern do
      response => Vers::NewVmsResponse
    end

    assert_pattern do
      response => {
        vms: ^(Vers::Internal::Type::ArrayOf[Vers::NewVmResponse])
      }
    end
  end

  def test_commit
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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

  def test_exec__required_params
    skip("Mock server tests are disabled")

    response = @vers.vm.exec_("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", command: ["string"])

    assert_pattern do
      response => Vers::VmExecResponse
    end

    assert_pattern do
      response => {
        exit_code: Integer,
        stderr: String,
        stdout: String,
        exec_id: String | nil
      }
    end
  end

  def test_exec_stream_required_params
    skip("Mock server tests are disabled")

    response = @vers.vm.exec_stream("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", command: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_exec_stream_attach_required_params
    skip("Mock server tests are disabled")

    response =
      @vers.vm.exec_stream_attach(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        exec_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_logs
    skip("Mock server tests are disabled")

    response = @vers.vm.get_logs("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Vers::VmExecLogResponse
    end

    assert_pattern do
      response => {
        entries: ^(Vers::Internal::Type::ArrayOf[Vers::VmExecLogResponse::Entry]),
        eof: Vers::Internal::Type::Boolean,
        next_offset: Integer
      }
    end
  end

  def test_get_metadata
    skip("Mock server tests are disabled")

    response = @vers.vm.get_metadata("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Vers::VmMetadataResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        ip: String,
        owner_id: String,
        state: Vers::VmMetadataResponse::State,
        vm_id: String,
        deleted_at: Time | nil,
        grandparent_vm_id: String | nil,
        parent_commit_id: String | nil
      }
    end
  end

  def test_get_ssh_key
    skip("Mock server tests are disabled")

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

  def test_resize_disk_required_params
    skip("Mock server tests are disabled")

    response = @vers.vm.resize_disk("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", fs_size_mib: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_restore_from_commit_required_params
    skip("Mock server tests are disabled")

    response =
      @vers.vm.restore_from_commit(vm_from_commit_request: {commit_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"})

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
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @vers.vm.update_state("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", state: :Paused)

    assert_pattern do
      response => nil
    end
  end
end
