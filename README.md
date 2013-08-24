# Minecraft Server Docker Container

This is a minecraft server Docker container.

Just a proof of concept for now. More info will come in the future.

This uses `mcwrapper` to control and configure the server. It's using an undocumented `start-foreground`
feature, so backups and asynchronous commands are not supported. In the future, this should be fixed.
I'm still learning.

## To use:

 1. install docker (http://docker.io)
 2. `docker run spikegrobstein/minecraft_server start-foreground`

