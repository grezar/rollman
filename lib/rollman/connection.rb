require 'faraday'

module Rollman
  module Connection
    API_ENDPOINT = "https://api.rollbar.com".freeze

    def get(url, options = {})
      request :get, url, options
    end

    def post(url, options = {})
      request :post, url, options
    end

    def agent
      Faraday.new(endpoint) do |http|
        http.request :url_encoded
        http.response :logger do |logger|
          logger.filter(/(access_token=)(\w+)/,'\1[REMOVED]')
        end
        http.adapter Faraday.default_adapter
      end
    end

    def endpoint
      API_ENDPOINT
    end

    private

    def request(method, path, options = {})
      options.store(:access_token, @access_token)

      response = agent.__send__(method, path, options)
      response.body
    end
  end
end
