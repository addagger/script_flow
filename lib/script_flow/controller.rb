module ScriptFlow
  module ControllerExtension
    
    def _render_template(options)
      if lookup_context.rendered_format == :js
        super + view_renderer.script_hash.render
      else
        super
      end
    end
    
  end
end