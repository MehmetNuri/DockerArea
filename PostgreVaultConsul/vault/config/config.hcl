storage "file" {
  path = "/vault/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

telemetry {
  statsd_address = "statsd_exporter:9125"
}

default_lease_ttl = "168h"
max_lease_ttl = "720h"

ui = true
