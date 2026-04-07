# frozen_string_literal: true

module Vers
  module Models
    class UpdateCommitRequest < Vers::Internal::Type::BaseModel
      # @!attribute is_public
      #
      #   @return [Boolean]
      required :is_public, Vers::Internal::Type::Boolean

      # @!attribute description
      #   Optional description for the commit.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute name
      #   Optional human-readable name for the commit.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(is_public:, description: nil, name: nil)
      #   Request body for PATCH /commits/{commit_id}
      #
      #   @param is_public [Boolean]
      #
      #   @param description [String, nil] Optional description for the commit.
      #
      #   @param name [String, nil] Optional human-readable name for the commit.
    end
  end
end
