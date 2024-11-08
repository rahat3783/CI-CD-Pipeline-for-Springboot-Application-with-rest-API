pipeline {
    agent any 
    tools {
        maven "mvn"
    
    }
    stages {
         stage('Code clonning') { 
            steps {
            
            git url: "https://github.com/rahat3783/jenkinsproject.git",branch:"main"      
        
            }
        }
        stage('Compile and Clean') { 
            steps {
                // Run Maven on a Unix agent.
              
                sh "mvn clean compile"
            }
        }
        stage('mvn deploy') { 
            
            steps {
                sh "mvn package"
            }
        }
        stage('Build Docker image'){
          
            steps {
                echo "Hello Java Express"
                sh 'ls'
                sh 'docker build -t  demospringapp:latest .'
            }
        }
       
        stage('Docker deploy'){
            steps {
               
                sh 'docker compose up -d  '
            }
        }
        stage('Archving') { 
            steps {
                 archiveArtifacts '**/target/*.jar'
            }
        }
    }
}
