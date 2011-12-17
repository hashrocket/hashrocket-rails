module Hashrocket
  class AllGenerator < ::Rails::Generators::Base
    invoke 'hashrocket:install', 'hashrocket:ui'
  end
end
