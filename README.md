# Kubectl image with envsubst

This image provides **`kubectl`** `1.29.2` installation with `envsubst` support.

# Usage

```Dockerfile
FROM scaffoldeducation/kubectl:1.29.2
```

You can use it in a Gitlab CI pipeline:

```yml
deploy:
  stage: deploy
  image: scaffoldeducation/kubectl:1.29.2
  before_script: for file in ci/k8s/*.yml; do envsubst < $file >> k8s-manifest.yml; done
  script: kubectl apply -f k8s-manifest.yml
```