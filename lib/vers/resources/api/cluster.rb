# frozen_string_literal: true

module Vers
  module Resources
    class API
      class Cluster
        # Create a new cluster.
        #
        # @overload create(cluster_create_params:, request_options: {})
        #
        # @param cluster_create_params [Vers::API::ClusterCreateParams]
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::ClusterCreateResponse]
        #
        # @see Vers::Models::API::ClusterCreateParams
        def create(params)
          parsed, options = Vers::API::ClusterCreateParams.dump_request(params)
          case parsed
          in {cluster_create_params: Hash => union, **rest}
            parsed = {**rest, **union}
          else
          end
          @client.request(
            method: :post,
            path: "api/cluster",
            body: parsed,
            model: Vers::Models::API::ClusterCreateResponse,
            options: options
          )
        end

        # Retrieve information on a particular cluster.
        #
        # @overload retrieve(cluster_id_or_alias, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::ClusterRetrieveResponse]
        #
        # @see Vers::Models::API::ClusterRetrieveParams
        def retrieve(cluster_id_or_alias, params = {})
          @client.request(
            method: :get,
            path: ["api/cluster/%1$s", cluster_id_or_alias],
            model: Vers::Models::API::ClusterRetrieveResponse,
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
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::ClusterUpdateResponse]
        #
        # @see Vers::Models::API::ClusterUpdateParams
        def update(cluster_id_or_alias, params = {})
          parsed, options = Vers::API::ClusterUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/cluster/%1$s", cluster_id_or_alias],
            body: parsed,
            model: Vers::Models::API::ClusterUpdateResponse,
            options: options
          )
        end

        # List all clusters.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::ClusterListResponse]
        #
        # @see Vers::Models::API::ClusterListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "api/cluster",
            model: Vers::Models::API::ClusterListResponse,
            options: params[:request_options]
          )
        end

        # Delete a cluster.
        #
        # @overload delete(cluster_id_or_alias, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::ClusterDeleteResponse]
        #
        # @see Vers::Models::API::ClusterDeleteParams
        def delete(cluster_id_or_alias, params = {})
          @client.request(
            method: :delete,
            path: ["api/cluster/%1$s", cluster_id_or_alias],
            model: Vers::Models::API::ClusterDeleteResponse,
            options: params[:request_options]
          )
        end

        # Get the SSH private key for VM access
        #
        # @overload get_ssh_key(cluster_id_or_alias, request_options: {})
        #
        # @param cluster_id_or_alias [String] Unique cluster identifier
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::ClusterGetSSHKeyResponse]
        #
        # @see Vers::Models::API::ClusterGetSSHKeyParams
        def get_ssh_key(cluster_id_or_alias, params = {})
          @client.request(
            method: :get,
            path: ["api/cluster/%1$s/ssh_key", cluster_id_or_alias],
            model: Vers::Models::API::ClusterGetSSHKeyResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Vers::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
