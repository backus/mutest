module Mutest
  class Mutator
    class Node
      # Yield mutator
      class Yield < Generic
        handle(:yield)

        private

        # Emit mutations
        #
        # @return [undefined]
        def dispatch
          super()
          emit_singletons
          children.each_index(&method(:delete_child))
        end
      end
    end
  end
end
