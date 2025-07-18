# frozen_string_literal: true

require_relative "../../test_helper"

class FirecrackerManager::Test::Resources::API::VmTest < FirecrackerManager::Test::ResourceTest
  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.retrieve("vm_id_or_alias")

    assert_pattern do
      response => FirecrackerManager::Models::API::VmRetrieveResponse
    end

    assert_pattern do
      response => {
        data: FirecrackerManager::Models::API::VmRetrieveResponse::Data,
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmRetrieveResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_update
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.update("vm_id_or_alias")

    assert_pattern do
      response => FirecrackerManager::Models::API::VmUpdateResponse
    end

    assert_pattern do
      response => {
        data: FirecrackerManager::Models::API::VmUpdateResponse::Data,
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmUpdateResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.list

    assert_pattern do
      response => FirecrackerManager::Models::API::VmListResponse
    end

    assert_pattern do
      response => {
        data: ^(FirecrackerManager::Internal::Type::ArrayOf[FirecrackerManager::Models::API::VmListResponse::Data]),
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmListResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.delete("vm_id_or_alias", recursive: true)

    assert_pattern do
      response => FirecrackerManager::Models::API::VmDeleteResponse
    end

    assert_pattern do
      response => {
        data: FirecrackerManager::Models::API::VmDeleteResponse::Data,
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmDeleteResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_branch
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.branch("vm_id_or_alias")

    assert_pattern do
      response => FirecrackerManager::Models::API::VmBranchResponse
    end

    assert_pattern do
      response => {
        data: FirecrackerManager::Models::API::VmBranchResponse::Data,
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmBranchResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_commit
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.commit("vm_id_or_alias")

    assert_pattern do
      response => FirecrackerManager::Models::API::VmCommitResponse
    end

    assert_pattern do
      response => {
        data: FirecrackerManager::Models::API::VmCommitResponse::Data,
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmCommitResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_get_ssh_key
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.vm.get_ssh_key("vm_id_or_alias")

    assert_pattern do
      response => FirecrackerManager::Models::API::VmGetSSHKeyResponse
    end

    assert_pattern do
      response => {
        data: String,
        duration_ns: Integer,
        operation_code: FirecrackerManager::Models::API::VmGetSSHKeyResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end
end
