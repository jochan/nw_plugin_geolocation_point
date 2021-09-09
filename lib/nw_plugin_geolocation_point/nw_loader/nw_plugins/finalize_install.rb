# Registers callbacks for plugin
#
module NwPluginGeolocationPoint
  module NwLoader
    module NwPlugins
      class FinalizeInstall < Niiwin::NwInteraction

        def execute
          puts "FinalizeInstall for Geolocation Point attribute type plugin"
        end

      end
    end
  end
end
