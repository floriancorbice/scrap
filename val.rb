require 'nokogiri'
require 'rubygems'
require 'open-uri'


def get_all_emails

	doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
	doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]').each do |node|
	  puts node.text
	
end
end



def get_all_the_urls_of_val_doise_townhalls

    page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
liens = page.css ("a")
liens.each{|liens| puts liens ['href']}

end



print 
print 
print 'adresse mail vaureal'
puts get_all_emails

puts get_all_the_urls_of_val_doise_townhalls
