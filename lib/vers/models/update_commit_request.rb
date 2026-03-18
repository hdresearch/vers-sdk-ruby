# frozen_string_literal: true

module Vers
  module Models
    class UpdateCommitRequest < Vers::Internal::Type::BaseModel
      # @!attribute is_public
      #
      #   @return [Boolean]
      required :is_public, Vers::Internal::Type::Boolean

      # @!method initialize(is_public:)
      #   Request body for PATCH /commits/{commit_id}
      #
      #   @param is_public [Boolean]
    end
  end
end
