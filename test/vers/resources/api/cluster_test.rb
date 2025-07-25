# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::API::ClusterTest < Vers::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.cluster.create(cluster_type: :new, params: {})

    assert_pattern do
      response => Vers::Models::API::ClusterCreateResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::ClusterCreateResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::ClusterCreateResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.cluster.retrieve("cluster_id_or_alias")

    assert_pattern do
      response => Vers::Models::API::ClusterRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::ClusterRetrieveResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::ClusterRetrieveResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_update
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.cluster.update("cluster_id_or_alias")

    assert_pattern do
      response => Vers::Models::API::ClusterUpdateResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::ClusterUpdateResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::ClusterUpdateResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.cluster.list

    assert_pattern do
      response => Vers::Models::API::ClusterListResponse
    end

    assert_pattern do
      response => {
        data: ^(Vers::Internal::Type::ArrayOf[Vers::Models::API::ClusterListResponse::Data]),
        duration_ns: Integer,
        operation_code: Vers::Models::API::ClusterListResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_delete
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.cluster.delete("cluster_id_or_alias")

    assert_pattern do
      response => Vers::Models::API::ClusterDeleteResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::ClusterDeleteResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::ClusterDeleteResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_get_ssh_key
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.cluster.get_ssh_key("cluster_id_or_alias")

    assert_pattern do
      response => Vers::Models::API::ClusterGetSSHKeyResponse
    end

    assert_pattern do
      response => {
        data: String,
        duration_ns: Integer,
        operation_code: Vers::Models::API::ClusterGetSSHKeyResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end
end
