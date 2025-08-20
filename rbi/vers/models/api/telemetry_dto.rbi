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
        attr_accessor :cpu_cores_available

        sig { returns(Integer) }
        attr_accessor :cpu_cores_margin

        sig { returns(Integer) }
        attr_accessor :cpu_cores_total

        sig { returns(Integer) }
        attr_accessor :cpu_cores_used

        sig { returns(Integer) }
        attr_accessor :disk_data_mib_available

        sig { returns(Integer) }
        attr_accessor :disk_data_mib_total

        sig { returns(Integer) }
        attr_accessor :disk_vm_mib_available

        sig { returns(Integer) }
        attr_accessor :disk_vm_mib_total

        sig { returns(Integer) }
        attr_accessor :memory_mib_available

        sig { returns(Integer) }
        attr_accessor :memory_mib_margin

        sig { returns(Integer) }
        attr_accessor :memory_mib_total

        sig { returns(Integer) }
        attr_accessor :memory_mib_used

        sig { returns(Integer) }
        attr_accessor :vm_network_count_in_use

        sig { returns(Integer) }
        attr_accessor :vm_network_count_total

        sig do
          params(
            id: String,
            cpu_cores_available: Integer,
            cpu_cores_margin: Integer,
            cpu_cores_total: Integer,
            cpu_cores_used: Integer,
            disk_data_mib_available: Integer,
            disk_data_mib_total: Integer,
            disk_vm_mib_available: Integer,
            disk_vm_mib_total: Integer,
            memory_mib_available: Integer,
            memory_mib_margin: Integer,
            memory_mib_total: Integer,
            memory_mib_used: Integer,
            vm_network_count_in_use: Integer,
            vm_network_count_total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          cpu_cores_available:,
          cpu_cores_margin:,
          cpu_cores_total:,
          cpu_cores_used:,
          disk_data_mib_available:,
          disk_data_mib_total:,
          disk_vm_mib_available:,
          disk_vm_mib_total:,
          memory_mib_available:,
          memory_mib_margin:,
          memory_mib_total:,
          memory_mib_used:,
          vm_network_count_in_use:,
          vm_network_count_total:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cpu_cores_available: Integer,
              cpu_cores_margin: Integer,
              cpu_cores_total: Integer,
              cpu_cores_used: Integer,
              disk_data_mib_available: Integer,
              disk_data_mib_total: Integer,
              disk_vm_mib_available: Integer,
              disk_vm_mib_total: Integer,
              memory_mib_available: Integer,
              memory_mib_margin: Integer,
              memory_mib_total: Integer,
              memory_mib_used: Integer,
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
