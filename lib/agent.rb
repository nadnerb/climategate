require 'delegate'

class Agent < SimpleDelegator

  def initialize
    super(agent)
  end

  def agent
    Mechanize.new do |m|
      m.ssl_version,
        m.verify_mode = 'SSLv3',
        OpenSSL::SSL::VERIFY_NONE
    end
  end
end
