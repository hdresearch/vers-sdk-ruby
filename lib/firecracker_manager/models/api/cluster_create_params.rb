# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Cluster#create
      class ClusterCreateParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        # @!attribute cluster_create_params
        #
        #   @return [FirecrackerManager::Models::API::ClusterCreateParams::NewClusterParams, FirecrackerManager::Models::API::ClusterCreateParams::ClusterFromCommitParams]
        required :cluster_create_params, union: -> { FirecrackerManager::API::ClusterCreateParams }

        # @!method initialize(cluster_create_params:, request_options: {})
        #   @param cluster_create_params [FirecrackerManager::Models::API::ClusterCreateParams::NewClusterParams, FirecrackerManager::Models::API::ClusterCreateParams::ClusterFromCommitParams]
        #   @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
