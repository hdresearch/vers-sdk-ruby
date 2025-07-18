# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Vm#update
      class VmUpdateParams < FirecrackerManager::Models::API::VmPatchParams
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
