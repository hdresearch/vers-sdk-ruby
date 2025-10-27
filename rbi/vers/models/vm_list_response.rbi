# typed: strong

module Vers
  module Models
    VmListResponse =
      T.let(
        Vers::Internal::Type::ArrayOf[Vers::VmAPI],
        Vers::Internal::Type::Converter
      )
  end
end
