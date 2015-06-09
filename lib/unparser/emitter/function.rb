# encoding: utf-8

module Unparser
  class Emitter
    # Emitter for module nodes
    class Function < self
      include LocalVariableRoot, Terminated

      handle :function

      children :name, :body

    private

      # Perform dispatch
      #
      # @return [undefined]
      #
      # @api private
      #
      def dispatch
        write(K_FUNCTION, WS)
        emit_name
        emit_body
        k_end
      end


    private

      # Emit name
      #
      # @return [undefined]
      #
      # @api private
      #
      def emit_name
        write(name.to_s)
      end
    end # Function
  end # Emitter
end # Unparser
