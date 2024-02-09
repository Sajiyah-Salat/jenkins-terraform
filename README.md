Certainly, here is a reformatted version of the provided steps:

1. Configure AWS keys using either:
   ```
   aws configure
   ```
   Or add keys in the provider and backend for convenience.

2. Navigate to the Jenkins Server directory:
   ```
   cd Jenkins Server
   ```

3. Create a bucket with the same name as mentioned in the project. Ensure the bucket name is the same.

4. Initialize Terraform:
   ```
   terraform init
   ```
   If the pipeline fails, reapply with:
   ```
   terraform init -reconfigure
   ```

5. Plan the Terraform deployment:
   ```
   terraform plan
   ```

6. Apply the Terraform changes:
   ```
   terraform apply --auto-approve
   ```

7. Check the AWS console for the deployed instance. Copy the public IP address and access it with port 8080.

8. Connect to the EC2 instance and retrieve the password.

9. Create your user and set up the username and password when prompted.

10. Create a new pipeline in Jenkins, providing a name of your choice.

11. Paste the Jenkinsfile from the repository into the pipeline configuration and save.

12. In Jenkins credentials, create global credentials:
    - Create a secret text with ID as `AWS_ACCESS_KEY_ID` and your access key as the secret. Save the credentials.
    - Create another secret text with ID as `AWS_SECRET_ACCESS_KEY` and your secret access key as the secret. Save the credentials.

13. Run the pipeline.

14. If the pipeline fails at the init stage, apply the command:
    ```
    terraform init -reconfigure
    ```

15. Resolve any issues using ChatGPT, StackOverflow, or other resources.

16. If you make changes in the EKS folder, save and commit using Git:
    ```
    git add .
    git commit -m "infra-modified"
    git push -u origin master
    ```

Feel free to ask if you have any doubts.