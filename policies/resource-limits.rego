package kubernetes.resources

deny[msg] {
  not input.spec.containers[_].resources.limits
  msg = "Resource limits must be set for all containers"
}

