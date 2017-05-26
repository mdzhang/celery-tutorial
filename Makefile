redis:
	docker run -d -p 6379:6379 redis:3.2

start:
	celery -A tasks worker --loglevel=info

redsmin-connect:
	docker run -it --rm --name redsmin-proxy -e REDSMIN_KEY=${REDSMIN_KEY} -e REDIS_URI=${REDIS_URI} redsmin/proxy

rc: redsmin-connect

redsmin-open:
	open https://app.redsmin.com/server/${REDSMIN_SID}

ro: redsmin-open