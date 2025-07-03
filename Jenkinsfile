pipeline {
   agent none
   tools{
    maven "mymaven"
   }
    stages {
        stage('Compile') { //prod
        agent any
            steps {
                echo "Compile the code"
                sh "mvn compile"
            }
        }
         stage('UnitTest') { //test
            agent any
            steps {
                echo "Test the code"
                sh "mvn test"
            }
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
         stage('Package') { //dev
            agent {label 'linux-slave'}
            steps {
                echo "Package the code"
                sh "mvn package"
            }
        }
    }
}
