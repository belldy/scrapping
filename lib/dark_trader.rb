require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rspec'

def dark_trader
  listcoin = []
  listprice = []

  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

  coin = page.xpath('//*[@class="text-left col-symbol"]/text()').each do |coin| 
  	listcoin << coin.to_s
  end

  prices = page.xpath('//*[@class="price"]/text()').each do |price| 
    listprice << price.to_s
  end

  dark_trader_list = Hash[listcoin.zip(listprice)] 
 
  return dark_trader_list

end

puts dark_trader




