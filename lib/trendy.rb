require 'open-uri'
require 'rubygems'
require 'json'

# Trendy
module Trendy

  class Trends < Array
    
    attr_accessor :url, :datetime
    def initialize
    
      @url = 'http://search.twitter.com/trends.json'

      buffer = open(url, "UserAgent" => "Ruby-Wget").read

      # convert JSON data into a hash
      result = JSON.parse(buffer)

      trends = result['trends']
      
      @datetime = result['as_of']
      puts @datetime.class.to_s
      
      trends.each do |subject|
        trend = Trend.new
        trend.name = subject['name']
        trend.url = subject['url']
        self.push(trend)
        #puts subject['name'] + ' ' + subject['url']
      end

    end
  end
  
  class Trend
    attr_accessor :name, :url, :query
  end
end