# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#branch
    class NewVmResponse < Vers::Internal::Type::BaseModel
      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!method initialize(vm_id:)
      #   Response body for new VM requests (new_root, from_commit, branch)
      #
      #   @param vm_id [String]
    end
  end
end
