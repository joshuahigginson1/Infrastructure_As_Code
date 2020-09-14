output "Intermediate_Node_1_IP" {
  value = module.AWS_WebServer_EC2_Node1.PublicEC2IP
}

output "Intermediate_Node_2_IP" {
  value = module.AWS_WebServer_EC2_Node2.PublicEC2IP
}