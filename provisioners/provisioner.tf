provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4AUBBJOS7ELV6TNN"
  secret_key = "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"
}

resource "aws_instance" "ec2instance" {
  ami              = "ami-0ecb62995f68bb549"
  instance_type    = "t2.micro"
  key_name = "jp"

    provisioner "remote-exec" {
        on_failure = continue
      inline = [
        "sudo apt update -y",
        "sudo apt install apache2 -y",
        "sudo service apache2 reload"
       ]
    }

    provisioner "remote-exec" {
      when = destroy
      inline = [ "sudo apt remove apache2 -y" ] 
    }
   
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("./jp.pem")
      host = self.public_ip
    }
    }