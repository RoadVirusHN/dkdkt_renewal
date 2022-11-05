pipeline {
    agent {label "dkdkt"}
    environment {
        SOURCECODE_JENKINS_CREDENTIAL_ID = 'github<->jenkins'
        SOURCE_CODE_URL = 'https://github.com/RoadVirusHN/dkdkt_renewal.git'
        RELEASE_BRANCH = 'main'
    }
    stages {
        stage('clone') {
            steps {
                git url: "$SOURCE_CODE_URL",
                    branch: "$RELEASE_BRANCH",
                    credentialsId: "$SOURCECODE_JENKINS_CREDENTIAL_ID"
                sh "ls -al"
            }
        }
        stage("pull stage") {
            steps{
                dir("/home/ec2-user/dkdkt_renewal/") {
                    echo "--pull stage start--"
                    sh "pwd"
                    sh "git pull origin main"
                }
            }
        }
        stage("delete old stage") {
            steps{     
                dir("/home/ec2-user/dkdkt_renewal/") {   
                    echo "--delete old stage start--"
                    // script {
                    //     def containerExists = sh(script: "docker ps --format '{{.Names}}' | grep dkdkt", returnStdout: true) == 0
                    //     if(containerExists){
                    //         // delete container
                    //         sh "docker stop dkdkt"
                    //         sh "docker rm dkdkt"
                    //     }
                    // }
                    sh 'docker stop $(docker ps -aq)'
                    sh 'docker rm $(docker ps -aq)'
                    sh "docker system prune --force --all"
                }
                
            }
        }
        stage("deploy stage") {
            steps {                                        
                dir("/home/ec2-user/dkdkt_renewal/") {
                    echo "--deploy stage start--"
                    sh "docker build . -t dkdkt/latest"
                    sh "docker run -p 80:80 -d --name dkdkt dkdkt/latest"
                    echo "--deploy done--"
                }
            }
        }
    }    
}