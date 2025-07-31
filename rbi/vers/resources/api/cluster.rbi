# typed: strong

module Vers
  module Resources
    class API
      class Cluster
        # Create a new cluster.
        sig do
          params(
            cluster_create_params: Vers::API::ClusterCreateParams,
            request_options: Vers::RequestOptions::OrHash
          ).returns(Vers::Models::API::ClusterCreateResponse)
        end
        def create(cluster_create_params:, request_options: {})
        end

        # Retrieve information on a particular cluster.
        sig do
          params(
            cluster_id_or_alias: String,
            request_options: Vers::RequestOptions::OrHash
          ).returns(Vers::Models::API::ClusterRetrieveResponse)
        end
        def retrieve(
          # Unique cluster identifier
          cluster_id_or_alias,
          request_options: {}
        )
        end

        # Update a cluster's configuration
        sig do
          params(
            cluster_id_or_alias: String,
            alias_: T.nilable(String),
            request_options: Vers::RequestOptions::OrHash
          ).returns(Vers::Models::API::ClusterUpdateResponse)
        end
        def update(
          # Unique cluster identifier
          cluster_id_or_alias,
          alias_: nil,
          request_options: {}
        )
        end

        # List all clusters.
        sig do
          params(request_options: Vers::RequestOptions::OrHash).returns(
            Vers::Models::API::ClusterListResponse
          )
        end
        def list(request_options: {})
        end

        # Delete a cluster.
        sig do
          params(
            cluster_id_or_alias: String,
            request_options: Vers::RequestOptions::OrHash
          ).returns(Vers::Models::API::ClusterDeleteResponse)
        end
        def delete(
          # Unique cluster identifier
          cluster_id_or_alias,
          request_options: {}
        )
        end

        # Get the SSH private key for VM access
        sig do
          params(
            cluster_id_or_alias: String,
            request_options: Vers::RequestOptions::OrHash
          ).returns(Vers::Models::API::ClusterGetSSHKeyResponse)
        end
        def get_ssh_key(
          # Unique cluster identifier
          cluster_id_or_alias,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Vers::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
