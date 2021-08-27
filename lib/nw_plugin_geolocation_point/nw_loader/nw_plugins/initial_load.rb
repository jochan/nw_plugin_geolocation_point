# Registers callbacks for plugin
#
module NwPluginGeolocationPoint
  module NwLoader
    module NwPlugins
      class InitialLoad < Niiwin::NwInteraction

        include Niiwin::NwLoader::NwPlugins::InitialLoadMixin

        def execute
          puts "InitialLoad for Geolocation Point attribute type plugin"

          ActionController::Base.append_view_path("/Users/jochan/Development/nw_plugin_geolocation_point/lib/nw_plugin_geolocation_point/views")
        end

      end
    end
  end
end
