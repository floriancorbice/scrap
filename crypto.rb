require 'rubygems'
require 'open-uri'
require 'nokogiri'



def crypto_name 

   @array_name = [] 

   page = Nokogiri::HTML(open("https://coinmarketcap.com"))
   page.css('a.currency-name-container').each do |node|
      @array_name << node.text
   end
end


def crypto_val 

   @array_value = [] 

   page = Nokogiri::HTML(open("https://coinmarketcap.com"))
   page.css('a.price').each do |node|
      @array_value << node.text 
   end
end


def chrono 
   while true 
      crypto_name  
      crypto_val  
      puts Hash[@array_name.zip(@array_value)] 
      sleep 3600 
   end
end

chrono 
