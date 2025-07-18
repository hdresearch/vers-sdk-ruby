# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Rootfs#upload
      class RootfUploadParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        # @!attribute dockerfile
        #   The path of the Dockerfile contained within the tar archive
        #
        #   @return [String, nil]
        optional :dockerfile, String

        # @!method initialize(dockerfile: nil, request_options: {})
        #   @param dockerfile [String] The path of the Dockerfile contained within the tar archive
        #
        #   @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
