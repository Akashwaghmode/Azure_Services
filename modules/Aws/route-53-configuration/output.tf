output "route53_zone_id" {
  description = "ID of the Route 53 hosted zone"
  value       = aws_route53_zone.zone.zone_id
}

output "route53_zone_name_servers" {
  description = "Name servers of the Route 53 hosted zone"
  value       = aws_route53_zone.zone.name_servers
}

output "route53_record_fqdn" {
  description = "Fully Qualified Domain Name (FQDN) of the Route 53 record"
  value       = aws_route53_record.record.fqdn
}
