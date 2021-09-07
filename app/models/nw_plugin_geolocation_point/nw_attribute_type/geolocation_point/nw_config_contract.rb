module NwPluginGeolocationPoint
  class NwAttributeType
    class GeolocationPoint
      # Specifies nw_config for a geolocation point NwAttribute
      class NwConfigContract < Niiwin::NwAttributeType::BaseNwConfigContract

        params(Niiwin::NwAttributeType::BaseNwConfigContract::SCHEMA) do
          required(:nw_attribute_type).value(:string, eql?: "geolocation_point")
        end

      end
    end
  end
end
