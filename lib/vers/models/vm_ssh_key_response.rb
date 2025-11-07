# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#get_ssh_key
    class VmSSHKeyResponse < Vers::Internal::Type::BaseModel
      # @!attribute ssh_port
      #   The SSH port that will be DNAT'd to the VM's netns (and, in turn, to its TAP
      #   device)
      #
      #   @return [Integer]
      required :ssh_port, Integer

      # @!attribute ssh_private_key
      #   Private SSH key in stringified OpenSSH format
      #
      #   @return [String]
      required :ssh_private_key, String

      # @!method initialize(ssh_port:, ssh_private_key:)
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::VmSSHKeyResponse} for more details.
      #
      #   Response body for GET /api/vm/{vm_id}/ssh_key
      #
      #   @param ssh_port [Integer] The SSH port that will be DNAT'd to the VM's netns (and, in turn, to its TAP dev
      #
      #   @param ssh_private_key [String] Private SSH key in stringified OpenSSH format
    end
  end
end
