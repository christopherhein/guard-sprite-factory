require 'guard'
require 'guard/guard'
require 'rake'
require "term/ansicolor"

module Guard
  class SpriteFactory < Guard
    include ::Rake::DSL

    def initialize(watchers=[], options={})
      @run_on_start = true if options[:run_on_start] == true
      @task_name = options[:task_name]
      super
    end

    def run_on_start?
      !!@run_on_start
    end

    def start
      load 'Rakefile'
      run_resprite if self.run_on_start?
      true
    end

    def stop
      true
    end

    def reload
      start
      stop
    end

    def run_all
      run_resprite
    end

    def run_on_change(paths)
      run_resprite
    end

    def run_resprite
      ::Rake::Task[@task_name].execute
    end
  end
end