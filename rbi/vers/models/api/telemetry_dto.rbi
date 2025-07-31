# typed: strong

module Vers
  module Models
    module API
      class TelemetryDto < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::TelemetryDto, Vers::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :fs_mib_current

        sig { returns(Integer) }
        attr_accessor :fs_mib_max

        sig { returns(Integer) }
        attr_accessor :mem_mib_current

        sig { returns(Integer) }
        attr_accessor :mem_mib_max

        sig { returns(Integer) }
        attr_accessor :vcpu_current

        sig { returns(Integer) }
        attr_accessor :vcpu_max

        sig { returns(Integer) }
        attr_accessor :vm_network_count_in_use

        sig { returns(Integer) }
        attr_accessor :vm_network_count_total

        sig do
          params(
            id: String,
            fs_mib_current: Integer,
            fs_mib_max: Integer,
            mem_mib_current: Integer,
            mem_mib_max: Integer,
            vcpu_current: Integer,
            vcpu_max: Integer,
            vm_network_count_in_use: Integer,
            vm_network_count_total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          fs_mib_current:,
          fs_mib_max:,
          mem_mib_current:,
          mem_mib_max:,
          vcpu_current:,
          vcpu_max:,
          vm_network_count_in_use:,
          vm_network_count_total:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              fs_mib_current: Integer,
              fs_mib_max: Integer,
              mem_mib_current: Integer,
              mem_mib_max: Integer,
              vcpu_current: Integer,
              vcpu_max: Integer,
              vm_network_count_in_use: Integer,
              vm_network_count_total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
