output "sg_id" {
    value = module.security_group[*].sg_id
}