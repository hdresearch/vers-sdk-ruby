# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#delete
    class VmDeleteResponse < Vers::Internal::Type::BaseModel
      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!method initialize(vm_id:)
      #   Response body for DELETE /api/vm/{vm_id}
      #
      #   @param vm_id [String]
    end
  end
end
