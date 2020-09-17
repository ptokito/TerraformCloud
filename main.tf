provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags  {
    Name = "web server"
  }
  depends_on = [aws_instance.myec2db]
}


resource "aws_instance" "myec2db" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags   {
    Name = "db server"
  }
}

resource "aws_instance" "myec2db2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags   {
    Name = "db server"
  }
}

resource "aws_instance" "myec2db3" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags   {
    Name = "db server"
  }
}
