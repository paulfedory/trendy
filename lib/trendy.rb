require 'open-uri'
require 'rubygems'
require 'json/pure'

# Trendy
module Trendy
  
  # Trends is an array which contains Trend objects
  # use these Trend objects to access information about a particular trend
  class Trends < Array
    attr_reader :url, :datetime
    
    def initialize
    
      @url = 'http://search.twitter.com/trends.json'
      result = read_twitter

      trends = result['trends']
      
      @datetime = result['as_of']
      
      trends.each do |subject|
        trend = Trend.new
        trend.name = subject['name']
        trend.url = subject['url']
        self.push(trend)
      end
    end
    
    private
    def read_twitter
      buffer = open(@url, "UserAgent" => "Ruby-Wget").read

      # convert JSON data into a hash
      result = JSON.parse(buffer)
    end
    
  end
  
  # Trend contains the name, url (for current trends) or query (for older trends) of a single trending topic
  class Trend
    attr_accessor :name, :url, :query
  end
end