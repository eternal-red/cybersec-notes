#### startup
- start: start box
- exec -it \[box\] \[shell\]:  start running box
- you must create the docker container with a shell or you can't actually enter it
	- docker run -it \<image name\>

####  issues
- how to run multiple containers?
- how to connect something to passthru?


create a new container that is connected to a local folder
- docker --name box1 -v $(pwd):passthru -it bash
