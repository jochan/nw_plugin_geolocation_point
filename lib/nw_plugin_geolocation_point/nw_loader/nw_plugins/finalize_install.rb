# Registers callbacks for plugin
#
module NwPluginGeolocationPoint
  module NwLoader
    module NwPlugins
      class FinalizeInstall < Niiwin::NwInteraction

        def execute
          puts "FinalizeInstall for Geolocation Point attribute type plugin"

          @nw_patch_effects = Niiwin::NwPatch::INITIAL_NW_PATCH_EFFECTS

          update_nw_config
        end

        protected

        def update_nw_config
          # Add nw_attribute_types entry to config
          attribute_types = @nw_patch_effects[:update_nw_config].dig(:nw_base, :nw_attribute_types, :entries)

          # Add NwConfig plugin entry if it doesn't already exist
          if !attribute_types.key?(:geolocation_point)
            attribute_types[:geolocation_point] = {}

            @nw_patch_effects = compose(
              Niiwin::NwAppStructure::ApplySideEffects::UpdateNwConfig,
              nw_patch_effects: @nw_patch_effects
            )

            @nw_patch_effects = compose(
              Niiwin::NwAppStructure::ApplySideEffects::CommitFilesToGit,
              nw_patch_effects: @nw_patch_effects,
              commit_message: "Add nw_attribute_type 'geolocation_point' to nw_config"
            )
          end
        end

      end
    end
  end
end
