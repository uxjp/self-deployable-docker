require './ouroborus/lib/ouroborus/executor.rb'
require './ouroborus/lib/ouroborus/container.rb'
require 'dotenv/load'  # gem install dotenv

base_username = ENV['BASE_USERNAME']
base_password = ENV['BASE_PASSWORD']
host_base = ENV['HOST_BASE']
gsolad_host_name = ENV['GSOLAD_HOST_NAME']

gsolad_img = "registry.gitlab.com/softsite/geosales/gsolad:2023.10.25"

gsolad_container = Ouroborus::Container.new name: "hestia", image: "hestia", tag: "latest"
gsolad_container.volume("/var/run/docker.sock", "/var/run/docker.sock")

gsolad_container.args << "--" << "run" << "--add-host=#{gsolad_host_name}" << "-e" << "BASE_USERNAME=#{base_username}" << "-e" << "BASE_PASSWORD=#{base_password}" << "-e" << "HOST_BASE=#{host_base}" << "--name" << "GSOLAD" << gsolad_img
gsolad_container.daemon = false

#puts gsolad_container.to_s
shell_executor = Ouroborus::ShellExecutor.new()
shell_executor.exec(gsolad_container.to_s)
