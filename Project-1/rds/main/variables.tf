variable "region" {
  description = "The region into which to create the RDS"
  type = string
}
variable "identifier" {
  description = "Provide the DB Instance Name"
  type = string
}
variable "db_instance_count" {
  description = "Provide the number of DB Instances to be launched"
  type = number
}
#variable "read_replica_identifier" {
#  description = "Provide the Read-Replica DB Instance Name"
#  type = string
#}
variable "allocated_storage" {
  description ="Memory Allocated for RDS"
  type = number
}
variable "max_allocated_storage" {
  description = "The upper limit to which Amazon RDS can automatically scale the storage of the DB instance"
  type = number
}
#variable "read_replica_max_allocated_storage" {
#  description = "The upper limit to which Amazon RDS Read Replica can automatically scale the storage of the DB instance"
#  type = number
#}
variable "storage_type" {
  description = "storage type of RDS"
  type = list
}
#variable "read_replica_storage_type" {
#  description = "storage type of RDS Read Replica"
#  type = string
#}
variable "engine" {
  description = "Engine of RDS"
  type = list
}
variable "engine_version" {
  description = "Engine Version of RDS"
  type = list
}
variable "instance_class" {
  description = "DB Instance Type"
  type = list
}
#variable "read_replica_instance_class" {
#  description = "DB Instance Type of Read Replica"
#  type = list
#}
variable "rds_db_name" {
  description = "Provide the DB Name"
  type = string
}
variable "username" {
  description = "Provide the DB Instance username"
  type = string
}
variable "password" {
  description = "Provide the Password of DB Instance"
  type = string
}
variable "parameter_group_name" {
  description = "Parameter Group Name for RDS"
  type = list
}
variable "multi_az" {
  description = "To enable or disable multi AZ"
  type = list
}
#variable "read_replica_multi_az" {
#  description = "To enable or disable multi AZ"
#  type = list
#}
#variable "final_snapshot_identifier" {
#  description = "Provide the Final Snapshot Name"
#  type = string
#}
variable "skip_final_snapshot" {
  description = "To skip Final Snapshot before deletion"
  type = list
}
#variable "copy_tags_to_snapshot" {
#  description = "Copy Tags to Final Snapshot"
#  type = list
#}
variable "availability_zone" {
  description = "Availabilty Zone of the RDS DB Instance"
  type = list
}
variable "publicly_accessible" {
  description = "To make RDS publicly Accessible or not"
  type = list
}
variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate"
  type = list
}
#variable "read_replica_vpc_security_group_ids" {
#  description = "List of VPC security groups to br associated with RDS Read Replica"
#  type = list
#}
#variable "backup_retention_period" {
#  description = "The days to retain backups for. Must be between 0 and 35"
#  type = list
#}
variable "kms_key_id" {
  description = "ARN of Kms Key Id to encrypt the RDS Volume"
  type = string
}
#variable "read_replica_kms_key_id" {
#  description = "ARN of Kms Key Id to encrypt the RDS Volume of Read Replica"
#  type = string
#}
variable "monitoring_role_arn" {
  description = "ARN of IAM Role to enable enhanced monitoring"
  type = string
}
variable "enabled_cloudwatch_logs_exports" {
  description = "Which type of Logs to enable"
  type = list
}
variable "env" {
  description = "Provide the Environment into which the RDS DB Instance to be launched"
  type = list
}
