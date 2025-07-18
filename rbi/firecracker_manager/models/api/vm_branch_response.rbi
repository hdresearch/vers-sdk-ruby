# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmBranchResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::Models::API::VmBranchResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(FirecrackerManager::Models::API::VmBranchResponse::Data) }
        attr_reader :data

        sig do
          params(
            data:
              FirecrackerManager::Models::API::VmBranchResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Integer) }
        attr_accessor :duration_ns

        sig do
          returns(
            FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
          )
        end
        attr_accessor :operation_code

        sig { returns(String) }
        attr_accessor :operation_id

        # Unix epoch time (secs)
        sig { returns(Integer) }
        attr_accessor :time_start

        sig do
          params(
            data:
              FirecrackerManager::Models::API::VmBranchResponse::Data::OrHash,
            duration_ns: Integer,
            operation_code:
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::OrSymbol,
            operation_id: String,
            time_start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          duration_ns:,
          operation_code:,
          operation_id:,
          # Unix epoch time (secs)
          time_start:
        )
        end

        sig do
          override.returns(
            {
              data: FirecrackerManager::Models::API::VmBranchResponse::Data,
              duration_ns: Integer,
              operation_code:
                FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol,
              operation_id: String,
              time_start: Integer
            }
          )
        end
        def to_hash
        end

        class Data < FirecrackerManager::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FirecrackerManager::Models::API::VmBranchResponse::Data,
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
          sig do
            returns(
              FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo
            )
          end
          attr_reader :network_info

          sig do
            params(
              network_info:
                FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo::OrHash
            ).void
          end
          attr_writer :network_info

          # Whether the VM is running, paused, or not started.
          sig do
            returns(
              FirecrackerManager::Models::API::VmBranchResponse::Data::State::TaggedSymbol
            )
          end
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
              network_info:
                FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo::OrHash,
              state:
                FirecrackerManager::Models::API::VmBranchResponse::Data::State::OrSymbol,
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
                network_info:
                  FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo,
                state:
                  FirecrackerManager::Models::API::VmBranchResponse::Data::State::TaggedSymbol,
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
                  FirecrackerManager::Models::API::VmBranchResponse::Data::NetworkInfo,
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
                T.all(
                  Symbol,
                  FirecrackerManager::Models::API::VmBranchResponse::Data::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_STARTED =
              T.let(
                :"Not started",
                FirecrackerManager::Models::API::VmBranchResponse::Data::State::TaggedSymbol
              )
            RUNNING =
              T.let(
                :Running,
                FirecrackerManager::Models::API::VmBranchResponse::Data::State::TaggedSymbol
              )
            PAUSED =
              T.let(
                :Paused,
                FirecrackerManager::Models::API::VmBranchResponse::Data::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FirecrackerManager::Models::API::VmBranchResponse::Data::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module OperationCode
          extend FirecrackerManager::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FirecrackerManager::Models::API::VmBranchResponse::OperationCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_CLUSTERS =
            T.let(
              :list_clusters,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER =
            T.let(
              :get_cluster,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          CREATE_CLUSTER =
            T.let(
              :create_cluster,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          DELETE_CLUSTER =
            T.let(
              :delete_cluster,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          UPDATE_CLUSTER =
            T.let(
              :update_cluster,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          GET_CLUSTER_SSH_KEY =
            T.let(
              :get_cluster_ssh_key,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          LIST_VMS =
            T.let(
              :list_vms,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          GET_VM =
            T.let(
              :get_vm,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          UPDATE_VM =
            T.let(
              :update_vm,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          BRANCH_VM =
            T.let(
              :branch_vm,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          COMMIT_VM =
            T.let(
              :commit_vm,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          DELETE_VM =
            T.let(
              :delete_vm,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          GET_VM_SSH_KEY =
            T.let(
              :get_vm_ssh_key,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          UPLOAD_ROOTFS =
            T.let(
              :upload_rootfs,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          DELETE_ROOTFS =
            T.let(
              :delete_rootfs,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )
          LIST_ROOTFS =
            T.let(
              :list_rootfs,
              FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FirecrackerManager::Models::API::VmBranchResponse::OperationCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
