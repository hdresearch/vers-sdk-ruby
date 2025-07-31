# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Cluster#create
      class ClusterCreateParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!attribute cluster_create_request
        #
        #   @return [Vers::Models::API::ClusterCreateRequest::NewClusterParams, Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams]
        required :cluster_create_request, union: -> { Vers::API::ClusterCreateRequest }

        # @!method initialize(cluster_create_request:, request_options: {})
        #   @param cluster_create_request [Vers::Models::API::ClusterCreateRequest::NewClusterParams, Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams]
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
