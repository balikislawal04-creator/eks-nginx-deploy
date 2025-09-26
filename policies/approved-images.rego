package kubernetes.images

deny[msg] {
  not startswith(input.spec.containers[_].image, "ghcr.io/balikislawal04-creator/")
  msg = "Image must be from approved registry"
}

