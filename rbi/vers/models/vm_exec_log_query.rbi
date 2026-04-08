# typed: strong

module Vers
  module Models
    class VmExecLogQuery < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmExecLogQuery, Vers::Internal::AnyHash) }

      # Maximum number of entries to return (server applies caps).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_entries

      # Byte offset into the log file to start reading from.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :offset

      # Skip waiting for boot state (mirrors exec).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :skip_wait_boot

      # Filter by stream (stdout/stderr). Default: all streams.
      sig { returns(T.nilable(Vers::VmExecLogQuery::Stream::OrSymbol)) }
      attr_accessor :stream

      # Query params for GET /api/vm/{vm_id}/exec/logs
      sig do
        params(
          max_entries: T.nilable(Integer),
          offset: T.nilable(Integer),
          skip_wait_boot: T.nilable(T::Boolean),
          stream: T.nilable(Vers::VmExecLogQuery::Stream::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Maximum number of entries to return (server applies caps).
        max_entries: nil,
        # Byte offset into the log file to start reading from.
        offset: nil,
        # Skip waiting for boot state (mirrors exec).
        skip_wait_boot: nil,
        # Filter by stream (stdout/stderr). Default: all streams.
        stream: nil
      )
      end

      sig do
        override.returns(
          {
            max_entries: T.nilable(Integer),
            offset: T.nilable(Integer),
            skip_wait_boot: T.nilable(T::Boolean),
            stream: T.nilable(Vers::VmExecLogQuery::Stream::OrSymbol)
          }
        )
      end
      def to_hash
      end

      # Filter by stream (stdout/stderr). Default: all streams.
      module Stream
        extend Vers::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Vers::VmExecLogQuery::Stream) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STDOUT = T.let(:stdout, Vers::VmExecLogQuery::Stream::TaggedSymbol)
        STDERR = T.let(:stderr, Vers::VmExecLogQuery::Stream::TaggedSymbol)

        sig do
          override.returns(T::Array[Vers::VmExecLogQuery::Stream::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
