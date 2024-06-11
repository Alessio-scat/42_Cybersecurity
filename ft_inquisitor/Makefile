SERVER	:= server
CLIENT	:= client


.PHONY: all clean prune fclean server client inquisitor show

all:
	docker-compose up --build

clean:
	docker-compose down

prune:
	-docker system prune -f -a 

fclean:
	-docker stop $(shell docker ps -qa) 2>/dev/null
	-docker rm $(shell docker ps -qa) 2>/dev/null
	-docker rmi -f $(shell docker images -qa) 2>/dev/null
	-docker volume rm $(shell docker volume ls -q) 2>/dev/null
	-docker network rm $(shell docker network ls -q) 2>/dev/null

server:
	docker exec -it server /bin/sh

client:
	docker exec -it client /bin/sh

inquisitor:
	docker exec -it inquisitor /bin/bash

IP_SV := $(shell docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(SERVER))
MAC_SV := $(shell docker inspect --format='{{range .NetworkSettings.Networks}}{{.MacAddress}}{{end}}' $(SERVER))
IP_CL := $(shell docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(CLIENT))
MAC_CL := $(shell docker inspect --format='{{range .NetworkSettings.Networks}}{{.MacAddress}}{{end}}' $(CLIENT))

show:
	@echo "Execute: "
	@echo python3 ./inquisitor.py $(IP_SV) $(MAC_SV) $(IP_CL) $(MAC_CL)