kubectl --context v6node create secret docker-registry regcred \
  --docker-server=https://index.docker.io/v1/ \
  --docker-username=tomarrell \
  --docker-password=$1 \
  --docker-email=tom.arrell@gmail.com
