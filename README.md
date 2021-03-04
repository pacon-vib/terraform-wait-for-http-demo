# terraform-wait-for-http-demo
In a Terraform config, you can use an `external` data source with `curl` to cause `apply` to wait until a URL returns a favourable response before proceeding, e.g. to wait for a host to come up.

See the commit history on this repo for some more specific examples of `external` data source behaviour.
