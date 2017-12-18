# Description

This module returns you public IP.

# Usage

```hcl
module "me" {
  source   = "zoitech/myip/general"
}

resource "aws_security_group" "me" {
  name = "allow-me"
  ingress {
      from_port = 3389
      to_port = 3389
      protocol = "tcp"
      cidr_blocks = ["${module.me.ip_sn}"]
  }
}
```

# Authors
This module is maintained by [Zoi](https://github.com/zoitech).

# License
Licensed under the MIT License. Have a look at the file `LICENSE` for more information.
