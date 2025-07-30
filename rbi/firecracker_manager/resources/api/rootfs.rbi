# typed: strong

module FirecrackerManager
  module Resources
    class API
      class Rootfs
        # List all available rootfs names on the server.
        sig do
          params(
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::RootfListResponse)
        end
        def list(request_options: {})
        end

        # Delete an existing rootfs from the server.
        sig do
          params(
            rootfs_id: String,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::RootfDeleteResponse)
        end
        def delete(
          # Identifier for the rootfs to delete
          rootfs_id,
          request_options: {}
        )
        end

        # Upload a rootfs tar archive to the server. The archive should contain the
        # Dockerfile and all necessary dependencies.
        sig do
          params(
            rootfs_id: String,
            dockerfile: String,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::RootfUploadResponse)
        end
        def upload(
          # Identifier for the rootfs to create or update
          rootfs_id,
          # The path of the Dockerfile contained within the tar archive
          dockerfile: nil,
          request_options: {}
        )
        end

        # @api private
        sig do
          params(client: FirecrackerManager::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
