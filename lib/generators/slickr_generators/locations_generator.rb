require 'rails/generators/active_record'

module SlickrGenerators
  module Generators
    class LocationsGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../locations/templates", __FILE__)
      desc "Running Slickr scaffold for Locations"
      argument :name, type: :string, default: "locations"

      def location_model
        template "models/location.rb", "app/models/location.rb"
        puts "Add model"
      end

      def locations_admin
        template "admin/locations.rb", "app/admin/locations.rb"
        puts "Add admin interface"
      end

      def locations_gem
        gem 'geokit-rails'
      end

      def locations_initializer
        template "config/initializers/geokit_config.rb", "config/initializers/geokit_config.rb"
        puts "Add translations"
      end

      def locations_translations
        template "config/locales/models/locations.en.yml", "config/locales/models/locations.en.yml"
        puts "Add translations"
      end

      def db_migrations
        migration_template "migrations/create_locations.rb", "db/migrate/create_locations.rb"
        puts "Database migrations added"
      end

      def locations_views
      end

      def locations_tests
      end

      def locations_routes
      end

      def locations_packages
      end
    end
  end
end
