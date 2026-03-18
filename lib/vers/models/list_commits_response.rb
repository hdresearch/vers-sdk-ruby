# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Commits#list
    class ListCommitsResponse < Vers::Internal::Type::BaseModel
      # @!attribute commits
      #
      #   @return [Array<Vers::Models::CommitInfo>]
      required :commits, -> { Vers::Internal::Type::ArrayOf[Vers::CommitInfo] }

      # @!attribute limit
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute offset
      #
      #   @return [Integer]
      required :offset, Integer

      # @!attribute total
      #
      #   @return [Integer]
      required :total, Integer

      # @!method initialize(commits:, limit:, offset:, total:)
      #   @param commits [Array<Vers::Models::CommitInfo>]
      #   @param limit [Integer]
      #   @param offset [Integer]
      #   @param total [Integer]
    end
  end
end
