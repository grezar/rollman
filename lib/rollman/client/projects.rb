module Rollman
  class Client
    module Projects
      def list_projects
        get '/api/1/projects'
      end

      def get_a_project(project_id)
        get "/api/1/project/#{project_id}"
      end
    end
  end
end
