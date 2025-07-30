# frozen_string_literal: true

module FirecrackerManager
  module Resources
    class API
      class Rootfs
        # List all available rootfs names on the server.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::RootfListResponse]
        #
        # @see FirecrackerManager::Models::API::RootfListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "api/rootfs",
            model: FirecrackerManager::Models::API::RootfListResponse,
            options: params[:request_options]
          )
        end

        # Delete an existing rootfs from the server.
        #
        # @overload delete(rootfs_id, request_options: {})
        #
        # @param rootfs_id [String] Identifier for the rootfs to delete
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::RootfDeleteResponse]
        #
        # @see FirecrackerManager::Models::API::RootfDeleteParams
        def delete(rootfs_id, params = {})
          @client.request(
            method: :delete,
            path: ["api/rootfs/%1$s", rootfs_id],
            model: FirecrackerManager::Models::API::RootfDeleteResponse,
            options: params[:request_options]
          )
        end

        # Upload a rootfs tar archive to the server. The archive should contain the
        # Dockerfile and all necessary dependencies.
        #
        # @overload upload(rootfs_id, dockerfile: nil, request_options: {})
        #
        # @param rootfs_id [String] Identifier for the rootfs to create or update
        #
        # @param dockerfile [String] The path of the Dockerfile contained within the tar archive
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::RootfUploadResponse]
        #
        # @see FirecrackerManager::Models::API::RootfUploadParams
        def upload(rootfs_id, params = {})
          parsed, options = FirecrackerManager::API::RootfUploadParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["api/rootfs/%1$s", rootfs_id],
            query: parsed,
            model: FirecrackerManager::Models::API::RootfUploadResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [FirecrackerManager::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
