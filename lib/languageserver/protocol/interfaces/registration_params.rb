module Languageserver
  module Protocol
    module Interfaces
      class RegistrationParams
        def initialize(registrations:)
          @attributes = {}

          @attributes[:registrations] = registrations

          @attributes.freeze
        end

        # @return [Registration[]]
        def registrations
          attributes.fetch(:registrations)
        end

        attr_reader :attributes

        def to_json(*args)
          attributes.to_json(*args)
        end
      end
    end
  end
end
