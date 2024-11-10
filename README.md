                     CI/CD Pipeline for Spring Boot Application with REST API using Jenkins

This repository provides instructions for setting up a CI/CD pipeline for deploying a Spring Boot application with REST API endpoints using Jenkins. This setup is ideal for automating the build and deployment process in development, staging, and production environments.


Prerequisites

      1.Jenkins - Installed and configured.

      2.Docker - Installed for containerizing the application.

     3.Git - Source code repository with the Spring Boot application.

     4.Java JDK 17 - For running the Spring Boot application.

     5.Maven - For building the Java application.

     6. ec2 instance


Pipeline Workflow

     1.Code Checkout - Clone the application code from a Git repository.

     2.Build - Use Maven to build the Spring Boot application.

     3.Dockerize - Build a Docker image of the application.

     4.Push to Docker Hub - Push the Docker image to Docker Hub.

     5.Deploy - Deploy the application to the target environment.


step 1:

    -create a EC2 Ubuntu instance


step 2:

     -Install jenkins on ec2 Ubuntu machine

     sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  
     https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

     echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
 
     https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
 
     /etc/apt/sources.list.d/jenkins.list > /dev/null

     sudo apt-get update

     sudo apt-get install jenkins



step 3:
     install jdk17

     first update the ubuntu then install jdk17

     sudo apt update

     sudo apt install fontconfig openjdk-17-jre


step 4:

     install docker

    sudo apt-get install docker.io


step 5:

    install docker-compose

    sudo apt-get install docker-compose-v2



step 6:

    Start and Check jenkins server is active or failed

    sudo systemctl start jenkins

    sudo systemctl status jenkins



step 7:

     set up jenkins and their pluggins


step 8:

    create a pipeline script and set jenkins pipeline credentials



step 9:

    Accessing the Application

    After a successful deployment, the application will be accessible at:

          http://<target-server-ip>:8081/api/hello










