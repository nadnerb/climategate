require 'rss'
require 'climategate/authentication'
require 'climategate/client/feed'

module Climategate
  class Client

    def initialize(agent)
      @agent = agent
    end

    def authenticate!
      # this should be moved and needs a few more smart bits
      Authentication.new(agent).authenticate!
    end

    include Climategate::Client::Feed

    private

    attr_reader :agent
  end
end
