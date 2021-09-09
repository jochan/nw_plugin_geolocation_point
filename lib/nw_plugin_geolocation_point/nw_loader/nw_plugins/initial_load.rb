# Registers callbacks for plugin
#
module NwPluginGeolocationPoint
  module NwLoader
    module NwPlugins
      class InitialLoad < Niiwin::NwInteraction

        include Niiwin::NwLoader::NwPlugins::InitialLoadMixin

        def execute
          puts "InitialLoad for Geolocation Point attribute type plugin"
        end

      end
    end
  end
end
