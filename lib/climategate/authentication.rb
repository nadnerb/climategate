require 'mechanize'

module Climategate

  class AuthenticationError < StandardError ; end

  class Authentication

    LOGIN_URL     = 'https://codeclimate.com/login'
    DASHBOARD_URL = 'https://codeclimate.com/dashboard'

    def initialize(agent)
      @agent = agent
    end

    def authenticate!
      agent.get(LOGIN_URL) do |login_page|
        puts 'logging in'
        login_page.form_with(method: "POST") do |f|
          f['user_session[email]']    = ENV['CLIMATE_USER']
          f['user_session[password]'] = ENV['CLIMATE_PASSWORD']
        end.submit
      end
      raise AuthenticationError, "Failed to log in to #{LOGIN_URL}" unless logged_in?
    end

    private

    attr_reader :agent

    def logged_in?
      agent.page.uri.to_s == DASHBOARD_URL
    end

  end

end
