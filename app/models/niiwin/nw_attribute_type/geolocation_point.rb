module Niiwin
  class NwAttributeType
    class GeolocationPoint < Niiwin::NwAttributeType

      def can_have_uniqueness_constraint?
        true
      end

      # @param nw_config [Hash] the NwAttribute's config from niiwin.json.
      # @return [Array<Hash>] an entry for every column to create in the DB with options for the migration.
      def dev_db_columns_map(nw_config = {})
        # See here for migration generator options: https://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html
        [
          OpenStruct.new(
            col_migration_options: nw_config[:index] ? ":index" : "",
            col_name_suffix: "",
            col_type: "string",
          ),
        ]
      end

      def interaction_input_filter_types
        { "" => :string }
      end

      def susceptible_to_xss?
        true
      end

      # Each NwAttribute type provides a set of options to pick from for how
      # the developer wants the NwAttribute to be searched/filtered from the table.
      def all_search_filter_options
        [
          {
            html_element: :search,
            display_name: "Add to general search",
          }
        ]
      end

    end
  end
end
