# -*- encoding: utf-8 -*-
require 'helper'

describe Climategate do

  describe ".respond_to?" do
    it "is true if method exists" do
      expect(Climategate.respond_to?(:new, true)).to eq(true)
    end
  end

  describe ".new" do
    it "is a Climategate::Client" do
      expect(Climategate.new).to be_a Climategate::Client
    end
  end

end
