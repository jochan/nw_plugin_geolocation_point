require_relative 'nw_loader/nw_plugins/initial_load'

module NwPluginGeolocationPoint
  class Engine < ::Rails::Engine

    config.before_configuration {
      puts "NwPluginGeolocationPoint::Engine: Before any initializers"
    }
    config.after_initialize {
      puts "NwPluginGeolocationPoint::Engine: After all initializers"
    }

  end
end
