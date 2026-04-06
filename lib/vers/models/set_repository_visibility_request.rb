# frozen_string_literal: true

module Vers
  module Models
    class SetRepositoryVisibilityRequest < Vers::Internal::Type::BaseModel
      # @!attribute is_public
      #   Whether the repository should be publicly visible
      #
      #   @return [Boolean]
      required :is_public, Vers::Internal::Type::Boolean

      # @!method initialize(is_public:)
      #   Request body for PATCH /api/v1/repositories/{repo_name}/visibility
      #
      #   @param is_public [Boolean] Whether the repository should be publicly visible
    end
  end
end
