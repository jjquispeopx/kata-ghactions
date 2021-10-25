backend-up:
	cd backend && \
	npm start

frontend-up:
	cd frontend && \
	npm start

frontend-build-image:
	docker build -f frontend/Dockerfile -t front:v0.1 frontend/

frontend-build:
	cd backend && \
	npm install
