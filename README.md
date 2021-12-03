![CircleCI](https://circleci.com/gh/Tr3mo89/udacity-devops-capstone.svg?style=svg&circle-token=b1c039fb5762076e7d50429ddd7d2cea060542a6)
# Udacity - Cloud DevOps Engineer - Capstone

## Description
The capstone project is the final project to successfully graduate the Cloud DevOps Engineer Nanodegree on Udacity. 

A basic python app is deployed to a kubernetes cluster running on AWS EKS. Container Image is stored a Docker Hub Repository.

## Architecture of the CI/CD Pipeline
![CI/CD Pipeline Architecture](https://github.com/Tr3mo89/udacity-devops-capstone/blob/master/pipeline.png)

## Used Tools and Services
* CircleCi - CI/CD Pipeline
* AWS - Cloud Provider
* AWS EKS - Elastic Kubernetes Service
* AWS eksctl - CLI to manage EKS
* CloudFormation - Infrastructure as Code
* Docker / Docker Hub - Technologie and repository to manage containers
* python - Programming language

## Update Option => Rolling Update
If a new version of the app is available set the VERSION variable in the CircleCI environment variables accordingly and trigger the deployment. 
With the command `kubectl set image deployment.apps/udastone-deployment udacity-capstone=$dockerpath:$VERSION` the update will be done.
