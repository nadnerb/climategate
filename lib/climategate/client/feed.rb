module Climategate
  class Client
    module Feed

      def feed
        RSS::Parser.parse(agent.get(feed_url).content, false).entries
      end

      def entries_from(date)
        feed.select{ |e| e.updated.content > date }
      end

      private

      def feed_url
        "https://codeclimate.com/repos/#{ENV['CLIMATE_APP_ID']}/feed.atom"
      end

    end
  end
end
