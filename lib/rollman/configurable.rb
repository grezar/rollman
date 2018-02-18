module Rollman
  module Configurable
    class << self

      def keys
        @keys ||= [:access_token]
      end
    end
  end
end
