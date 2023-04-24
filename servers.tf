## to get the data w.respect to the existing resources
data "aws_ami" "centos" {
  most_recent      = true
  name_regex       = "Centos-8-Devops-Practice"
  owners           = ["269533346076"]
}
 ## using outputs we can just see the result in the console
output "ami" {
  value = "data.aws_ami.centos.image_id"
}

resource "aws_instance" "frontend" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

# creating DNS records for frontend in terraform
resource "aws_route53_record" "frontend" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "frontend-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
output "frontend" {
  value = "aws_instance.frontend.public_ip"
}

resource "aws_instance" "mongodb" {
  ami           = "data.aws_ami.centos.image_id" # instead of hardcoding the ami in all the servers lets it read  from value
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
# creating DNS records for mongodb in terraform
resource "aws_route53_record" "mongodb" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "mongodb-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
# creating DNS records for catalogue in terraform
resource "aws_route53_record" "catalogue" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "catalogue-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "redis" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
# creating DNS records for redis in terraform
resource "aws_route53_record" "redis" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "redis-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "user" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
# creating DNS records for user in terraform
resource "aws_route53_record" "user" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "user-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "cart" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
# creating DNS records for cart in terraform
resource "aws_route53_record" "cart" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "cart-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
# creating DNS records for mysql in terraform
resource "aws_route53_record" "mysql" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "mysql-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
# creating DNS records for shipping in terraform
resource "aws_route53_record" "shipping" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "shipping-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
# creating DNS records for rabbitmq in terraform
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "rabbitmq-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "payment" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}
# creating DNS records for payment in terraform
resource "aws_route53_record" "payment" {
  zone_id = "Z0430325LHAYV8KJ21BV"
  name    = "payment-dev.bobbydevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}