require "hashrocket-rails/version"

module Hashrocket
  class Rails < ::Rails::Engine
    isolate_namespace Hashrocket
  end
end
