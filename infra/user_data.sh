sudo su
yum update -y
yum install -y docker
service docker start
usermode -a -G docker ec2-user
