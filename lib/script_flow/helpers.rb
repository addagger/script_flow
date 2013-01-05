module ScriptFlow
  module Helpers
    
    def script(content = nil, &block)
      if content || block_given?
        if block_given?
          content = capture(&block)
        end
        if content
           case request.format
					 when Mime::JS then
             script_flow.add_script(content)
             nil
           when Mime::HTML then
             javascript_tag(content)
           end
        end
      end
    end

    def script_for(identifier, content = nil, &block)
      content_for(identifier, script(content, &block))
    end
    
  end
end