# encoding: utf-8
# Runs Docker sequentially on each directory.
# Not threaded because it was to complex to properly stop all the subprocesses in case of abort.

docker = "docker.io"
init_time = Time.now

puts "Running the Docker files. May take time. The logs are in *.log."
Dir.glob("*") do |folder|
  if File.directory?(folder) then
    command = "#{docker} build --no-cache #{folder} >#{folder}.log"
    starting_time = Time.now
    if system(command) then
      print " \e[1;32m✓\e[0m "
    else
      print " \e[31m✗\e[0m "
    end
    duration = (Time.now - starting_time).to_i
    puts "#{command} (#{duration} s)"
  end
end

total_duration = (Time.now - init_time).to_i
puts "Total duration: #{total_duration} s."