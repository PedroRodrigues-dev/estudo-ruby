puts '--List--'

file = File.open(File.dirname(__FILE__) + '/21-read-write-file.txt')

file.each do |line|
    puts line
end

File.open(File.dirname(__FILE__) + '/21-read-write-file.txt', 'a') do |line|
    line.puts('pineapple')
    line.puts('fig')
    line.puts('melon')
end