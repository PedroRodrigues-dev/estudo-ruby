require 'nokogiri'
require 'net/http'

def get_h1
    https = Net::HTTP.new('onebitcode.com', 443)

    https.use_ssl = true

    response = https.get('/')

    doc = Nokogiri::HTML(response.body)

    h1 = doc.at('h1')
    puts h1.content
end

def get_posts
    https = Net::HTTP.new('onebitcode.com', 443)

    https.use_ssl = true

    response = https.get('/')

    doc = Nokogiri::HTML(response.body)

    last_post = doc.search('h3 a').each do |a|
        puts a.content
        puts a['href']
        puts ''
    end
end

get_posts