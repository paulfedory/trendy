#require 'spec_helper'
require File.join(File.dirname(__FILE__), "spec_helper" )

#describe
module Trendy
  describe Trends do
    context "starting up with no parameters" do
      before (:all) do
        @trends = Trends.new
      end
      
      it "should exist" do
        @trends.should_not be_nil
      end
      
      it "should contain at least 1 Trend" do
        @trends.should have_at_least(1).trend
      end
      
      it "should contain only Trend objects" do
        @trends.each do |trend|
          trend.should be_instance_of(Trend)
        end
      end
      
      it "should contain a URL" do
        @trends.url.should_not be_nil
      end
      
      it "should contain a date or time" do
        @trends.datetime.should_not be_nil
      end
      
    end
    
  end
  
  describe Trend do
    before(:all) do
      trends = Trends.new
      @trend = trends.first
    end
    
    it "should exist" do
      @trend.should_not be_nil
    end
    
    it "should have a name" do
      @trend.name.should_not be_nil
    end
    
    it "should have a query or a url" do
      (!@trend.query.nil? || !@trend.url.nil?).should be_true
    end

  end
end
