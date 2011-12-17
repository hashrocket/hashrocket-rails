require 'generators/hashrocket/generators'

module Hashrocket
  class InstallGenerator < ::Rails::Generators::Base
    include Generators

    def setup_layout
      template 'application.html.haml', 'app/views/layouts/application.html.haml'
      remove_file 'app/views/layouts/application.html.erb'
      commit 'Setup base layout'
    end

  end
end
