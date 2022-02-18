require 'os'

def my_os
    if OS.windows?
        return "Windows"
    elsif OS.linux?
        return "Linux"
    elsif OS.mac?
        return "OSX"
    else
        "Undefined"
    end
end

puts "Cores: #{OS.cpu_count}, Bits: #{OS.bits}, OS: #{my_os}"