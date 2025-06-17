output "security_group_ids" {
  description = "Map of Security Group names and their IDs"
  value       = { for name, sg in aws_security_group.this : name => sg.id }
}
