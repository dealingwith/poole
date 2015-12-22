
require 'open-uri'
require 'timeout'

Dir.glob('*.markdown') do |rb_file|
  f = File.read(rb_file)
  f.scan(/\[(https?:\/\/\S+?)[\]\s]/i) { |r|
    error = false
    begin
      Timeout.timeout(5) do
        puts open(r[0]).status
      end
    rescue => e
      error = true
      puts e
    end
  }

end