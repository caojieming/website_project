dev:
	hugo server -D

deploy:
	hugo -D && ./deploy.sh
