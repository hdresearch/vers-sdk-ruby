# typed: strong

module Vers
  module Models
    class VmSSHKeyResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmSSHKeyResponse, Vers::Internal::AnyHash) }

      # The SSH port that will be DNAT'd to the VM's netns (and, in turn, to its TAP
      # device)
      sig { returns(Integer) }
      attr_accessor :ssh_port

      # Private SSH key in stringified OpenSSH format
      sig { returns(String) }
      attr_accessor :ssh_private_key

      # Response body for GET /api/vm/{vm_id}/ssh_key
      sig do
        params(ssh_port: Integer, ssh_private_key: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The SSH port that will be DNAT'd to the VM's netns (and, in turn, to its TAP
        # device)
        ssh_port:,
        # Private SSH key in stringified OpenSSH format
        ssh_private_key:
      )
      end

      sig { override.returns({ ssh_port: Integer, ssh_private_key: String }) }
      def to_hash
      end
    end
  end
end
