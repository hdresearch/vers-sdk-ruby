# frozen_string_literal: true

module Vers
  module Models
    class VmAPI < Vers::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute owner_id
      #
      #   @return [String]
      required :owner_id, String

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute parent
      #
      #   @return [String, nil]
      optional :parent, String, nil?: true

      # @!method initialize(created_at:, owner_id:, vm_id:, parent: nil)
      #   @param created_at [Time]
      #   @param owner_id [String]
      #   @param vm_id [String]
      #   @param parent [String, nil]
    end
  end
end
