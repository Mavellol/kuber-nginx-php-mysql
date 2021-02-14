buildKubeImage:
	docker build -t mavellol/telepresence-db --file ./.docker/db/Dockerfile .
	docker build -t mavellol/telepresence-php --file ./.docker/php/Dockerfile .
	docker build -t mavellol/telepresence-nginx --file ./.docker/nginx/Dockerfile .

pushKubeImage:
	docker push mavellol/telepresence-db
	docker push mavellol/telepresence-php
	docker push mavellol/telepresence-nginx

createKube:
	kubectl create -f ./.kube

deleteKube:
	kubectl delete -f ./.kube

buildDevImage:
	docker build -t telepresence-dev --file ./.docker/php_nginx_dev/Dockerfile .

telepresence: buildDevImage
	telepresence --swap-deployment telepresence-php --docker-run --name tele-dev --rm -v$(pwd)/web:/var/www/html telepresence-dev