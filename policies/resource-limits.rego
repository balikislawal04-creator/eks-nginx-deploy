package kubernetes.resources

deny[msg] {
  some i
  not input.spec.containers[i].resources.limits
  msg = "Resource limits must be set for all containers"
}

