# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#commit
    class VmCommitResponse < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #
      #   @return [String]
      required :commit_id, String

      # @!method initialize(commit_id:)
      #   A summary of a commit, appropriate for displaying on the frontend
      #
      #   @param commit_id [String]
    end
  end
end
