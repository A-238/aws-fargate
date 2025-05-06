locals {
  name_prefix  = "example"
  service_name = "foobar"

  nat_gateway_azs = var.single_nat_gateway ? { keys(var.azs)[0] = values(var.azs)[0] } : var.azs
}
