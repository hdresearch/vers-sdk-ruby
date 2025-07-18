# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      # @see FirecrackerManager::Resources::API::Vm#delete
      class VmDeleteParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        # @!attribute recursive
        #   Delete children recursively
        #
        #   @return [Boolean]
        required :recursive, FirecrackerManager::Internal::Type::Boolean

        # @!method initialize(recursive:, request_options: {})
        #   @param recursive [Boolean] Delete children recursively
        #
        #   @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
