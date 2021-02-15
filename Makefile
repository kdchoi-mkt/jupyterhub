docker:
	docker build -t jupyterhub . && docker rm -f jupyterhub && docker run -d -p 8000:8000 --name jupyterhub -v "$PWD":"/workspace" jupyterhub && docker exec -it jupyterhub bash