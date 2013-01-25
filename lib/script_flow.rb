require "script_flow/version"

module ScriptFlow
  def self.load!
    require 'script_flow/engine'
    require 'script_flow/railtie'
    warn <<-EOW

    DEPRECATION WARNING: Gem 'script_flow' has been moved into 'active_tools' gem.
    Further development of 'script_flow' will no longer continue.

    Thank you!

EOW
  end
end

ScriptFlow.load!
