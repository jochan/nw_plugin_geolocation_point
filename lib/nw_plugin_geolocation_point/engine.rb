require_relative 'nw_loader/nw_plugins/initial_load'
require_relative 'nw_loader/nw_plugins/finalize_install'

module NwPluginGeolocationPoint
  class Engine < ::Rails::Engine
    puts "NwPluginGeolocationPoint::Engine"
  end
end
