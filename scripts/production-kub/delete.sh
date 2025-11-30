# 
# Remove containers from Kubernetes.
#
# Usage:
#
#   ./scripts/production-kub/delete.sh
#

#kubectl delete -f rabbit.yaml
#kubectl delete -f mongodb.yaml

envsubst < rabbit.yaml | kubectl delete -f -
envsubst < mongodb.yaml | kubectl delete -f -
envsubst < metadata.yaml | kubectl delete -f -
envsubst < history.yaml | kubectl delete -f -
envsubst < mock-storage.yaml | kubectl delete -f -
envsubst < video-streaming.yaml | kubectl delete -f -
envsubst < video-upload.yaml | kubectl delete -f -
envsubst < gateway.yaml | kubectl delete -f -