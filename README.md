# terraform-jenkins-eks
Steps for running the project

configure aws keys with 
``aws configure
``
or You can add keys in provider and backend for ease 

``cd Jenkins Server
``
create the bucket with the same name first. Make sure the bucket name is same. 
``
terraform init
``
if the pipeline fails here 
apply the command as ``terraform init -reconfigure``

``terraform plan``

``terraform apply --auto-approve``

go to aws console and check the instance 
Instance with Jenkins server will be up
Copy the public ip address and run it with port 8080
connect to ec2 instance and get the password

now create your user and username password when asked. 

Create a new pipeline, give it a name you like 

Paste the jenkins file from this repo 

Save the pipeline

Go to credentials, global, and create credentials

in credentials, create a secret text and add ID as ``AWS_ACCESS_KEY_ID`` and give your access key as secret,  save the file. 

again create another secret text and add ID as ``AWS_SECRET_ACCESS_KEY``  and give your secret access keys and save the file. 

run the pipeline. 

if the pipeline fails in init stage 
apply the command as ``terraform init -reconfigure``

Solve issues by yourself using chatgpt, stakoverflow. 

 Let me know if you have any doubts then 


 if you want to change anything in EKS folder save it 

 and run this command. 
 ``git add .``
 ``git commit -m "infra-modified``
 ``git push -u origin master``

 






