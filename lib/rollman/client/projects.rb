module Rollman
  class Client
    module Projects
      def list_projects
        get '/api/1/projects'
      end
    end
  end
end
