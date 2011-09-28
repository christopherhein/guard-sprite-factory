require 'guard'
require 'guard/guard'

module Guard
  class GuardName < Guard

    def initialize(watchers=[], options={})
      super
      # init stuff here, thx!
    end

    # =================
    # = Guard methods =
    # =================

    # If one of those methods raise an exception, the Guard::GuardName instance
    # will be removed from the active guards.

    # Called once when Guard starts
    # Please override initialize method to init stuff
    def start
      true
    end

    # Called when `stop|quit|exit|s|q|e + enter` is pressed (when Guard quits)
    def stop
      true
    end

    # Called when `reload|r|z + enter` is pressed
    # This method should be mainly used for "reload" (really!) actions like reloading passenger/spork/bundler/...
    def reload
      true
    end

    # Called when just `enter` is pressed
    # This method should be principally used for long action like running all specs/tests/...
    def run_all
      true
    end

    # Called on file(s) modifications
    def run_on_change(paths)
      true
    end

  end
end