module Climategate
  class Client
    module Feed

      def feed
        RSS::Parser.parse(agent.get(feed_url).content, false).entries
      end

      private

      def feed_url
        "https://codeclimate.com/repos/#{ENV['CLIMATE_APP_ID']}/feed.atom"
      end

    end
  end
end
