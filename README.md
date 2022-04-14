# Capstone for Cognixia's DevOps Course

The goal here was to employ a Jenkins pipeline utilizing the principles and software taught to us over this 2 month period.

## Tools and project structure

In this repository, I used a simple create-react-app and containerized this application with Dockerfile and docker-compose. After this, I spun up an EC2
instance in AWS (Amazon Web Services) and installed Jenkins as well as Docker on the platform. The next step was to make sure I had the correct plugins installed
for this task. Anything associated with npm, nodejs, EC2, ECS, ECR, AWS, and docker I took. Creating credentials in Jenkins and configuring the instance with my AWS account comes next.

After all the setup work is finished, we are going to have Jenkins detect our code on github and read our Jenkinsfile (written with Groovy) with steps to automate our build stages when we hit the build button. The Jenkinsfile will build our image, then push that image to our designated AWS ECR, and then read from the jenkins_ecr.sh script that uses ecs-cli commands to spin up and determine EC2 clusters.

When all is said and done, we will have 2 EC2 t2.micro instances with a create-react-app installed on it with both in a cluster in AWS ECS.
