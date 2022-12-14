resource "aws_db_instance" "bar" {
  allocated_storage = 10
  engine            = "aurora-postgresql"
  instance_class    = "db.t2.micro"
  name              = "baz"
  password          = "barbarbarbar"
  username          = "foo"

  maintenance_window      = "Fri:09:00-Fri:09:30"
  backup_retention_period = 0
  parameter_group_name    = "default.mysql5.6"
}

resource "aws_db_snapshot" "test" {
  db_instance_identifier = aws_db_instance.bar.id
  db_snapshot_identifier = "testsnapshot1234"
}

resource "aws_db_cluster_snapshot" "example" {
  db_cluster_identifier          = aws_db_instance.bar.id
  db_cluster_snapshot_identifier = "resourcetestsnapshot1234"
}