pipeline{
        agent any  
        tools {
        maven 'maven1'
        jdk 'java8'
         }    
        stages{
              stage('scm checkout') {
                  steps{
                      git 'https://github.com/Sivagit120/webapp2.git'
                       }
                 }

              stage('SonarQube code Analysis'){
                   steps{
                    
                        sh "mvn sonar:sonar -Dsonar.projectKey=webapp2 -Dsonar.host.url=http://15.207.254.95 -Dsonar.login=5ddfb5f7f6f7ac85923cb7c45f7026d562095b6d"
                           
                        }
                    }  
              stage('Maven build'){
                   steps{
                                          
                           sh 'mvn clean package'
                           
                        }
                    }
            stage('Docker build'){
                   steps{
                            
                            sh 'sudo docker rmi -f mywebapp'
                            sh 'sudo rm -rf webapp.war'
                            sh 'sudo cp /var/lib/jenkins/workspace/webapp_jenkinsfile/webapp/target/webapp.war  /var/lib/jenkins/workspace/webapp_jenkinsfile'
                            sh 'pwd'
                           sh 'sudo docker build -t mywebapp:latest .'
                           
                        }
                    }        

              }
        }
    
