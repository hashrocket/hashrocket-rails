require 'generators/hashrocket/generators'

module Hashrocket
  class UiGenerator < ::Rails::Generators::Base
    include Generators

    def copy_controller
      template 'ui_controller.rb', 'app/controllers/ui_controller.rb'
    end

    def add_route
      route "match '/ui(/:action)', controller: 'ui'"
    end

    def commit
      super 'Add ui controller'
    end

  end
end
