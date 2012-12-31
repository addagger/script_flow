require 'rails'

module ScriptFlow
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      ActiveSupport.on_load(:action_view) do
        require 'script_flow/renderer'
        require 'script_flow/helpers'
        ActionView::Renderer.send(:include, RendererExtension)
        include Helpers
      end
      ActiveSupport.on_load(:action_controller) do
        require 'script_flow/controller'
        include ControllerExtension
      end
    end

  end
end