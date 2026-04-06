# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#list
    class ListRepositoriesResponse < Vers::Internal::Type::BaseModel
      # @!attribute repositories
      #   List of all repositories in the user's organization
      #
      #   @return [Array<Vers::Models::RepositoryInfo>]
      required :repositories, -> { Vers::Internal::Type::ArrayOf[Vers::RepositoryInfo] }

      # @!method initialize(repositories:)
      #   Response body for GET /api/v1/repositories
      #
      #   @param repositories [Array<Vers::Models::RepositoryInfo>] List of all repositories in the user's organization
    end
  end
end
