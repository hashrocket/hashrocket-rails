module Hashrocket
  module Generators
    extend ActiveSupport::Concern

    included do
      source_root File.expand_path("../#{template_directory}/templates", __FILE__)
    end

    module ClassMethods
      def template_directory
        to_s.match(/::(\w*)Gen/)[1]
      end
    end

    private

    def commit(msg)
      git add: '-A'
      git commit: "-m '#{msg}'"
    end
  end
end
