variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    default = [
        # databases
        "mysql",

        # backend
        "backend",

        # frontend
        "frontend"
    ]
}