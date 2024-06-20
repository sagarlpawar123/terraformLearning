resource "aws_instance" "web" {
    # copy file from local to remote host
provisioners "file" {
    source      = "conf/myapp.conf  "
    destination = "/etc/myapp.conf"
} 
}