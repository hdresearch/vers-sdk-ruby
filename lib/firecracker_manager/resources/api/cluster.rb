# frozen_string_literal: true

module FirecrackerManager
  module Resources
    class API
      class Cluster
        # Create a new cluster.
        #
        # @overload create(cluster_create_params:, request_options: {})
        #
        # @param cluster_create_params [FirecrackerManager::API::ClusterCreateParams]
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::ClusterCreateResponse]
        #
        # @see FirecrackerManager::Models::API::ClusterCreateParams
        def create(params)
          parsed, options = FirecrackerManager::API::ClusterCreateParams.dump_request(params)
          case parsed
          in {cluster_create_params: Hash => union, **rest}
            parsed = {**rest, **union}
          else
          end
          @client.request(
            method: :post,
            path: "api/cluster",
            body: parsed,
            model: FirecrackerManager::Models::API::ClusterCreateResponse,
            options: options
          )
        end

        # Retrieve information on a particular cluster.
        #
        # @overload retrieve(cluster_id_or_alias, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::ClusterRetrieveResponse]
        #
        # @see FirecrackerManager::Models::API::ClusterRetrieveParams
        def retrieve(cluster_id_or_alias, params = {})
          @client.request(
            method: :get,
            path: ["api/cluster/%1$s", cluster_id_or_alias],
            model: FirecrackerManager::Models::API::ClusterRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update a cluster's configuration
        #
        # @overload update(cluster_id_or_alias, alias_: nil, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param alias_ [String, nil]
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::ClusterUpdateResponse]
        #
        # @see FirecrackerManager::Models::API::ClusterUpdateParams
        def update(cluster_id_or_alias, params = {})
          parsed, options = FirecrackerManager::API::ClusterUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/cluster/%1$s", cluster_id_or_alias],
            body: parsed,
            model: FirecrackerManager::Models::API::ClusterUpdateResponse,
            options: options
          )
        end

        # List all clusters.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::ClusterListResponse]
        #
        # @see FirecrackerManager::Models::API::ClusterListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "api/cluster",
            model: FirecrackerManager::Models::API::ClusterListResponse,
            options: params[:request_options]
          )
        end

        # Delete a cluster.
        #
        # @overload delete(cluster_id_or_alias, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::ClusterDeleteResponse]
        #
        # @see FirecrackerManager::Models::API::ClusterDeleteParams
        def delete(cluster_id_or_alias, params = {})
          @client.request(
            method: :delete,
            path: ["api/cluster/%1$s", cluster_id_or_alias],
            model: FirecrackerManager::Models::API::ClusterDeleteResponse,
            options: params[:request_options]
          )
        end

        # Get the SSH private key for VM access
        #
        # @overload get_ssh_key(cluster_id_or_alias, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::ClusterGetSSHKeyResponse]
        #
        # @see FirecrackerManager::Models::API::ClusterGetSSHKeyParams
        def get_ssh_key(cluster_id_or_alias, params = {})
          @client.request(
            method: :get,
            path: ["api/cluster/%1$s/ssh_key", cluster_id_or_alias],
            model: FirecrackerManager::Models::API::ClusterGetSSHKeyResponse,
            options: params[:request_options]
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
