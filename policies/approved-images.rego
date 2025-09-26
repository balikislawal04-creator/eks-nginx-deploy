package kubernetes.resources

approved_images = {
  "nginx:1.25-alpine",
  "bitnami/nginx:latest",
  "cgr.dev/chainguard/nginx"
}

deny[msg] {
  some i
  image := input.spec.containers[i].image
  not image in approved_images
  msg = sprintf("Image '%s' is not approved", [image])
}

