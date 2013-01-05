require 'script_flow/model/map'

module ScriptFlow
  module ControllerExtension
    extend ActiveSupport::Concern

    included do
      helper_method :script_flow
    end

    def script_flow
      @script_flow ||= ScriptFlow::Map.new
    end

    def _render_template(options)
      if lookup_context.rendered_format == :js
         super + script_flow.render
      else
        super
      end
    end
    
  end
end