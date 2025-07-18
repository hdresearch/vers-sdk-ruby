# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmDto < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmDto,
              FirecrackerManager::Internal::AnyHash
            )
          end

        # The ID of the VM.
        sig { returns(String) }
        attr_accessor :id

        # The IDs of direct children branched from this VM.
        sig { returns(T::Array[String]) }
        attr_accessor :children

        # The VM's cluster ID
        sig { returns(String) }
        attr_accessor :cluster_id

        # What is the size of the "disk" allocated to this VM
        sig { returns(Integer) }
        attr_accessor :fs_size_mib

        # The VM's local IP address on the VM subnet
        sig { returns(String) }
        attr_accessor :ip_address

        # How much RAM is allocated to this VM
        sig { returns(Integer) }
        attr_accessor :mem_size_mib

        # The VM's network configuration
        sig { returns(FirecrackerManager::API::VmDto::NetworkInfo) }
        attr_reader :network_info

        sig do
          params(
            network_info: FirecrackerManager::API::VmDto::NetworkInfo::OrHash
          ).void
        end
        attr_writer :network_info

        # Whether the VM is running, paused, or not started.
        sig { returns(FirecrackerManager::API::VmDto::State::TaggedSymbol) }
        attr_accessor :state

        # How many vCPUs were allocated to this VM
        sig { returns(Integer) }
        attr_accessor :vcpu_count

        # Human-readable name assigned to the VM.
        sig { returns(T.nilable(String)) }
        attr_accessor :alias_

        # The parent VM's ID, if present. If None, then this VM is a root VM.
        sig { returns(T.nilable(String)) }
        attr_accessor :parent_id

        sig do
          params(
            id: String,
            children: T::Array[String],
            cluster_id: String,
            fs_size_mib: Integer,
            ip_address: String,
            mem_size_mib: Integer,
            network_info: FirecrackerManager::API::VmDto::NetworkInfo::OrHash,
            state: FirecrackerManager::API::VmDto::State::OrSymbol,
            vcpu_count: Integer,
            alias_: T.nilable(String),
            parent_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the VM.
          id:,
          # The IDs of direct children branched from this VM.
          children:,
          # The VM's cluster ID
          cluster_id:,
          # What is the size of the "disk" allocated to this VM
          fs_size_mib:,
          # The VM's local IP address on the VM subnet
          ip_address:,
          # How much RAM is allocated to this VM
          mem_size_mib:,
          # The VM's network configuration
          network_info:,
          # Whether the VM is running, paused, or not started.
          state:,
          # How many vCPUs were allocated to this VM
          vcpu_count:,
          # Human-readable name assigned to the VM.
          alias_: nil,
          # The parent VM's ID, if present. If None, then this VM is a root VM.
          parent_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              children: T::Array[String],
              cluster_id: String,
              fs_size_mib: Integer,
              ip_address: String,
              mem_size_mib: Integer,
              network_info: FirecrackerManager::API::VmDto::NetworkInfo,
              state: FirecrackerManager::API::VmDto::State::TaggedSymbol,
              vcpu_count: Integer,
              alias_: T.nilable(String),
              parent_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class NetworkInfo < FirecrackerManager::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FirecrackerManager::API::VmDto::NetworkInfo,
                FirecrackerManager::Internal::AnyHash
              )
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

          # The VM's network configuration
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

        # Whether the VM is running, paused, or not started.
        module State
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FirecrackerManager::API::VmDto::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_STARTED =
            T.let(
              :"Not started",
              FirecrackerManager::API::VmDto::State::TaggedSymbol
            )
          RUNNING =
            T.let(:Running, FirecrackerManager::API::VmDto::State::TaggedSymbol)
          PAUSED =
            T.let(:Paused, FirecrackerManager::API::VmDto::State::TaggedSymbol)

          sig do
            override.returns(
              T::Array[FirecrackerManager::API::VmDto::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
