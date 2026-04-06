# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#create
    class CreateRepositoryResponse < Vers::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the repository
      #
      #   @return [String]
      required :name, String

      # @!attribute repo_id
      #   The ID of the newly created repository
      #
      #   @return [String]
      required :repo_id, String

      # @!method initialize(name:, repo_id:)
      #   Response body for POST /api/v1/repositories
      #
      #   @param name [String] The name of the repository
      #
      #   @param repo_id [String] The ID of the newly created repository
    end
  end
end
