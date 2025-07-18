# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class RootfsDeleteResponse < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute rootfs_name
        #
        #   @return [String]
        required :rootfs_name, String

        # @!method initialize(rootfs_name:)
        #   @param rootfs_name [String]
      end
    end
  end
end
