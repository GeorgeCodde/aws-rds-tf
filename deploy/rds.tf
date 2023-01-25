


resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_security_group" "sg-rds" {
  vpc_id      = aws_vpc.vpc_rds_test.id
  name        = var.security_group
  description = "Allow all inbound for Postgres sonarqube"
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "sub_g_rds_test" {
  name       = "te-sonarqube"
  subnet_ids = [aws_subnet.subnet_a.id ,aws_subnet.subnet_b.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "dbrdstest" {
  identifier             = var.db_instance_id
  db_name                = var.db_name
  instance_class         = var.db_instance_type
  allocated_storage      = var.db_instance_storage
  engine                 = var.db_instance_engine
  engine_version         = var.db_instance_engine_version
  skip_final_snapshot    = var.db_instance_skip_final_snapshot
  publicly_accessible    = var.db_instance_publicly_accessible
  vpc_security_group_ids = [aws_security_group.sg-rds.id]
  username               = var.db_username
  password               = random_password.password.result
  db_subnet_group_name   = aws_db_subnet_group.sub_g_rds_test.name
}
