# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Rootfs#delete
      class RootfDeleteParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
