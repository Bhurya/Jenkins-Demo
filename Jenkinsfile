pipeline {
    agent any
    tools {
        maven 'maven'
    }
    environment {
        dockerImageTag = 'bhurya/jenkins-application'
    }

    stages {
        stage('Build Maven') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/Bhurya/Jenkins-Demo']]
                ])
                bat 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat "docker build -t ${dockerImageTag} ."
                }
            }
        }

        stage('Push Docker Image to Hub') {
            steps {
                script {
                    def dockerHubUsername = 'pranjaln@perceptcs.com'

                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                        def dockerHubPwd = dockerhubpwd

                        // Login to Docker Hub
                        bat script: "echo ${dockerhubpwd} | docker login -u ${dockerHubUsername} --password-stdin", returnStatus: true

                        // Push Docker Image
                        bat "docker push ${dockerImageTag}"
                    }
                }
            }
        }
    }
}
