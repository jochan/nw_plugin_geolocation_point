module Niiwin
  class NwAttributeType
    class GeolocationPoint
      # Specifies nw_config for a geolocation point NwAttribute
      class NwConfigContract < NwAttributeType::BaseNwConfigContract

        params(NwAttributeType::BaseNwConfigContract::SCHEMA) do
          required(:nw_attribute_type).value(:string, eql?: "geolocation_point")
        end

      end
    end
  end
end
