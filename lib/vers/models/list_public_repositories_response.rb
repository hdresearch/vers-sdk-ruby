# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::PublicRepositories#list
    class ListPublicRepositoriesResponse < Vers::Internal::Type::BaseModel
      # @!attribute repositories
      #
      #   @return [Array<Vers::Models::PublicRepositoryInfo>]
      required :repositories, -> { Vers::Internal::Type::ArrayOf[Vers::PublicRepositoryInfo] }

      # @!method initialize(repositories:)
      #   Response body for GET /api/v1/public/repositories
      #
      #   @param repositories [Array<Vers::Models::PublicRepositoryInfo>]
    end
  end
end
