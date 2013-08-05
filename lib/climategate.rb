require 'dotenv'
Dotenv.load
require 'agent'
require 'climategate/client'

module Climategate
  class << self

    def new
      Climategate::Client.new(Agent.new)
    end

    # Delegate to ClimateGate::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
