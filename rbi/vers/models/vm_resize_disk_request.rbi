# typed: strong

module Vers
  module Models
    class VmResizeDiskRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::VmResizeDiskRequest, Vers::Internal::AnyHash)
        end

      # The new disk size in MiB. Must be strictly greater than the current size.
      sig { returns(Integer) }
      attr_accessor :fs_size_mib

      # Request body for PATCH /api/vm/{vm_id}/disk
      sig { params(fs_size_mib: Integer).returns(T.attached_class) }
      def self.new(
        # The new disk size in MiB. Must be strictly greater than the current size.
        fs_size_mib:
      )
      end

      sig { override.returns({ fs_size_mib: Integer }) }
      def to_hash
      end
    end
  end
end
