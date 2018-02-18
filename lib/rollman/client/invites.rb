module Rollman
  class Client
    module Invites
      def invite_a_user_to_a_team(team_id, email)
        post "/api/1/team/#{team_id}/invites", { email: email }
      end
    end
  end
end
