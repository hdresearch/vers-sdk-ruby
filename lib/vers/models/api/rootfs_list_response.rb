# frozen_string_literal: true

module Vers
  module Models
    module API
      class RootfsListResponse < Vers::Internal::Type::BaseModel
        # @!attribute rootfs_names
        #
        #   @return [Array<String>]
        required :rootfs_names, Vers::Internal::Type::ArrayOf[String]

        # @!method initialize(rootfs_names:)
        #   @param rootfs_names [Array<String>]
      end
    end
  end
end
