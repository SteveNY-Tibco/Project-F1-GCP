docker build -t bigoyang/f1-proxy:latest -t bigoyang/f1-proxy:$SHA ./services/proxy/Dockerfile ./services/proxy

docker push bigoyang/f1-proxy:latest
docker push bigoyang/f1-proxy:$SHA

kubectl apply -f k8s

kubectl set image deployments/proxy-deployment proxy=bigoyang/f1-proxy:$SHA
