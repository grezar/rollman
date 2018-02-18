require 'rollman/configurable'
require 'rollman/connection'
require 'rollman/client/invites'
require 'rollman/client/teams'
require 'rollman/client/projects'


module Rollman
  class Client
    include Rollman::Connection
    include Rollman::Client::Invites
    include Rollman::Client::Teams
    include Rollman::Client::Projects

    def initialize(options = {})
      Rollman::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key])
      end
    end
  end
end
