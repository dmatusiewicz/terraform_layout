resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCdlr2AuofSPdo/7IkpTY1WEUzBdsXQ0nKfdPspU89Dcvt089K8ddg4apaCOdoAAAZaveXzJ2rSpET5srYsbiTwaAOmyZ23jkjHYF/ZX3/TQdSxRkJj6LRcIh6jea/5xSVYzoQqdOMSA+bzDMG49H+W2CPC8cS5hPV3FXCpAeFKrHl1LgittW1giV0Xbd5OsXblKEUMfoTB+J0p3f3ihnifiBixI0zB8c/ChTmWabVd/QK1FT7f0u8adnv/dtHz6XfkZ7AeVn57MN6FeYnq8QtVRol2/RhyLkRqHgYu3maQxsU87MmRCHUZuB7GIiA6+4FXWftTxVl8LjjQIOOV7dUL dawidm@Angel.local"
}
