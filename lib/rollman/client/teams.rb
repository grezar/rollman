module Rollman
  class Client
    module Teams
      def list_team
        get '/api/1/teams'
      end
    end
  end
end
