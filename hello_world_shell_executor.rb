require './ouroborus/lib/ouroborus/executor.rb'
require './ouroborus/lib/ouroborus/container.rb'

hello_container = Ouroborus::Container.new name: "hestia", image: "hestia", tag: "latest"
hello_container.volume("/var/run/docker.sock", "/var/run/docker.sock")
hello_container.args << "--" << "run" << "--name" << "HELLO-WORLD" << "hello-world"
hello_container.daemon = false

shell_executor = Ouroborus::ShellExecutor.new()
shell_executor.exec(hello_container.to_s)
