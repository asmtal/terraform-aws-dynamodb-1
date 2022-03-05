output "id" {
  value       = aws_dynamodb_table.this.id
  description = "ID of the created table"
}
output "arn" {
  value       = aws_dynamodb_table.this.arn
  description = "ARN of the created table"

}
output "hash_key" {
  value       = aws_dynamodb_table.this.hash_key
  description = "Hash key field for the table"

}
