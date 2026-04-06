# frozen_string_literal: true

module Vers
  module Models
    class CreateRepositoryRequest < Vers::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the repository (alphanumeric, hyphens, underscores, dots, 1-64
      #   chars)
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   Optional description of the repository
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(name:, description: nil)
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::CreateRepositoryRequest} for more details.
      #
      #   Request body for POST /api/v1/repositories
      #
      #   @param name [String] The name of the repository (alphanumeric, hyphens, underscores, dots, 1-64 chars
      #
      #   @param description [String, nil] Optional description of the repository
    end
  end
end
