# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#branch_by_commit
    class VmBranchByCommitResponse < Vers::Internal::Type::BaseModel
      # @!attribute vms
      #
      #   @return [Array<Vers::Models::NewVmResponse>]
      required :vms, -> { Vers::Internal::Type::ArrayOf[Vers::NewVmResponse] }

      # @!method initialize(vms:)
      #   @param vms [Array<Vers::Models::NewVmResponse>]
    end
  end
end
