kubectl create secret docker-registry ghcr-chordpli-secret \
  --namespace chordpli-app \
  --docker-server=ghcr.io \
  --docker-username=<PAT를_생성한_GitHub_사용자명> \
  --docker-password=<Organization_패키지접근_PAT값> \
  --docker-email=<GitHub_계정_이메일>