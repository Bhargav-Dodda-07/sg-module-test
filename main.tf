module "security_group" {
    source = "git::https://github.com/Bhargav-Dodda-07/terraform-aws-sg.git?ref=main"

    count = length(var.sg_names)
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_names[count.index]
    sg_description = "Created for ${var.sg_names[count.index]}"
    vpc_id = data.aws_vpc.default.id
}