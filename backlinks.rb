link_count = 0
file_count = 0

Dir.foreach('_posts') do |filename|
  next if filename == '.' or filename == '..'
  file = File.open("_posts/" + filename)
  file_data = file.read
  # INTERNAL links only (start with /)
  # e.g. [internal link](2020/01/01)
  links = file_data.scan(/\[(.+?)\]\((.+?)\)/)
  # array of arrays?
  links.each do |link|
  	# each has 2, one for each capture group?
  	puts 'cg0: ' + link[0]
  	puts 'cg1: ' + link[1]
  end
  file_count = file_count + 1
  if file_count > 1000 
		break
	end
end
