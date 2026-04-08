# typed: strong

module Vers
  module Models
    class VmExecStreamAttachRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::VmExecStreamAttachRequest, Vers::Internal::AnyHash)
        end

      # Identifier of the exec stream session to reattach to.
      sig { returns(String) }
      attr_accessor :exec_id

      # Optional cursor to resume from (exclusive). If omitted, the full retained
      # backlog is replayed.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :cursor

      # Start streaming after the latest retained chunk (ignores cursor).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :from_latest

      # Request body for POST /api/vm/{vm_id}/exec/stream/attach
      sig do
        params(
          exec_id: String,
          cursor: T.nilable(Integer),
          from_latest: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the exec stream session to reattach to.
        exec_id:,
        # Optional cursor to resume from (exclusive). If omitted, the full retained
        # backlog is replayed.
        cursor: nil,
        # Start streaming after the latest retained chunk (ignores cursor).
        from_latest: nil
      )
      end

      sig do
        override.returns(
          {
            exec_id: String,
            cursor: T.nilable(Integer),
            from_latest: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end
    end
  end
end
