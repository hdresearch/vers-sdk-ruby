# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::PublicRepositories#get_tag
    class PublicRepositoryGetTagParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute org_name
      #
      #   @return [String]
      required :org_name, String

      # @!attribute repo_name
      #
      #   @return [String]
      required :repo_name, String

      # @!attribute tag_name
      #
      #   @return [String]
      required :tag_name, String

      # @!method initialize(org_name:, repo_name:, tag_name:, request_options: {})
      #   @param org_name [String]
      #   @param repo_name [String]
      #   @param tag_name [String]
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
