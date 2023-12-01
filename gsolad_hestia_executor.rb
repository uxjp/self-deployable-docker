require './ouroborus/lib/ouroborus/executor.rb'
require './ouroborus/lib/ouroborus/container.rb'
require 'dotenv/load'  # gem install dotenv

docker_socket = "/var/run/docker.sock"

base_username = ENV['BASE_USERNAME']
base_password = ENV['BASE_PASSWORD']
host_base = ENV['HOST_BASE']
gsolad_host_name = ENV['GSOLAD_HOST_NAME']


gsolad_img = "registry.gitlab.com/softsite/geosales/gsolad:2023.10.25"

commands_to_execute = lambda do |wr|
  wr.puts "docker run -p 8025:8091 --add-host=#{gsolad_host_name} -e BASE_USERNAME=#{base_username} -e BASE_PASSWORD=#{base_password} -e HOST_BASE=#{host_base} --name GSOLAD #{gsolad_img}"
end

Ouroborus::HestiaExecutor.run(dockerSocket: docker_socket, &commands_to_execute)
