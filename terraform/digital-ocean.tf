provider "digitalocean" {
  # in order to use this you must have an environment variable for your API token set like below
  # export DIGITALOCEAN_TOKEN=ABDC123...
  # you can make one here: https://cloud.digitalocean.com/settings/api/tokens
  # or you can hardcode it right in here too...
}

resource "digitalocean_ssh_key" "local_id_rsa" {
  name = "local_id_rsa"
  # you probably have one of these, if you don't or want to use another one make it with ssh-keygen
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "digitalocean_droplet" "demo" {
  ssh_keys           = ["${digitalocean_ssh_key.local_id_rsa.id}"] #created above
  image              = "ubuntu-16-04-x64"
  region             = "sfo2"
  size               = "2gb"
  name               = "docker${count.index}"
  count              = 4
}