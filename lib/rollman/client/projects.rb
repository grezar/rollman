module Rollman
  class Client
    module Projects
      def list_projects
        get '/api/1/projects'
      end

      def get_a_project(project_id)
        get "/api/1/project/#{project_id}"
      end

      def create_a_project(project_name, options = {})
        post '/api/1/projects', options.merge({name: project_name})
      end
    end
  end
end
