require 'generators/hashrocket/generators'

module Hashrocket
  class UiGenerator < ::Rails::Generators::Base
    include Generators

    def setup_ui
      template 'ui_controller.rb', 'app/controllers/ui_controller.rb'
      gitkeep 'app/views/ui'
    end

    def add_route
      route "match '/ui(/:action)', controller: 'ui'"
    end

    def commit
      super 'Add ui controller'
    end

  end
end
