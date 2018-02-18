require 'rollman/configurable'
require 'rollman/connection'
require 'rollman/client/invites'
require 'rollman/client/teams'

module Rollman
  class Client
    include Rollman::Connection
    include Rollman::Client::Invites
    include Rollman::Client::Teams

    def initialize(options = {})
      Rollman::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key])
      end
    end
  end
end
