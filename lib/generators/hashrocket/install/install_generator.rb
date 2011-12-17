module Hashrocket
  class InstallGenerator < ::Rails::Generators::Base
    invoke 'hashrocket:layout', 'hashrocket:ui'
  end
end
