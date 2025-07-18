# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Vm#branch
      class VmBranchParams < FirecrackerManager::Models::API::VmBranchParams
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
