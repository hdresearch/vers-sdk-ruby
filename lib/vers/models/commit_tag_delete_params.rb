# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::CommitTags#delete
    class CommitTagDeleteParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute tag_name
      #
      #   @return [String]
      required :tag_name, String

      # @!method initialize(tag_name:, request_options: {})
      #   @param tag_name [String]
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
