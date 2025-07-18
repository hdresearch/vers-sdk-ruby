# frozen_string_literal: true

module Vers
  module Models
    module API
      # @see Vers::Resources::API::Rootfs#upload
      class RootfUploadParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        # @!attribute dockerfile
        #   The path of the Dockerfile contained within the tar archive
        #
        #   @return [String, nil]
        optional :dockerfile, String

        # @!method initialize(dockerfile: nil, request_options: {})
        #   @param dockerfile [String] The path of the Dockerfile contained within the tar archive
        #
        #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
