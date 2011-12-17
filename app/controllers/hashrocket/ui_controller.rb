module Hashrocket
  class UiController < ::ApplicationController
    extend Wireframe::Excludes

    exclude 'index', ->(w) { w.starts_with? '_' }

    expose(:wireframes) do
      Wireframe.cleaned
    end
  end
end

