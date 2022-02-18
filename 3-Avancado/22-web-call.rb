require 'net/http'

def use_http
    example_http = Net::HTTP.get('example.com', '/index.html')

    File.open('example_http.html', 'w') do |line|
        line.puts(example_http)
    end
end

def use_https
    example_https = Net::HTTP.new('reqres.in', 443)

    example_https.use_ssl = true 

    response = example_https.get('/api/users')

    puts response.code
    puts response.message
    puts response.body
end

def use_post
    req = Net::HTTP::Post.new('/api/users')
    req.set_form_data({name:'Mario', job:'Encanador'})

    response = Net::HTTP.start('reqres.in', use_ssl: true) do |https|
        https.request(req)
    end

    puts response.code
    puts response.message
    puts response.body
end

use_post