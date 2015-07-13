base_path = File.expand_path(File.dirname(__FILE__))
Dir.glob(base_path + "**/*") do |path|
  next if File.directory?(path)
  puts "file: #{path}"
  puts "----:" + "-" * 75
  File.open(path, "r").each_with_index do |line, index|
    puts "#{'%04d' % index}: #{line}"
  end
  puts "\n"
end
