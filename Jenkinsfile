pipeline {
    agent any 
    tools {
        maven "3.8.4"
    
    }
    stages {
        stage('Compile and Clean') { 
            steps {
                // Run Maven on a Unix agent.
              
                sh "mvn clean compile"
            }
        }
        stage('deploy') { 
            
            steps {
                sh "mvn package"
            }
        }
        stage('Build Docker image'){
          
            steps {
                echo "Hello Java Express"
                sh 'ls'
                sh 'docker build -t  champ3783/jenkinsdeploy:${BUILD_NUMBER} .'
            }
        }
        stage('Docker Login'){
            
            steps {
                 withCredentials([string(credentialsId: 'DockersId', variable: 'Dockerpswd')]) {
                    sh "docker login -u champ3783 -p ${Dockerpswd}"
                }
            }                
        }
        stage('Docker Push'){
            steps {
                sh 'docker push champ3783/jenkinsdeploy:${BUILD_NUMBER}'
            }
        }
        stage('Docker deploy'){
            steps {
               
                sh 'docker run -itd -p  8081:8080 champ3783/jenkinsdeploy:${BUILD_NUMBER}'
            }
        }
        stage('Archving') { 
            steps {
                 archiveArtifacts '**/target/*.jar'
            }
        }
    }
}
