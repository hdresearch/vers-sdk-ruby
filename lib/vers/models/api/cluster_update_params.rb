# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Cluster#update
      class ClusterUpdateParams < Vers::Models::API::ClusterPatchParams
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
