require 'generators/hashrocket/generators'

module Hashrocket
  class InstallGenerator < ::Rails::Generators::Base
    include Generators

    def setup_layout
      template 'application.html.haml', 'app/views/layouts/application.html.haml'
      remove_file 'app/views/layouts/application.html.erb'
      commit 'Setup base layout'
    end

    def setup_stylesheets
      remove_file 'app/assets/stylesheets/application.css'
      gitkeep 'app/assets/stylesheets/vendor'
      gitkeep 'app/assets/stylesheets/global'
      template 'application.css.sass', 'app/assets/stylesheets/application.css.sass'
      commit 'Setup base stylesheets'
    end
  end
end
