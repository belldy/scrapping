require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rspec'




def get_townhall_urls
  
  url_list = []

  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

  url = page.xpath('//p/a/@href').each do |url| 
    url_list << url.to_s.slice(1..-1)
  end

 
  return url_list

end

puts get_townhall_urls



def get_townhall_email

  page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
  #page = Nokogiri::HTML(open(result))

  email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()').each do |email| 
    return email
  end

end

puts get_townhall_email


=begin
def get_all_townhall_emails

  all_emails = []

  get_townhall_urls.each do |url|

  all_emails << get_townhall_email(url)

  end

  return all_emails

end

puts get_all_townhall_emails

=end


