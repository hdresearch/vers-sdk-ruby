# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#delete
    class RepositoryDeleteParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute repo_name
      #
      #   @return [String]
      required :repo_name, String

      # @!method initialize(repo_name:, request_options: {})
      #   @param repo_name [String]
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
