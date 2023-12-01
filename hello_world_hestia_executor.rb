require './ouroborus/lib/ouroborus/executor.rb'
require './ouroborus/lib/ouroborus/container.rb'

docker_socket = "/var/run/docker.sock"

commands_to_execute = lambda do |wr|
  wr.puts "docker run hello-world"
end

Ouroborus::HestiaExecutor.run(dockerSocket: docker_socket, &commands_to_execute)
