# frozen_string_literal: true

module Vers
  module Models
    module API
      class VmCommitRequest < Vers::Internal::Type::BaseModel
        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, Vers::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(tags: nil)
        #   @param tags [Array<String>, nil]
      end
    end
  end
end
