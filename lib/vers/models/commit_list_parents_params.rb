# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Commits#list_parents
    class CommitListParentsParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute commit_id
      #
      #   @return [String]
      required :commit_id, String

      # @!method initialize(commit_id:, request_options: {})
      #   @param commit_id [String]
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
