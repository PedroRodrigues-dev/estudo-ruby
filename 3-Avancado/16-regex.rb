puts /by/ =~ 'ruby'

phrase = 'Hello, how are you?'

match_data = /how/.match(phrase)

puts match_data
puts match_data.pre_match
puts match_data.post_match

puts /\?/.match(phrase)

puts /[1-5]/.match('123')
puts /[2-5]/.match('123')
puts /[3-5]/.match('123')
puts /[4-5]/.match('123')

puts /[A-Z]/.match('LoCaTion, Test At me POo')
puts /[A-Z]{2}/.match('LoCaTion, Test At me POo')
puts /[A-Z]\d/.match('A6')