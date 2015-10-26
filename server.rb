require 'sinatra'
require "httparty"
require "nokogiri"
# require "stock_quote"

request_url = "http://finance.yahoo.com/q?s=YHOO"

response = HTTParty.get(request_url)

dom = Nokogiri::HTML(response.body)
ticker_value = dom.xpath("//span[@id='yfs_l84_yhoo']").first

get '/' do
ticker_value.content

end

# @stock = StockQuote::Stock.quote('symbol')
# @stock.response_code

# def stock_option
#   puts "What stock will you like to check?"
#   input = gets.chomp
#   case input
#   when input "#{stock}"
# stock = StockQuote::Stock.quote("symbol")
# stocks = StockQuote::Stock.json_quote('aapl')
# stocks = StockQuote::Stock.json_quote('yhoo')
