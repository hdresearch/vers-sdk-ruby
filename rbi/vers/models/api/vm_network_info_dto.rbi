# typed: strong

module Vers
  module Models
    module API
      class VmNetworkInfoDto < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::VmNetworkInfoDto, Vers::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :guest_ip

        sig { returns(String) }
        attr_accessor :guest_mac

        sig { returns(Integer) }
        attr_accessor :ssh_port

        sig { returns(String) }
        attr_accessor :tap0_ip

        sig { returns(String) }
        attr_accessor :tap0_name

        sig { returns(String) }
        attr_accessor :vm_namespace

        sig do
          params(
            guest_ip: String,
            guest_mac: String,
            ssh_port: Integer,
            tap0_ip: String,
            tap0_name: String,
            vm_namespace: String
          ).returns(T.attached_class)
        end
        def self.new(
          guest_ip:,
          guest_mac:,
          ssh_port:,
          tap0_ip:,
          tap0_name:,
          vm_namespace:
        )
        end

        sig do
          override.returns(
            {
              guest_ip: String,
              guest_mac: String,
              ssh_port: Integer,
              tap0_ip: String,
              tap0_name: String,
              vm_namespace: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
