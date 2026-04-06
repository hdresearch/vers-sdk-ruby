# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#get
    class RepositoryInfo < Vers::Internal::Type::BaseModel
      # @!attribute created_at
      #   When the repository was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_public
      #   Whether this repository is publicly visible
      #
      #   @return [Boolean]
      required :is_public, Vers::Internal::Type::Boolean

      # @!attribute name
      #   The repository name
      #
      #   @return [String]
      required :name, String

      # @!attribute repo_id
      #   The repository's unique identifier
      #
      #   @return [String]
      required :repo_id, String

      # @!attribute description
      #   Optional description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(created_at:, is_public:, name:, repo_id:, description: nil)
      #   Repository information returned in list and get operations
      #
      #   @param created_at [Time] When the repository was created
      #
      #   @param is_public [Boolean] Whether this repository is publicly visible
      #
      #   @param name [String] The repository name
      #
      #   @param repo_id [String] The repository's unique identifier
      #
      #   @param description [String, nil] Optional description
    end
  end
end
