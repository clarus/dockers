# encoding: utf-8
# Runs Docker sequentially on each directory.
# Not threaded because it was to complex to properly stop all the subprocesses in case of abort.

docker = "docker.io"

puts "Running the Docker files. May take time. The logs are in *.log."
Dir.glob("*") do |folder|
  if File.directory?(folder) then
    command = "#{docker} build --no-cache #{folder} >#{folder}.log"
    if system(command) then
      puts " \e[1;32m✓\e[0m #{command}"
    else
      puts " \e[31m✗\e[0m #{command}"
    end
  end
end