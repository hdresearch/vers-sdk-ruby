# frozen_string_literal: true

module Vers
  module Models
    module API
      class VmNetworkInfoDto < Vers::Internal::Type::BaseModel
        # @!attribute guest_ip
        #
        #   @return [String]
        required :guest_ip, String

        # @!attribute guest_mac
        #
        #   @return [String]
        required :guest_mac, String

        # @!attribute ssh_port
        #
        #   @return [Integer]
        required :ssh_port, Integer

        # @!attribute tap0_ip
        #
        #   @return [String]
        required :tap0_ip, String

        # @!attribute tap0_name
        #
        #   @return [String]
        required :tap0_name, String

        # @!attribute vm_namespace
        #
        #   @return [String]
        required :vm_namespace, String

        # @!method initialize(guest_ip:, guest_mac:, ssh_port:, tap0_ip:, tap0_name:, vm_namespace:)
        #   @param guest_ip [String]
        #   @param guest_mac [String]
        #   @param ssh_port [Integer]
        #   @param tap0_ip [String]
        #   @param tap0_name [String]
        #   @param vm_namespace [String]
      end
    end
  end
end
