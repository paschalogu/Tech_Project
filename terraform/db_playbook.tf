resource "aws_db_instance" "cloudboosta_db" {
  count             = 2
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t2.micro"
  db_name           = "cloudboosta_name"
  username          = "admin"
  password          = "password"
  skip_final_snapshot = true

 vpc_security_group_ids = [aws_security_group.candidate1_sg.id]

  tags = {
    Name = "cloudboosta-database-${count.index+1}"
  }
}
