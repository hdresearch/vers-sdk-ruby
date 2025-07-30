# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class VmCommitRequest < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, FirecrackerManager::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(tags: nil)
        #   @param tags [Array<String>, nil]
      end
    end
  end
end
