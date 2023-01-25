output "End_Point_DB" {
  description = "End point of the database"
  value       = aws_db_instance.dbrdstest.endpoint
}

output "db_name" {
  description = "Name of the database"
  value       = aws_db_instance.dbrdstest.db_name
}

output "user_db" {
  description = "User of the database"
  value       = aws_db_instance.dbrdstest.username
}

output "password_db" {
  description = "Password of the database"
  value       = random_password.password.result
  sensitive = true
}

