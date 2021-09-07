require_relative 'nw_loader/nw_plugins/initial_load'

module NwPluginGeolocationPoint
  class Engine < ::Rails::Engine
    # isolate_namespace NwPluginGeolocationPoint

    config.before_configuration {
      puts "Niiwin::Engine: Before any initializers"
    }
    config.after_initialize {
      puts "Niiwin::Engine: After all initializers"
      # NwPluginGeolocationPoint::NwLoader::NwPlugins::InitialLoad.run!
    }

  end
end
