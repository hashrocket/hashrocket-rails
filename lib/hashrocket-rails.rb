require "hashrocket-rails/version"
require 'decent_exposure'
require 'haml-rails'

module Hashrocket
  class Rails < ::Rails::Engine
    isolate_namespace Hashrocket
  end
end
