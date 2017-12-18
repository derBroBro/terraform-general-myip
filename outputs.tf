output "ip"{
  description = "Your public IP address."
  value = "${replace(data.http.myip.body,"\n","")}"
}
output "ip_sn"{
  description = "Your public IP address as 32."
  value = "${replace(data.http.myip.body,"\n","")}/32"
}