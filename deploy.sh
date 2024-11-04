#!/bin/bash
eval $(minikube docker-env)
docker rmi flask-backend
docker build -t flask-backend ./backend
sh ./cleanup.sh -all
kubectl apply -f database/
kubectl apply -f backend/
kubectl apply -f jobs/
kubectl apply -f ./backend/backend-pvc.yaml