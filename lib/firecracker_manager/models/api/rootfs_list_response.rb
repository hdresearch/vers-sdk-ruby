# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class RootfsListResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute rootfs_names
        #
        #   @return [Array<String>]
        required :rootfs_names, FirecrackerManager::Internal::Type::ArrayOf[String]

        # @!method initialize(rootfs_names:)
        #   @param rootfs_names [Array<String>]
      end
    end
  end
end
