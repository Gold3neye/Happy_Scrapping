require 'rubygems'
require 'open-uri'
require 'nokogiri'

def dark_Trader
  page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
  crypto_keys_array = []
  crypto_values_array = []

  # Scrap symbols in an array
  page.css('tr.cmc-table-row  > td:nth-child(3) > div').each do |array|
    crypto_keys_array.push(array.content)
  end

  # Scrap prices in an array
  page.css('tr.cmc-table-row  > td:nth-child(5) > a').each do |array|
    crypto_values_array.push(array.content)
  end

  # Merge arrays in a hash
  crypto_hash = Hash[crypto_keys_array.zip(crypto_values_array)]

  # Display all the cryptocurrencies
  crypto_hash.each do |key, value|
    puts key + ' : ' + value
  end
end

dark_Trader