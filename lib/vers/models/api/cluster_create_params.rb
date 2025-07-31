# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Cluster#create
      class ClusterCreateParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!attribute cluster_create_params
        #
        #   @return [Vers::Models::API::ClusterCreateParams::NewClusterParams, Vers::Models::API::ClusterCreateParams::ClusterFromCommitParams]
        required :cluster_create_params, union: -> { Vers::API::ClusterCreateParams }

        # @!method initialize(cluster_create_params:, request_options: {})
        #   @param cluster_create_params [Vers::Models::API::ClusterCreateParams::NewClusterParams, Vers::Models::API::ClusterCreateParams::ClusterFromCommitParams]
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
