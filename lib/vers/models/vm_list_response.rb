# frozen_string_literal: true

module Vers
  module Models
    # @type [Vers::Internal::Type::Converter]
    VmListResponse = Vers::Internal::Type::ArrayOf[-> { Vers::VmAPI }]
  end
end
