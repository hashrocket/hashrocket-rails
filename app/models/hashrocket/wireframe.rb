module Hashrocket
  class Wireframe < Struct.new(:path)
    class_attribute :excludes

    def self.files
      Dir.glob('app/views/ui/*.html.haml')
    end

    def self.all
      files.sort.map(&instantize).extend(Filter)
    end

    def self.instantize(*args)
      method(:new)
    end

    def self.cleaned
      all.filter(excludes)
    end

    def name
      File.basename(path,'.html.haml')
    end

    module Excludes
      def excludes
        Wireframe.excludes ||= []
      end

      def exclude(*args)
        excludes.push(*args)
      end
    end

    module Filter
      def pass?(rule, filename)
        if rule.respond_to? :call
          !rule[filename]
        else
          filename != rule
        end
      end

      def filter(rules)
        select do |wireframe|
          rules.all? do |rule|
            pass?(rule, wireframe.name)
          end
        end
      end
    end
  end
end
