backend-start:
	cd backend && \
	npm start

frontend-start:
	cd frontend && \
	npm start

frontend-build:
	docker build -f frontend/Dockerfile -t front:v0.1 frontend/
