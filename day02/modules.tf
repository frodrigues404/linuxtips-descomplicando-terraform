module "server" {
  source   = "./module"
  servers  = 2
  image_id = "ami-08d4ac5b634553e16"
}