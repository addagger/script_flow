require "script_flow/version"

module ScriptFlow
  def self.load!
    require 'script_flow/engine'
    require 'script_flow/railtie'
  end
end

ScriptFlow.load!
