keys:
	ssh-keygen -f mykey

init:
	terraform init 

plan:
	terraform plan --out jenkins.tfplan 

apply:
	time terraform apply -auto-approve "jenkins.tfplan"

destroy:
	terraform destroy -auto-approve 
	rm -rf .terraform 
	rm -f jenkins.tfplan 
	rm -f terraform.*
	

# http://3.222.192.147:8080
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword

ssh:
	ssh ubuntu@3.222.192.147 -i mykey

