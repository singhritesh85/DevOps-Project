variable "application_loadbalancer_name" {

}
variable "internal" {

}
variable "load_balancer_type" {

}
variable "subnets" {

}
variable "security_groups" {     ## Security groups are not supported for network load balancers

}
variable "enable_deletion_protection" {

}
variable "s3_bucket_exists" {

}
variable "access_log_bucket" {

}
variable "prefix" {

}
variable "idle_timeout" {

}
variable "enabled" {

}
variable "target_group_name" {

}
variable "instance_port" {    #### Don't apply when target_type is lambda

}
variable "instance_protocol" {          #####Don't use protocol when target type is lambda

}
variable "target_type_alb" {

}
variable "vpc_id" {

}
variable "load_balancing_algorithm_type" {

}
variable "healthy_threshold" {

}
variable "unhealthy_threshold" {

}
variable "healthcheck_path" {

}
variable "ec2_instance_id" {

}
variable "timeout" {

}
variable "interval" {

}
variable "ssl_policy" {

}
variable "certificate_arn" {

}
variable "type" {

}
variable "env" {

}
