ui = true

storage "postgresql" {
  connection_url = "postgres://vault:123456Aa%40@postgres:5432/vault?sslmode=disable"
}

listener "tcp" {
 address     = "0.0.0.0:8200"
 tls_disable = 1
}