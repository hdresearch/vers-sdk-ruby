# frozen_string_literal: true

require_relative "../../test_helper"

class Vers::Test::Resources::API::RootfsTest < Vers::Test::ResourceTest
  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.rootfs.list

    assert_pattern do
      response => Vers::Models::API::RootfListResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::RootfListResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::RootfListResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_delete
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.rootfs.delete("rootfs_id")

    assert_pattern do
      response => Vers::Models::API::RootfDeleteResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::RootfDeleteResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::RootfDeleteResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end

  def test_upload
    skip("skipped: tests are disabled for the time being")

    response = @vers.api.rootfs.upload("rootfs_id")

    assert_pattern do
      response => Vers::Models::API::RootfUploadResponse
    end

    assert_pattern do
      response => {
        data: Vers::Models::API::RootfUploadResponse::Data,
        duration_ns: Integer,
        operation_code: Vers::Models::API::RootfUploadResponse::OperationCode,
        operation_id: String,
        time_start: Integer
      }
    end
  end
end
