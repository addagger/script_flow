module ScriptFlow
  module RendererExtension
    extend ActiveSupport::Concern
    
    class ScriptHash
      attr_reader :content

      delegate :any?, :to => :content

      def initialize
        @content = ActiveSupport::OrderedHash.new { |h,k| h[k] = ActiveSupport::SafeBuffer.new }
      end

      # Called by _layout_for to read stored values.
      def get(key)
        @content[key]
      end

      # Called by each renderer object to set the layout contents.
      def set(key, value)
        @content[key] = value
      end

      # Called by content_for
      def append(key, value)
        @content[key] << value
      end
      alias_method :append!, :append

      def add_script(script)
        set(script.hash, script)
      end

      def render
        @content.values.join("\n").html_safe
      end
    end

    def script_hash
      @script_hash ||= ScriptHash.new
    end
  end
end