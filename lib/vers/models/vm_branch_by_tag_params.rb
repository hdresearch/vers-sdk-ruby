# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#branch_by_tag
    class VmBranchByTagParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute tag_name
      #
      #   @return [String]
      required :tag_name, String

      # @!attribute count
      #   Number of VMs to branch (optional; default 1)
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!method initialize(tag_name:, count: nil, request_options: {})
      #   @param tag_name [String]
      #
      #   @param count [Integer] Number of VMs to branch (optional; default 1)
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
