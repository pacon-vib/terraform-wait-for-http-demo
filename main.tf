resource "null_resource" "a" {
  triggers = {
    foo = "bar"
  }
}

variable "test_url" {
  default = "https://httpbin.org/status/200"
}

data "external" "wait" {
  program = ["./wait_for_url", var.test_url]

  query = {
    //url = var.test_url
  }

  depends_on = [
    null_resource.a
  ]
}

resource "null_resource" "b" {
  triggers = {
    quz = "qux"
  }

  depends_on = [
    data.external.wait
  ]
}
