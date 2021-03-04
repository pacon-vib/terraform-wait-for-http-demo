# terraform-wait-for-http-demo
In a Terraform config, you can use an `external` data source with `curl` to cause `apply` to wait until a URL returns a favourable response before proceeding, e.g. to wait for a host to come up.

See the commit history on this repo for some more specific examples of `external` data source behaviour.

To test this, run `netcat` in a loop in a second terminal:
```bash
$ while true; do echo "Starting server..."; nc -v -l 7777; done
```

Then run Terraform like so:
```bash
$ TF_VAR_test_url="http://localhost:7777" terraform apply -auto-approve
```

When you want to send a favourable response, paste in the following (with the two trailing newlines) and hit `^D` to flush it through to `curl`:
```http
HTTP/2 200 OK


```
